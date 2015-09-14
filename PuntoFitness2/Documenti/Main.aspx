<%@ Page Title="Documenti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.Documenti.Main" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center"><%: Title %></h2>
        <hr />
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="Id"
            ItemType="PuntoFitness2.Models.documenti"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                Nessun docunmento disponibile
            </EmptyDataTemplate>
            <ItemSeparatorTemplate><br /></ItemSeparatorTemplate>
            <ItemTemplate>
                <div class="row">
                    <div class="col-md-12">
					    <asp:HyperLink class="btn btn-fitness" runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Documenti/Detail", Item.Id) %>' Text=<%# Eval("Nome") %> />
                    <hr /></div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
