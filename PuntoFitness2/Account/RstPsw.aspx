<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RstPsw.aspx.cs" Inherits="PuntoFitness2.Account.RstPsw" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-6">
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="Id"
                ItemType="PuntoFitness2.Models.ApplicationUser"
                SelectMethod="GetDataU">
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                            <asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
                            <asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
                            <asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/attivitas/Edit", Item.Id) %>' Text="Edit" />

                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        </div>
</asp:Content>
