<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <%---Slide show ---%>
    <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="img-responsive" src="/Images/01.jpg" alt="">
                <div class="carousel-caption">
                    <h3>Slide 1</h3>
                    <p>
                        Esercizi a corpo libero a terra con <a href="FormPersonalTrainer.aspx">personal trainer dedicato</a>
                    </p>
                    <p class="btn btn-default">
                        <a href="FormPersonalTrainer.aspx">Chiedi informazioni</a>

                    </p>
                </div>
            </div>

            <div class="item">
                <img class="img-responsive" src="/Images/02.jpg" alt="">
                <div class="carousel-caption">
                    <h3>Slide due</h3>
                    <p>
                        Decine di macchine di ultima generazione<br />
                        Con tabella personalizzata per utilizzo mirato
                    </p>
                </div>
            </div>

            <div class="item">
                <img class="img-responsive" src="/Images/03.jpg" alt="">
                <div class="carousel-caption">
                    <h3>Slide tre</h3>
                    <p>I tapis roulant computerizzati</p>
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
        <div class="row">
            <div class="col-md-12 btn-gratis">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                    LA PRIMA PROVA<br />
                    E' GRATIS!</button>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">La prima prova per te è gratis</h4>
                            </div>
                            <div class="modal-body">
                                <p>Se vuoi provare la nostra palestra, <strong>la prima prova la offriamo noi.</strong></p>
                                <p>Per aderire compila il form qui sotto, invia i tuoi dati e ti contatteremo per accordarci sul giorno e la modalità della prova gratuita</p>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Nome</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtNome" class="form-control" runat="server" required="required" placeholder="Il tuo nome"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Cognome</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCognome" class="form-control" runat="server" required="required" placeholder="Il tuo cognome"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Città</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtCittà" class="form-control" runat="server" required="required" placeholder="Città"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Indirizzo</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server" required="required" placeholder="Indirizzo"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">Telefono</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtTelefono" class="form-control" runat="server" required="required" placeholder="Telefono/cellulare"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtMail" class="form-control" runat="server" required="required" placeholder="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">Messaggio</label>
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
            <div class="col-md-6 margin-top-20 border align-right">
                <h2>Info e Orari</h2>
                <p>
                    La palestra si trova a Caravaggio (BG), in via Papa Giovanni XXIII°, 23
                </p>
                <div>
                    <h4>Orari:</h4>
                    <span class="orario">LUN-VEN: 9:00 - 13:00 e 14:00 - 22:00</span><br />
                    <span class="orario">SAB: 9:00 - 13:00</span>
                </div>
                <br />
            </div>
            <div class="col-md-6 margin-top-20">
                <h2>Promozioni</h2>
                <div>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdPromozione" SelectMethod="GetDataP">
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <EmptyDataTemplate>
                            <p>Nessuna promozione attiva al momento</p>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <!-- Link trigger modal -->
                            <a href="#" data-toggle="modal" data-target='<%# "#PModal" + Eval("IdPromozione") %>'><%# Eval("Titolo") %></a>
                            <!-- Modal -->
                            <div class="modal fade" id='<%# "PModal" + Eval("IdPromozione") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                    </asp:ListView>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
