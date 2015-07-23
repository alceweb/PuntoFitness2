<%@ Page Title="attivitaList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.attivitas.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Gestione attività</h2>
    <asp:Button ID="Button2" runat="server" Text="Torna alla gestione" CssClass="btn btn-primary" PostBackUrl="~/Riservata/Gestione.aspx" /> <br /><br />
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crea attività" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="IdAttivita" 
			ItemType="PuntoFitness2.Models.attivita"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for attivitas
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="IdAttivita" CommandName="Sort" CommandArgument="IdAttivita" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Nome" CommandName="Sort" CommandArgument="Nome" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Descrizione" CommandName="Sort" CommandArgument="Descrizione" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Orari" CommandName="Sort" CommandArgument="Orari" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="IdAttivita" ID="IdAttivita" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Descrizione" ID="Descrizione" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Orari" ID="Orari" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Attivo" ID="Attivo" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/attivitas/Details", Item.IdAttivita) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/attivitas/Edit", Item.IdAttivita) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/attivitas/Delete", Item.IdAttivita) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

