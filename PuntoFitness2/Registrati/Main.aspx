<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.Registrati.Main" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>'/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2>Benvenuto nell'area riservata ai clienti PUNTO FITNESS</h2>
        <hr />
        <div>
            <h2>Le tue schede</h2>
        </div>
        <div class="row">
            <div class="col col-md-4 text-center">
                <asp:HyperLink ID="hl" runat="server" NavigateUrl="~/Registrati/Documenti/palestra@puntofitnesscaravaggio.it_scheda.pdf" Text="Download scheda giornaliera"></asp:HyperLink><br />
                <br />
                <iframe id="if1" runat="server" width="300" height="420" style="border: 0" />
            </div>
            <div class="col col-md-4 text-center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registrati/Documenti/palestra@puntofitnesscaravaggio.it_storico.pdf" Text="Download scheda storico"></asp:HyperLink><br />
                <br />
                <iframe id="if2" runat="server" width="300" height="420" style="border: 0" />
            </div>
        </div>
    </div>
</asp:Content>
