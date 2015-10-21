<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalendarioCorsi.aspx.cs" Inherits="PuntoFitness2.CalendarioCorsi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-6 text-right">
            <h2 >Calendario</h2>
            </div>
            <div class="col col-md-6 text-right">
                <a href="Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
        <hr />
                <a class="btn btn-primary" href="/Corsi"><span class="glyphicon glyphicon-left"></span>Lista corsi</a>
        <div class="row text-center">
            <div >
                <asp:HyperLink CssClass="btn btn-primary" ID="hl1" runat="server" NavigateUrl="~/CalendarioCorsi.pdf" Text="Download" Target="_blank"></asp:HyperLink>
                <br /><br />
                <iframe id="if1" frameborder="0" allowfullscreen="" runat="server" scrolling="no" width="650" height="480" src="/CalendarioCorsi.pdf" />

            </div>
            <div class="col col-md-3">
            </div>
        </div>
    </div>
</asp:Content>
