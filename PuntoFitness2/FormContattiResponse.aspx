﻿<%@ Page Title="servizi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormContattiResponse.aspx.cs" Inherits="PuntoFitness2.FormContattiResponse" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "Images/" + Title + ".jpg" %>'/>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <div class="body-page">

<h2>La tua richiesta di informazioni è stata inviata correttamente.</h2>
    <h3>Verrai contattato alla mail indicata o tramite telefono per darti tulle le informazioni che hai chiesto.</h3>
    <p><span class="text-danger">Adesso la mail non viene inviata, ma quano saremo on-line, verà inviata una mail a un indirizzo di posta che creeremo tipo <strong>web@puntofitness.eu</strong>
        che leggerai sul pc o sul cellulare.</span>
    </p>
                </div>
</asp:Content>
