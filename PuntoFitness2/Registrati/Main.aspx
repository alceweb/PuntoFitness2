<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.Registrati.Main" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-10 text-right">
            <h2>Benvenuto nell'area riservata ai clienti PUNTO FITNESS</h2>
            </div>
            <div class="col col-md-2 text-right">
                <a href="/Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
        <hr />
        <div>
            <p class="text-center">Gli utenti accreditati avranno accesso a promozioni riservate, potranno scaricare la propria scheda di allenamento e documenti messi a disposizione</p>
            <br />
        </div>
        <div class="row">
            <div class="col col-md-6 text-center">
                <h2>Scheda allenamento</h2>
                <asp:HyperLink ID="hl1" CssClass="btn btn-primary" runat="server" Target="_blank"><h2 class="glyphicon glyphicon-user"> Accedi</h2></asp:HyperLink><br />
<%--                <br />
                <iframe id="if1" runat="server" width="330" height="450"  style="border: thin solid #FFFFFF"  />--%>
            </div>
            <div class="col col-md-6 text-center">
                <h2>Scheda storico</h2>
                <asp:HyperLink ID="hl2" CssClass="btn btn-primary" runat="server" Target="_blank"><h2 class="glyphicon glyphicon-user"> Accedi</h2></asp:HyperLink><br />
<%--                <br />
                <iframe id="if2" runat="server" width="330" height="450" style="border: thin solid #FFFFFF" />--%>
            </div>
        </div>
        <div class="row text-center">
            <div class="col col-md-6">
                <h2>Area documenti</h2>
                <a href="../Documenti/Main.aspx" class="btn btn-success"><h2 class="glyphicon glyphicon-user"> Accedi</h2></a>
            </div>
            <div class="col col-md-6">
                <h2>Promo riservate</h2>
                <a href="../Registrati/PromoReg" class="btn btn-success"><h2 class="glyphicon glyphicon-user"> Accedi</h2></a>
            </div>
        </div>
    <hr />
    </div>
</asp:Content>
