<%@ Page Title="Calendario corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalendarioCorsi.aspx.cs" Inherits="PuntoFitness2.CalendarioCorsi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
            <h2 class="text-center" ><%: Title %></h2>
                <a href="/Corsi"><h3><span class="glyphicon glyphicon-left"></span> Corsi</h3></a><hr />
        <div class="row text-center">
            <div class="col col-md-3">
            </div>
            <div class="col col-md-6">
                <asp:HyperLink CssClass="btn btn-primary" ID="hl1" runat="server" NavigateUrl="~/CalendarioCorsi.pdf" Text="Download" Target="_blank"></asp:HyperLink>
                <br /><br />
                <iframe id="if1" runat="server" width="430" height="590" src="/CalendarioCorsi.pdf" style="border: thin solid #FFFFFF" />

            </div>
            <div class="col col-md-3">
            </div>
        </div>
    </div>
</asp:Content>
