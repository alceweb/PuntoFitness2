<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormIscrizioneCorsoResponse.aspx.cs" Inherits="PuntoFitness2.FormIscrizioneCorsoResponse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="body-page response">
    <div class="row">
            <div class="col col-md-12 text-right">
                <a href="Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
    <div class="row">
        <div class="col col-md-10 text-center">
            <h3>La tua richiesta è stata inviata correttamente.</h3>
            <h4>Verrai contattato alla mail indicata o tramite telefono per confermare la tua iscrizione al corso.</h4>

        </div>
        <div class="col col-md-3">
        </div>
        </div>
</div>
</asp:Content>
