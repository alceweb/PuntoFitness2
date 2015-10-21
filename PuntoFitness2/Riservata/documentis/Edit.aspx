<%@ Page Title="documentiEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="PuntoFitness2.Riservata.documentis.Edit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="body-page">
		<p>&nbsp;</p>
        <asp:FormView runat="server" ID="fv1"
            ItemType="PuntoFitness2.Models.documenti" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the documenti with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit documenti</legend>
                    <div class="row">
                        <div class="col col-md-8">
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Nome" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Descrizione" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Riservata" runat="server" /><hr />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>

                        </div>
                         <div class="col col-md-4">
                             <asp:FileUpload ID="fu1" runat="server" />
                             <iframe id="iframe" runat="server" src='<%#"~/Documenti/" + Eval("Id") + ".pdf" %>' width="300" height="420"  style="border: thin solid #FFFFFF"  />
                       </div>
                   </div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

