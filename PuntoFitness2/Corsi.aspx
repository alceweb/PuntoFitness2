<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Corsi.aspx.cs" Inherits="PuntoFitness2.Corsi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div>
        <asp:ListView ID="ListView1" DataKeyNames="IdAttivita" runat="server" SelectMethod="GetData">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server"><%# Eval("Nome") %></asp:LinkButton>
            </ItemTemplate>
            <SelectedItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nome") %>'></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Descrizione") %>'></asp:Label>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
