<%@ Page Title="Documenti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModalBoxGest.aspx.cs" Inherits="PuntoFitness2.PhotoGallery.ModalBoxGest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
    <link href="/Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center">Gestione immagini per ModalBox! </h2>
        <h3>Dimensione consigliata 300x150</h3><hr />
<asp:FileUpload ID="FileUpload1" runat="server" /><br />
<asp:Button ID="btnUpload" CssClass="btn btn-success" runat="server" Text="Upload" OnClick="UploadFile" /><asp:Label ID="Label1" CssClass="red" runat="server" ></asp:Label>
<hr />
        <div class="row">
        <div id="main">
            <div class="wrap">
        <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <div class="col col-md-4 text-center">
                            <span class="galla1">
                                    <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton> - 
                                    <asp:LinkButton ID = "lnkDelete" Text = "Cancella" CommandArgument = '<%# Eval("Value") %>' OnClientClick='return confirm("Stai cancellando un immagine! Continuare?")' runat = "server" OnClick = "DeleteFile" /><br />
                                    <img src='<%# "/PhotoGallery/modalbox/" + Eval("Text") %>' /><br />
                            <hr /></div>
                            </span>
                        </ItemTemplate>
        </asp:ListView>
                </div>

        </div>

        </div>
        </div>
</asp:Content>
