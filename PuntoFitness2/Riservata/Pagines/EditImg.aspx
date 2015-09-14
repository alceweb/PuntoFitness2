<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditImg.aspx.cs" Inherits="PuntoFitness2.Riservata.Pagines.EditImg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
     <img class="imgBody" src='<%: "../../../Images/Sfondi/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="body-page">
		<h2 class="text-center">Modifica immagina sfondo</h2>
        <asp:FormView runat="server" ID="fv1"
            ItemType="PuntoFitness2.Models.pagine" DefaultMode="Edit" DataKeyNames="Titolo"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the pagine with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Immagine consigliata 1.280 x 900</span></legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />    
                    <div class="row">
                        <div class="col-md-2">
						    <asp:DynamicControl Mode="ReadOnly" DataField="Titolo" runat="server" />
                        </div>
                        <div class="col-md-4">
                            <asp:FileUpload ID="fu1" runat="server" /><br />
                            <asp:Button CssClass="btn btn-success" ID="btnDownload" OnClick="btnDownload_Click" OnClientClick='return confirm("Lo sfondo verrà sostituito! Continuare?")' runat="server" Text="Download" /><br />
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                        </div>
                        <div class="col-md-6">
                    <asp:Image ID="Image1" CssClass="img-slide-small" ImageUrl='<%# "~/Images/Sfondi/" + Eval("Titolo") + ".jpg" %>' runat="server" />
                        </div>
                    </div>             
                    <div class="form-group"><hr />
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Torna" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
