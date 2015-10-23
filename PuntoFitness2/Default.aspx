<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2._Default" %>
<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <%---Slide show ---%>
<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators">
            <asp:ListView ID="lvSlide" SelectMethod="GetDataSl" SelectedIndex="0" runat="server">
                <ItemTemplate>
                    <li data-target="#myCarousel" data-slide-to="<%# (Convert.ToInt32(Eval("Id")) - 1)%>" class="<%# Eval("Classe") %>"></li>
                </ItemTemplate>

            </asp:ListView>
        </ol>
                    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <asp:ListView ID="lvSlide1" SelectMethod="GetDataSl" SelectedIndex="0" runat="server">
            <ItemTemplate>
                <div style="background-color:aqua" class="<%# Eval("Classe1") %>">
                    <div class="carousel-caption">
                        <h3><%# Eval("Titolo") %></h3>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Didascalia") %>'></asp:Label>
                    </div>
                    <asp:Image ID="Image1" CssClass="img-slide-thumbnail" ImageUrl='<%# "~/Images/slideshow/" + Eval("Id") + ".jpg" %>' runat="server" />
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
</div>
    <%---Fine slide show ---%>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bodyDefault">
    </div>
    <div class="jumbotron">
        <hr />
        <div class="row">
            <div class="col-md-5">
                <h2>Info e Orari</h2>
                <h3>
                    <em>Viale Papa Giovanni XXIII, 23 Caravaggio Bg</em></h3>
                <p>Tel. 0363-54040</p>
                    
                
                <div >
                    <span >LUN-VEN: 10:00 - 22:00</span><br />
                    <span >SAB: 14:30 - 17:30</span>
                </div>
                <div class="social">
                    <a target="_blank" href="https://twitter.com/PuntoFitness1">
                        <img class="img-social" src="Images/twt.png" /></a>
                    <a target="_blank" href="https://www.facebook.com/pages/Palestra-Punto-Fitness-Caravaggio/189024564443366">
                        <img class="img-social" src="Images/faceb.png" /></a>
                    <a target="_blank" href="https://www.linkedin.com/pub/punto-fitness-caravaggio/9a/743/b3b">
                        <img class="img-social" src="Images/lkd.png" /></a>
                        <a target="_blank" href="https://instagram.com/puntofitnesscaravaggio/">
                        <img class="img-social" src="Images/inst.png" /></a>
<%-- collegamenti youtube in attesa dei link
                    <a target="_blank" href="https://www.linkedin.com/pub/punto-fitness-caravaggio/9a/743/b3b">
                        <img class="img-social" src="Images/youtube.png" /></a>--%>
                </div>
            </div>
            <div class="col-md-2 text-center ">
            </div>
            <div class="col-md-4 text-center">
                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">
                        La prima prova è gratis</button>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <img src="Images/logo.png" />
                            </div>
                            <div class="modal-body">
                                <p><strong>la prima prova la offriamo noi.</strong></p>
                                <p>Contattaci per richiedere la prima prova</p>
                                <h3 >Tel. 0363-54040</h3>
                                <a href="mailto:palestra@puntofitnesscaravaggio.it")><h2 class="glyphicon-envelope"></h2></a>
<%--                                <div class="form-horizontal">
                                <asp:Label ID="lblMessage" ForeColor="red" runat="server" Text="" ></asp:Label>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" placeholder="Il tuo nome"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCognome" CssClass="form-control" runat="server" placeholder="Il tuo cognome"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCitta" CssClass="form-control" runat="server" placeholder="Città"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtIndirizzo" CssClass="form-control" runat="server" placeholder="Indirizzo"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server" placeholder="Telefono/cellulare"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtMail" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtMessaggio" CssClass="form-control" runat="server" TextMode="MultiLine" required="required" placeholder="Se hai preferenza di giorni o orari scrivili qui."></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                       <cc1:Recaptcha ID="Recaptcha1" Theme="Blackglass" runat="server" />
                                   </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-default" Text="Invia messaggio" OnClick="Button1_Click"></asp:Button>
                                        </div>
                                    </div>
                                </div>--%>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X</button>
                            </div>
                        </div>
                    </div>
                </div>
                <br /><br />
                <a href="CalendarioCorsi.aspx" class="btn btn-info">Calendario corsi</a>
                <br /><br />
                <a href="PhotoGallery/Main.aspx" class="btn btn-info">Galleria fotografica</a>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-5">
                <h2>Attività e promozioni</h2>
                <h3><em>Non perdere l'occasione</em></h3>
                <div class="promoreg"><a class="btn btn-danger" href="Registrati/PromoReg.aspx">
                    Riservate agli iscritti
                </a></div>
            </div>
            <div class="col-md-2 text-center">
            </div>
            <div class="col-md-4 text-center">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" SelectMethod="GetDataP">
                    <ItemSeparatorTemplate>
                        <br />
                        <br />
                    </ItemSeparatorTemplate>
                    <EmptyDataTemplate>
                        <p>Nessuna promozione attiva al momento</p>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <!-- Link trigger modal -->
                        <a href="#" data-toggle="modal" class="btn btn-success" data-target='<%# "#PModal" + Eval("Id") %>'><%# Eval("Titolo") %></a>
                        <!-- Modal -->
                        <div class="modal fade " id='<%# "PModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel"><%# Eval("Titolo") %></h4>
                                    </div>
                                    <div class="modal-body">
                                        <%# Eval("Descrizione") %></div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-5">
                <h2>Servizi</h2>
                <div>
                    <h3><em>I servizi per il benessere</em></h3>
                </div>
            </div>
            <div class="col-md-2 text-center">
            </div>
            <div class="col-md-4 text-center">
                <div class="btn btn-primary"><a href="Servizi.aspx">Scopri i servizi</a></div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-5">
                <h2>Corsi</h2>
                <div>
                    <h3><em>Tutti i corsi di Punto Fitness</em></h3>
                </div>
            </div>
            <div class="col-md-2 text-center">
            </div>
            <div class="col-md-4 text-center">
                <div class="btn btn-primary"><a href="Corsi.aspx">I nostri corsi</a></div>

            </div>
        </div>
    </div>
    <hr />

</asp:Content>
