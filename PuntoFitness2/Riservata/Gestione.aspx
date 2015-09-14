<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gestione.aspx.cs" Inherits="PuntoFitness2.Riservata.Gestione" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>'/>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="body-page">
        <h2 class="text-center">Benvenuto nell'area di gestione! </h2><hr />
            <div class="row">
                <div class="col col-md-4">
                    <h3>Contenuti</h3><hr />
                </div>
                <div class="col col-md-4">
                    <h3>Immagini</h3><hr />
                </div>
                <div class="col col-md-4">
                    <h3>Utenti</h3><hr />
                </div>
            </div>
            <div class="row">
                <div class="col col-md-4">
                    <ul>
                        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Riservata/promozionis/Default.aspx">Attività e Promozioni</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Riservata/attivitas/Default.aspx">Corsi</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Riservata/servizis/Default.aspx">Servizi</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Riservata/Calendario.aspx">Calendario</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/riservata/Documentis/default">Documenti</asp:HyperLink></li>
                   </ul>
                    
                </div>
                <div class="col col-md-4">
                    <ul>
                        <li><asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Riservata/slides/Default.aspx">Immagini slide</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Riservata/pagines/Default.aspx">Immagini pagine</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/PhotoGallery/ModalBoxGest">Immagini ModalBox</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/PhotoGallery/test">Galleria fotografica</asp:HyperLink></li>
                   </ul>
                    
                </div>
                <div class="col col-md-4">
                    <ul>
                        <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Riservata/GestioneDocumenti.aspx">Schede</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Account/Register.aspx">Registra utente</asp:HyperLink></li>
                        <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Riservata/Anagraficas/Anagrafica">Anagrafica utente / reset password</asp:HyperLink></li>
                    </ul>
                </div>
            </div>
        <ul>
        </ul>
</div>

</asp:Content>
