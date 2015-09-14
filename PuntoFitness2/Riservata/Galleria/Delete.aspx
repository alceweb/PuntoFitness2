<%@ Page Title="Documenti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="PuntoFitness2.Riservata.Galleria.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
    <link href="/Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
                 <h2 class="text-center">Cancella file galleria fotografica</h2><hr />
       <div class="row">
            <div class="col col-md-6">
                    <asp:Label ID="lblDeleteOk" ForeColor="Red" runat="server" Text="Seleziona un file dall'elenco per eliminarlo"></asp:Label><br />
                    <asp:ListBox Width="400px" ID="lb2" AutoPostBack="true" OnSelectedIndexChanged="lb2_SelectedIndexChanged" runat="server" Rows="10"></asp:ListBox><br />
                    <asp:Button ID="btnDelPdf" CssClass="btn btn-danger" runat="server" OnClick="btnDelPdf_Click" OnClientClick='return confirm("Stai cancellando il file selezionata. Continuare?")' Text="Cancella immagine" />
                    <asp:Button ID="btnAnnulla" CssClass="btn btn-success" OnClick="btnAnnulla_Click" runat="server" Text="Annulla Selezione" />
                <asp:Button ID="btnTorna" CssClass="btn btn-primary" PostBackUrl="~/Riservata/Galleria/Default.aspx" runat="server" Text="Torna" />
                <hr />
            </div>
            <div class="col col-md-6">
                <asp:Image CssClass="img-responsive" ID="imgDel" runat="server" />
            </div>

        </div>
    </div>
</asp:Content>
