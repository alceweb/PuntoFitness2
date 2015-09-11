<%@ Page Title="slideList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.slides.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Sfindi/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
         <div class="body-page">

       <h2>slides List</h2>

<%-- blocco la creeazione di nuovo slide
        <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>--%>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="PuntoFitness2.Models.slide"
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
								<asp:LinkButton Text="Titolo" CommandName="Sort" CommandArgument="Titolo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Didascalia" CommandName="Sort" CommandArgument="Didascalia" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Attivo" CommandName="Sort" CommandArgument="Attivo" runat="Server" />
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
                    <asp:Image ID="Image1" CssClass="img-slide-thumbnail" ImageUrl='<%# "~/Images/slideshow/" + Eval("Id") + ".jpg" %>' runat="server" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Attivo" ID="Attivo" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/slides/Details", Item.Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/slides/Edit", Item.Id) %>' Text="Edit" /> <hr /> 
					    <asp:HyperLink CssClass="btn btn-success" runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/slides/EditImg", Item.Id) %>' Text="Edit Images" />

<%-- blocco l'eliminazione delle slide
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/slides/Delete", Item.Id) %>' Text="Delete" />--%>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</div>

</asp:Content>

