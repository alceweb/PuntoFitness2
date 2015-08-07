<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gestione.aspx.cs" Inherits="PuntoFitness2.Riservata.Gestione" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>'/>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="body-page">
        <h2>Benvenuto nell'area di gestione! </h2><hr />
        <ul>
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Riservata/promozionis/Default.aspx">Promozioni</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Riservata/attivitas/Default.aspx">Attività (corsi)</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Riservata/servizis/Default.aspx">Servizi</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Riservata/slides/Default.aspx">Immagini slide</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Riservata/GestioneDocumenti.aspx">Documenti</asp:HyperLink></li>
        </ul>
</div>

</asp:Content>
