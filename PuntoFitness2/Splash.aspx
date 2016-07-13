<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Splash.aspx.cs" Inherits="PuntoFitness2.Splash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="">
        <asp:ListView ID="ListView1" SelectMethod="GetData" runat="server">
            <ItemTemplate>
                <h2 class="text-center"><%# Eval("Nome")%></h2>
                <p><%# Eval("Descrizione") %></p>
            </ItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
        </asp:ListView>
    </div>
</asp:Content>
