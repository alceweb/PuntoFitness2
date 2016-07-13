<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.splashes.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
            <asp:HyperLink CssClass="btn btn-primary col-sm-1" runat="server" NavigateUrl="Insert">Nuovo <span class="badge"><asp:Label ID="lblCount" runat="server"></asp:Label></span></asp:HyperLink>
        <h2 class="text-center">Splash</h2>   <hr />
        <div>
      <span class="label label-default">Fai click sul nome della colonna per ordinare i record in base al contenuto</span>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="Id"
                ItemType="PuntoFitness2.Models.splash"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Splashes
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="Nome" CommandName="Sort" CommandArgument="Nome" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Link" CommandName="Sort" CommandArgument="Link" runat="Server" />
                                </th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr runat="server" id="itemPlaceholder" />
                        </tbody>
                    </table>
                    <asp:DataPager PageSize="15" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                            <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                            <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        </Fields>
                    </asp:DataPager>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Link" ID="Link" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/splashes/Details", Item.Id) %>' Text="Details" /> |
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/splashes/Edit", Item.Id) %>' Text="Edit" /> |
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/splashes/Delete", Item.Id) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
