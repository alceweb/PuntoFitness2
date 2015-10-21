<%@ Page Title="attivitaEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="PuntoFitness2.Riservata.attivitas.Edit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
        <div class="body-page">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            id="fw1"
            ItemType="PuntoFitness2.Models.attivita" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the attivita with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Modifica corso</legend>
                    <div class="row">
                        <div class="col col-md-8">
					        <asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Nome" runat="server" />
                            Orari:
                            <CKEditor:CKEditorControl ID="CKEditor2" Text='<%# Bind("Orari") %>' BasePath="/ckeditor/" runat="server" AutoPostBack="False" CustomConfig="config1.js"></CKEditor:CKEditorControl><br />
                            Descrizione:<CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
						    <asp:DynamicControl Mode="Edit" DataField="Attivo" runat="server" />
                        </div>
                        <div class="col col-md-4 text-center">
                                <h4 >Modifica immagine</h4><hr />
                            <h5 class="text-left"><strong>Caratteristica immagine:</strong></h5>
                            <ul class="text-left">
                                <li>Dimensione in pixel 100x100</li>
                                <li>formato jpg</li>
                            </ul>
                            <hr />
                            <asp:FileUpload ID="fu1" runat="server" /><br /><br />
                            <asp:Image ID="img1" CssClass="img-circle img-lista" runat="server" ImageUrl='<%#"/Images/c" + Eval("Id") + ".jpg"%>' />

                        </div>
                    </div>
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

