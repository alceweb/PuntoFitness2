<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Anagrafica.aspx.cs" Inherits="PuntoFitness2.Riservata.Anagrafica" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center">Gestione anagrafica</h2><hr />
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="Email"
                ItemType="PuntoFitness2.Models.ApplicationUser"
                SelectMethod="GetDataU">
                <EmptyDataTemplate>
                    There are no entries found for attivitas
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="DataIscrizione" CommandName="Sort" CommandArgument="DataIscrizione" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Nome" CommandName="Sort" CommandArgument="Nome" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Cognome" CommandName="Sort" CommandArgument="Cognome" runat="Server" />
                                </th>
                                <th>&nbsp;</th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr runat="server" id="itemPlaceholder" />
                        </tbody>
                    </table>
                    <asp:DataPager PageSize="10" runat="server">
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
                            <asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Cognome" ID="Cognome" Mode="ReadOnly" />
                        </td>
                        <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# "~/Riservata/Anagraficas/Edit?Email=" + Eval("Email") %>' Text="Edit" />
                        </td>
                        <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# "~/Riservata/Anagraficas/RstPsw?Email=" + Eval("Email") %>' Text="Reset password" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>

        </div>

</asp:Content>
