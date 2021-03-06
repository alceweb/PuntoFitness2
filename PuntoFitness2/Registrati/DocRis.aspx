﻿<%@ Page Title="Riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DocRis.aspx.cs" Inherits="PuntoFitness2.Registrati.DocRis" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-12 text-right">
                <a href="/Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
            <div class="col col-md-12 text-center">
            <h2><%: Title %></h2>
            </div>
        </div>
        <hr />
<%--        Documenti per gli utenti registrati--%>
        <h3>Utenti riservati</h3>
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="Id"
            ItemType="PuntoFitness2.Models.documenti"
            SelectMethod="GetDataR">
            <EmptyDataTemplate>
                Nessun documento disponibile
            </EmptyDataTemplate>
            <ItemSeparatorTemplate></ItemSeparatorTemplate>
            <ItemTemplate>
                <ul>
                    <li>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Documenti/", Item.Id + ".pdf") %>' Text='<%# Eval("Nome")%>' Target="_blank" />
					    <span> - <%# Eval("Descrizione") %></span>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:ListView><hr />
<%--        Dpocumenti pubblici--%>
        <h3>Pubblici</h3>
        <asp:ListView ID="ListView2" runat="server"
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
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Documenti/", Item.Id + ".pdf") %>' Text='<%# Eval("Nome")%>' Target="_blank" />
					    <span> - <%# Eval("Descrizione") %></span>

                    </li>
                </ul>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
