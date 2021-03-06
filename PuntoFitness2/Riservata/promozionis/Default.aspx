﻿<%@ Page Title="promozioniList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.promozionis.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
 <div class="body-page">
        <asp:HyperLink Class="btn btn-primary col-sm-1" runat="server" NavigateUrl="Insert" >Nuovo <span class="badge"><asp:Label ID="lblCount" runat="server"></asp:Label></span></asp:HyperLink>
       <h2 class="text-center">Attività e promozioni</h2>
        <hr />
      <span class="label label-default">Fai click sul nome della colonna per ordinare i record in base al contenuto</span>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
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
								<asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Inizio" CommandName="Sort" CommandArgument="DataInizio" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Fine" CommandName="Sort" CommandArgument="DataFine" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Titolo" CommandName="Sort" CommandArgument="Titolo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Riservata" CommandName="Sort" CommandArgument="Riservata" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="15"  runat="server">
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
								<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DataInizio" DataFormatString="{0:dddd dd-MMM-yy}" ID="DataInizio" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DataFine" DataFormatString="{0:dddd dd-MMM-yy}" ID="DataFine" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Titolo" ID="Titolo" Mode="ReadOnly" />
							</td>
                            <td>
									<asp:DynamicControl runat="server" DataField="Riservata" ID="Attivo" Mode="ReadOnly" />
                            </td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/promozionis/Details", Item.Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/promozionis/Edit", Item.Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/promozionis/Delete", Item.Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
 </div>
</asp:Content>

