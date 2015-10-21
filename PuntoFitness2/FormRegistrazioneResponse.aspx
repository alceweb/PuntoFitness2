<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormRegistrazioneResponse.aspx.cs" Inherits="PuntoFitness2.FormRegistrazioneResponse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="body-page response">
    <div class="row">
        <div class="col col-md-3">
            <img src="Images/Logo1Piccolo.png" />
        </div>
        <div class="col col-md-6 text-center">
<h3>La tua richiesta di registrazione a <strong>Punto Fitness</strong> è stata inviata correttamente.</h3>
<h4>Verrai contattato alla mail indicata o tramite telefono.</h4>

        </div>
        <div class="col col-md-3">

        </div>
    </div>
</div>
</asp:Content>
