<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.Registrati.Main" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>'/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">

        <h2>Benvenuto nell'area riservata ai clienti PUNTO FITNESS</h2>
        <hr />
            <div class="row">
                <div class="col-md-2">
                    <asp:Button CssClass="btn btn-primary" ID="Button1" OnClick="Button1_Click" runat="server" Text="Storico" />
                    <asp:Button CssClass="btn btn-primary" ID="Button2" Visible="false" OnClick="Button2_Click" runat="server" Text="Scheda attiva" />
                </div>
                <div class="col-md-4 text-center">
                    <h3><asp:Label ID="Label1" runat="server" Text="La tua scheda"></asp:Label></h3>
                        <asp:HyperLink class="btn btn-success"  ID="hl" runat="server" Text="Download"></asp:HyperLink><br /><br />
                    <iframe id="if1" runat="server" src="Documenti/Scheda.pdf" width="400" height="550" style="border: 0" />
                </div>
            </div>
    </div>
</asp:Content>
