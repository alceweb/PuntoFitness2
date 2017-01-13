<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.TipoAbbonamentis.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
            <asp:HyperLink CssClass="btn btn-primary col-sm-1" runat="server" NavigateUrl="Insert">Nuovo <span class="badge"><asp:Label ID="lblCount" runat="server"></asp:Label></span></asp:HyperLink>
        <h2 class="text-center">Tipi di abbonamento</h2>   <hr />
        <div>
      <span class="label label-default">Fai click sul nome della colonna per ordinare i record in base al contenuto</span>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="Id_TipoAbbonamenti"
                ItemType="PuntoFitness2.Models.tipoAbbonamenti"
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
                                    <asp:LinkButton Text="Tipo" CommandName="Sort" CommandArgument="Tipo" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Prezzo" CommandName="Sort" CommandArgument="Prezzo" runat="Server" />
                                </th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr runat="server" id="itemPlaceholder" />
                        </tbody>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="text-center">
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Tipo" ID="Tipo" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Prezzo" ID="Prezzo" Mode="ReadOnly" />
                        </td>
                        <td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
