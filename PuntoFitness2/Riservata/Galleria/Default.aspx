<%@ Page Title="Documenti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2.Riservata.Galleria.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
    <link href="/Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center">Galleria fotografica</h2>
        <hr />
        <div class="row">
            <div class="col col-md-6">
                <asp:FileUpload ID="FileUpload1" AllowMultiple="true" runat="server" >
                </asp:FileUpload>
                <asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Upload" OnClick="UploadFile" />
                <asp:Label ID="Label1" runat="server" ></asp:Label>
            </div>
        </div>
        <hr />
        <div class="row">
        <div id="main">
            <div class="wrap">
                <section id="exemple" class="clearfix">
                    <div id="try"></div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            //Examples of how to assign the Colorbox event to elements
                            $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
                        });
                    </script>
                    <asp:Repeater ID="lista" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="col col-md-2">
                            <span class="galla1 text-center">
                                    <asp:LinkButton CssClass="btn btn-primary" ID="lnkDownload" Text = "Download" CommandArgument = '<%# "/PhotoGallery/images/" + Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
                                    <img src='<%# "/PhotoGallery/images/" + Eval("Value") %>' />
                                    <asp:LinkButton CssClass="btn btn-danger" ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# "/PhotoGallery/images/" + Eval("Value") %>' runat = "server" OnClick = "DeleteFile" /><br />
                            <hr /></div>
                            </span>
                        </ItemTemplate>
                        <FooterTemplate>

                        </FooterTemplate>
                    </asp:Repeater>
                </section>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
