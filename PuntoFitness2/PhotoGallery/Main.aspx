<%@ Page Title="Documenti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PuntoFitness2.PhotoGallery.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
     <script src="/Scripts/jquery-2.1.1.min.js"></script>
   <script src="/Scripts/jquery.colorbox.js"></script>
    <link href="/Content/colorbox.css" rel="stylesheet" />
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <h2 class="text-center">Galleria fotografica</h2>
        <hr />
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
                            <span class="galla">
                                <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                                    <img style="border: thin solid #9C9C9C; margin: 8px;" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                                </a>

                            </span>

                        </ItemTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>

                </section>
            </div>
        </div>
    </div>
</asp:Content>
