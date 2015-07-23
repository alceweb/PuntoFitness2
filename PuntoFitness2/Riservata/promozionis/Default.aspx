<%@ Page Title="promozioniList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.promozionis.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Gestione promozioni</h2>
    <asp:Button ID="Button1" runat="server" Text="Torna alla gestione" CssClass="btn btn-primary" PostBackUrl="~/Riservata/Gestione.aspx" /> <br /><br />
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crea promozione" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="IdPromozione" 
			ItemType="PuntoFitness2.Models.promozioni"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for promozionis
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="IdPromozione" CommandName="Sort" CommandArgument="IdPromozione" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="DataInizio" CommandName="Sort" CommandArgument="DataInizio" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="DataFine" CommandName="Sort" CommandArgument="DataFine" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Titolo" CommandName="Sort" CommandArgument="Titolo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Descrizione" CommandName="Sort" CommandArgument="Descrizione" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="IdPromozione" ID="IdPromozione" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DataInizio" ID="DataInizio" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DataFine" ID="DataFine" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Titolo" ID="Titolo" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Descrizione" ID="Descrizione" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/promozionis/Details", Item.IdPromozione) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/promozionis/Edit", Item.IdPromozione) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/promozionis/Delete", Item.IdPromozione) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

