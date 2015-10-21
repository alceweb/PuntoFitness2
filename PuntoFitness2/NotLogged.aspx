<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotLogged.aspx.cs" Inherits="PuntoFitness2.NotLogged" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <div  class="body-page">
        <div class="row">
            <div class="col col-md-12 text-center">
            <h2 class="btn-danger">Attenzione</h2>

            </div>
            <div class="col col-md-12 text-right">
                <a href="Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
            <div class="col col-md-12 text-center">
         <h4>Per fare questa operazione devi essere registrato al sito della palestra</h4>
                <h4>Chiedi a Giorgio in reception di registrare la tua mail.</h4><br /><br />
            </div>
        </div>
                <div class="row">
            <div class="col col-md-3">
                <img src="Images/Logo1Piccolo.png" />
            </div>
            <div class="col col-md-6">
                Ti verrà assegnata una password con la quale potrai accedere all'area riservata<br />
                    Registrandoti potrai utilizzare tutti i vantaggi riservati agli iscritti
               <br /><br />
                    <ul>
                        <li>Accesso alle promozioni stagionali</li>
                        <li>Iscrizione corsi on-line</li>
                        <li>Visualizzione on-line della tua scheda di allenamento</li>
                        <li>Download documenti</li>
                        <li>Accesso agli sconti periodici</li>
                        <li>...e tanto altro</li> 
                    </ul>

            </div>
            <div class="col col-md-3">

            </div>

                </div>
</div>
</asp:Content>
