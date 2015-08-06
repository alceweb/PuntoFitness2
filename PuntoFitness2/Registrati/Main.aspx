<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.Registrati.Main" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>'/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">

        <h2>Benvenuto nell'area riservata ai clienti PUNTO FITNESS</h2>
        <hr />
        <a class="btn btn-primary" href="ContentDoc.aspx">I tuoi documenti</a>
        <a class="btn btn-primary" href="ContentDoc.aspx">Le tue foto in palestra</a>
        <a class="btn btn-primary" href="ContentDoc.aspx">Le tue schede</a>

    </div>
</asp:Content>
