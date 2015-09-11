<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.Pagines.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Sfondi/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
         <div class="body-page">

       <h2 class="text-center">Gestione sfondo pagine</h2><hr />

    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="PuntoFitness2.Models.pagine"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for slides
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Pagina" CommandName="Sort" CommandArgument="Titolo" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
                <div class="text-center"><hr />
				<asp:DataPager PageSize="1"  runat="server">
					<Fields>
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>

                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Titolo" ID="Titolo" Mode="ReadOnly" />
							</td>
							<td> 
                    <asp:Image ID="Image1" CssClass="img-slide-thumbnail" ImageUrl='<%# "~/Images/sfondi/" + Eval("Titolo") + ".jpg" %>' runat="server" />
							</td>
                    <td>
					    <asp:HyperLink CssClass="btn btn-success" runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/pagines/EditImg", Item.Id) %>' Text="Cambia immagine" />

                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</div>
</asp:Content>
