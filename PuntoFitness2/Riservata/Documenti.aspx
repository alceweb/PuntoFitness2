﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Documenti.aspx.cs" Inherits="PuntoFitness2.Riservata.Documenti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center">Calendario corsi</h2>
        <hr />
        <div class="row text-center">
            <div class="col col-md-4">
            </div>
            <div class="col col-md-4">
                <asp:FileUpload ID="fu1" Width="100%" runat="server" /><p></p>
                <asp:Button CssClass="btn btn-primary" ID="Button1" OnClick="Button1_Click" runat="server" Text="Download" />
                <br />
                <asp:Label ID="lbl1" runat="server"></asp:Label>
                <p></p>
            </div>
            <div class="col col-md-4">
            </div>
        </div>
    </div>
</asp:Content>
