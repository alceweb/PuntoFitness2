<%@ Page Title="Documenti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="PuntoFitness2.Riservata.Galleria.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center">Inserisci immagine</h2>
        <div class="row">
            <div class="col col-md-6">
<asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="UploadFile" />
                <asp:FileUpload ID="fu1" AllowMultiple="true" runat="server" /><br />
            </div>
        </div><hr />
        <asp:ListView ID="ListView1" runat="server">
            <ItemSeparatorTemplate></ItemSeparatorTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" Height="150px" ImageUrl='<%#"/PhotoGallery/images/" + Eval("Value") %>' runat="server" />
                <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick = "DeleteFile" />
                <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>

            </ItemTemplate>
        </asp:ListView>



        <div class="row">
            <div class="col col-md-4">
                <asp:Button ID="btn1" OnClick="btn1_Click" CssClass="btn btn-success" runat="server" Text="Carica" />
            </div>
            <div class="col col-md-4">
                <asp:Button CssClass="btn btn-primary" ID="btn2" PostBackUrl="~/Riservata/Galleria/Default.aspx" runat="server" Text="Torna" />
            </div>
        </div>
        </div>
</asp:Content>
