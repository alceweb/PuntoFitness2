<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContentDoc.aspx.cs" Inherits="PuntoFitness2.Registrati.ContentDoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <div  class="body-page">
    <asp:ListView ID="ListView1" runat="server">
        <ItemSeparatorTemplate><br /></ItemSeparatorTemplate>
        <ItemTemplate>
                        <a href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>
                            <%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'
                        </a>
        </ItemTemplate>
    </asp:ListView>
                </div>
</asp:Content>
