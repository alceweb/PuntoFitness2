<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditImg.aspx.cs" Inherits="PuntoFitness2.Riservata.slides.EditImg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="body-page">
		<p>&nbsp;</p>
        <asp:FormView runat="server" ID="fv1"
            ItemType="PuntoFitness2.Models.slide" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the slide with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit slide images</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />    
                    <div class="row">
                        <div class="col-md-2">
						    <asp:DynamicControl Mode="ReadOnly" DataField="Titolo" runat="server" />
                        </div>
                        <div class="col-md-4">
                            <asp:FileUpload ID="fu1" runat="server" /><br />
                            <asp:Button CssClass="btn btn-success" ID="btnDownload" OnClick="btnDownload_Click" runat="server" Text="Download" /><br />
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                        </div>
                        <div class="col-md-6">
                    <asp:Image ID="Image1" CssClass="img-slide-small" ImageUrl='<%# "~/Images/slideshow/" + Eval("Id") + ".jpg" %>' runat="server" />
                        </div>
                    </div>             
                    <div class="form-group"><hr />
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>

</asp:Content>
