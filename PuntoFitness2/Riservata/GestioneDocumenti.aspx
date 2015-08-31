<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestioneDocumenti.aspx.cs" Inherits="PuntoFitness2.Riservata.GestioneDocumenti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <div  class="body-page">
                <asp:DropDownList ID="DropDownList1" AutoPostBack="true" SelectMethod="GetDataU" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" DataTextField="Email" DataValueField="Email"></asp:DropDownList>
                <div >
                <asp:Label ID="Label3" runat="server" ></asp:Label>
               </div>
                </div>
</asp:Content>
