<%@ Page Title="attivitaList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.attivitas.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="body-page">
            <asp:HyperLink CssClass="btn btn-primary col-sm-1" runat="server" NavigateUrl="Insert">Nuovo <span class="badge"><asp:Label ID="lblCount" runat="server"></asp:Label></span></asp:HyperLink>
        <h2 class="text-center">Corsi</h2>   <hr />
        <div>
      <span class="label label-default">Fai click sul nome della colonna per ordinare i record in base al contenuto</span>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="Id"
                ItemType="PuntoFitness2.Models.attivita"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for attivitas
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="text-center">
                                    Immagine
                                </th>
                                <th>
                                    <asp:LinkButton Text="Nome" CommandName="Sort" CommandArgument="Nome" runat="Server" />
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
                        <td class="text-center">
                            <img class="img-circle img-lista" src='<%#"/Images/c" + Eval("iD") + ".jpg"%>' />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
                        </td>
                        <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Orari") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Attivo" ID="Attivo" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/attivitas/Details", Item.Id) %>' Text="Details" /><br />
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/attivitas/Edit", Item.Id) %>' Text="Edit" /><br />
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/attivitas/Delete", Item.Id) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

