<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <%---Slide show ---%>
    <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="carousel-caption">
                    <h3>Slide 1</h3>
                    <p>
                        Esercizi a corpo libero a terra con <a href="FormPersonalTrainer.aspx">personal trainer dedicato</a>
                    </p>
                    <p>
                        <a class="btn btn-fitness" href="FormPersonalTrainer.aspx">Chiedi informazioni</a>

                    </p>
                </div>
                <img class="" src="/Images/Slideshow/01.jpg" alt="">
            </div>

            <div class="item">
                <img class="img-responsive" src="/Images/Slideshow/02.jpg" alt="">
                <div class="carousel-caption">
                    <h3>Slide due</h3>
                    <p>
                        Decine di macchine di ultima generazione<br />
                        Con tabella personalizzata per utilizzo mirato
                    </p>
                </div>
            </div>

            <div class="item">
                <img class="img-responsive" src="/Images/Slideshow/03.jpg" alt="">
                <div class="carousel-caption">
                    <h3>Slide tre</h3>
                    <p>I tapis roulant computerizzati</p>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="/Images/Slideshow/04.jpg" alt="">
                <div class="carousel-caption">
                    <h3>Slide quattro</h3>
                    <p>aaaa</p>
                </div>
            </div>
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
        <div class="row">
            <div class="col-md-12 text-center">
                <h4>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                        La prima prova è gratis</button></h4>
                <img src="Images/fb.jpg" />
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
                                <p>Compila e invia, ti contatteremo per accordarci sulla prova gratuita</p>
                                <hr />
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtNome" class="form-control" runat="server" required="required" placeholder="Il tuo nome"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCognome" class="form-control" runat="server" required="required" placeholder="Il tuo cognome"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCittà" class="form-control" runat="server" required="required" placeholder="Città"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server" required="required" placeholder="Indirizzo"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtTelefono" class="form-control" runat="server" required="required" placeholder="Telefono/cellulare"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtMail" class="form-control" runat="server" required="required" placeholder="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtMessaggio" class="form-control" runat="server" TextMode="MultiLine" required="required" placeholder="Se hai preferenza di giorni o orari scrivili qui."></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Invia messaggio" OnClick="Button1_Click"></asp:Button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">X</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-6">
                <h2>Info e Orari</h2>
                <p>
                    Caravaggio (BG), in via Papa Giovanni XXIII°, 23
                </p>
                <div>
                    <span class="orario">LUN-VEN: 9:00 - 13:00 e 14:00 - 22:00</span><br />
                    <span class="orario">SAB: 9:00 - 13:00</span>
                </div>
                <div>
                    <a target="_blank" href="https://twitter.com/PuntoFitness1">
                        <img class="img-social" src="Images/twt.png" /></a>
                    <a target="_blank" href="https://www.facebook.com/pages/Palestra-Punto-Fitness-Caravaggio/189024564443366">
                        <img class="img-social" src="Images/faceb.png" /></a>
                    <a target="_blank" href="https://www.linkedin.com/pub/punto-fitness-caravaggio/9a/743/b3b">
                        <img class="img-social" src="Images/lkd.png" /></a>

                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-4">
                <h2>Promozioni</h2>
                <h3><em>Non perdere l'occasione</em></h3>
                <div>
                    Facciamo promozioni specifiche per chi vuole iniziare e personalizzate per chi già frequenta la nostra palestra
                </div>
            </div>
            <div class="col-md-6">
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
                        <a href="#" data-toggle="modal" class="btn btn-danger" data-target='<%# "#PModal" + Eval("Id") %>'><%# Eval("Titolo") %></a>
                        <!-- Modal -->
                        <div class="modal fade " id='<%# "PModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel"><%# Eval("Titolo") %></h4>
                                    </div>
                                    <div class="modal-body">
                                        ...<%# Eval("Descrizione") %></div>
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
            <div class="col-md-4">
                <h2>Servizi</h2>
                <div>
                    <h3><em>I servizi per il benessere</em></h3>
                    <div>Dammi una descrizione breve che riassuma i servizi che offre PuntoFitness</div>
                    <%--                        <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" SelectMethod="GetDataP">
                            <ItemSeparatorTemplate>
                                <br />
                            </ItemSeparatorTemplate>
                            <EmptyDataTemplate>
                                <p>Nessuna promozione attiva al momento</p>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <!-- Link trigger modal -->
                                <a href="#" data-toggle="modal" data-target='<%# "#PModal" + Eval("Id") %>'><%# Eval("Titolo") %></a>
                                <!-- Modal -->
                                <div class="modal fade" id='<%# "PModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel"><%# Eval("Titolo") %></h4>
                                            </div>
                                            <div class="modal-body">
                                                ...<%# Eval("Descrizione") %>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>--%>
                </div>
            </div>
            <div class="col-md-6">
                <div class="btn btn-primary"><a href="Servizi.aspx">Scopri i servizi</a></div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-4 ">
                <h2>Corsi</h2>
                <div>
                    <h3><em>Tutti i corsi di Punto Fitness</em></h3>
                    <div>Dammi una descrizione breve che riassuma i servizi che offre PuntoFitness</div>
                    <%--                        <asp:ListView ID="ListView3" runat="server" DataKeyNames="Id" SelectMethod="GetDataP">
                            <ItemSeparatorTemplate>
                                <br />
                            </ItemSeparatorTemplate>
                            <EmptyDataTemplate>
                                <p>Nessuna promozione attiva al momento</p>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <!-- Link trigger modal -->
                                <a href="#" data-toggle="modal" data-target='<%# "#PModal" + Eval("Id") %>'><%# Eval("Titolo") %></a>
                                <!-- Modal -->
                                <div class="modal fade" id='<%# "PModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel"><%# Eval("Titolo") %></h4>
                                            </div>
                                            <div class="modal-body">
                                                ...<%# Eval("Descrizione") %>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>--%>
                </div>
            </div>
            <div class="col-md-6">
                <div class="btn btn-primary"><a href="Corsi.aspx">I nostri corsi</a></div>
            </div>
        </div>
    </div>
    <hr />

</asp:Content>
