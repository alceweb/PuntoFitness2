<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestioneDocumenti.aspx.cs" Inherits="PuntoFitness2.Riservata.GestioneDocumenti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">

        <div class="row text-center">
            <div class="col col-md-12 text-center"><hr />
                <asp:DropDownList ID="DropDownList1" SelectMethod="GetDataU" DataTextField="Cognome" DataValueField="Email" AutoPostBack="true" runat="server" >
                </asp:DropDownList><br />
                <h2><asp:Label ID="Label1" runat="server"></asp:Label></h2>
                <hr />
            </div>
        </div>
        <div class="row text-center">
            <div class="col col-md-6">
                <h3>Attiva</h3>

            </div>
            <div class="col col-md-6">
                <h3>Storico</h3>

            </div>
        </div>
        <asp:Panel ID="pnl1" runat="server">
        <div class="row text-center">
            <div class="col col-md-6">
            </div>
            <div class="col col-md-6">
            </div>
        </div>
        <div class="row text-center">
            <div class="col col-md-6">
                <asp:FileUpload ID="fu1" Width="90%" runat="server" /><br />
                <asp:Button CssClass="btn btn-primary" ID="btnDwl1" OnClick="btnDwl1_Click" runat="server" Text="Carica" />
                <asp:Label ID="lbl1" runat="server" ></asp:Label>
            </div>
            <div class="col col-md-6">
                <asp:FileUpload ID="fu2" Width="90%" runat="server" /><br />
                <asp:Button CssClass="btn btn-primary" ID="btnDwl2" OnClick="btnDwl2_Click" runat="server" Text="Carica" />
                <asp:Label ID="lbl2" runat="server" ></asp:Label>
            </div>
        </div>
        </asp:Panel>
        <asp:Panel ID="pnl2" runat="server">

        <div class="row text-center">
            <div class="col col-md-6 text-center">
                    <asp:Button CssClass="btn btn-primary" OnClick="Button1_Click" ID="Button1" runat="server" Text="Carica nuova" /><br /><br />
                <iframe id="if1" runat="server" width="300" height="420"  style="border: thin solid #FFFFFF"  />
            </div>
            <div class="col col-md-6 text-center">
                    <asp:Button CssClass="btn btn-primary" OnClick="Button2_Click" ID="Button2" runat="server" Text="Carica nuova" /><br /><br />
                <iframe id="if2" class="embed-reattiva-item" runat="server" width="300" height="420"  style="border: thin solid #FFFFFF"  />
            </div>
        </div>
        </asp:Panel>
    </div>
</asp:Content>
