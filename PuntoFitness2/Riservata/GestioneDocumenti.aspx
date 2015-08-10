<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestioneDocumenti.aspx.cs" Inherits="PuntoFitness2.Riservata.GestioneDocumenti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <div  class="body-page">
                <div class="row">
                    <asp:ListView ID="lvu" SelectMethod="GetDataU" SelectedIndex="0" DataKeyNames="Id" runat="server">
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </asp:LinkButton>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                        <SelectedItemTemplate>
                            <asp:Label CssClass="verde" ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>'></asp:Label>

                        </SelectedItemTemplate>
                    </asp:ListView>
               </div>
                <asp:Label ID="Label3" runat="server" ></asp:Label>
                </div>
</asp:Content>
