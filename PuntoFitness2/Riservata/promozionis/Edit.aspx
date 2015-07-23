<%@ Page Title="promozioniEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="PuntoFitness2.Riservata.promozionis.Edit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="PuntoFitness2.Models.promozioni" DefaultMode="Edit" DataKeyNames="IdPromozione"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the promozioni with IdPromozione <%: Request.QueryString["IdPromozione"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit promozioni</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="DataInizio" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="DataFine" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Titolo" runat="server" />
                            <CKEditor:CKEditorControl ID="CKEditor1" BasePath="/ckeditor/" Text='<%# Bind("Descrizione") %>' runat="server"></CKEditor:CKEditorControl>
                    <div class="form-group"><hr />
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

