<%@ Page Title="Documenti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.Documenti.Main" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-6 text-right">
            <h2><%: Title %></h2>
            </div>
            <div class="col col-md-6 text-right">
                <a href="/Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
        <hr />
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="Id"
            ItemType="PuntoFitness2.Models.documenti"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                Nessun docunmento disponibile
            </EmptyDataTemplate>
            <ItemSeparatorTemplate></ItemSeparatorTemplate>
            <ItemTemplate>
                <ul>
                    <li>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Documenti/", Item.Id + ".pdf") %>' Text=<%# Eval("Descrizione") %> Target="_blank" />
                </ul>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
