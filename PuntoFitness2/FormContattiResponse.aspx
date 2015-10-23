<%@ Page Title="servizi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormContattiResponse.aspx.cs" Inherits="PuntoFitness2.FormContattiResponse" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page response">
        <div class="row">
            <div class="col col-md-10 text-center">
                <img class="img-logo" src="Images/Logo_trasp.png" />
            </div>
            <div class="col col-md-2 text-right">
                <a href="Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
        <div class="row">
            <div class="col col-md-10 text-center">
                <h3>La tua richiesta è stata inviata correttamente.</h3>
                <h4>Verrai contattato alla mail indicata o tramite telefono per rispondere alle tue richieste di informazioni.</h4>

            </div>
    </div>
        </div>
</asp:Content>
