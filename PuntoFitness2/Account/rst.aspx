<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rst.aspx.cs" Inherits="PuntoFitness2.Account.rst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center">Reset pasword</h2><hr />
        <div class="row text-center">
            <div class="col col-md-12">
                Utente da resettare
                <asp:DropDownList ID="ddlUser" AutoPostBack="true" SelectMethod="GetDataU" OnSelectedIndexChanged="ddlUser_SelectedIndexChanged" DataTextField="Email" DataValueField="Id" runat="server"></asp:DropDownList>

            </div>
        </div>
        <p>

        </p>
        <div class="row text-center">
            <div class="col col-md-12">
                Nuova password <asp:TextBox ID="txtPsw" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="return confirm('Stai resettando una password! Continuare?')" Text="Modifica" /><br />
                <asp:Label ID="lblOk" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
