<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.Registrati.Main" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
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
                <asp:HyperLink ID="hl1" runat="server" Text="Download scheda corrente" Target="_blank"></asp:HyperLink><br />
                <br />
                <iframe id="if1" runat="server" width="330" height="450"  style="border: thin solid #FFFFFF"  />
            </div>
            <div class="col col-md-4 text-center">
                <asp:HyperLink ID="hl2" runat="server" Text="Download scheda storico" Target="_blank"></asp:HyperLink><br />
                <br />
                <iframe id="if2" runat="server" width="330" height="450" style="border: thin solid #FFFFFF" />
            </div>
        </div>
    </div>
</asp:Content>
