<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PuntoFitness2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<%--    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>--%>

    <div class="row">
        <div class="col-md-4">
            <h2>Corsi</h2>
                    <asp:ListView ID="ListView3" runat="server" SelectMethod="GetDataA">
                    <ItemSeparatorTemplate><br /></ItemSeparatorTemplate>
                    <ItemTemplate>
                                <!-- Link trigger modal -->
                                    <span class="glyphicon glyphicon-ok "> </span><a href="#" data-toggle="modal" data-target= '<%# "#AModal" + Eval("IdAttivita") %>'><%# Eval("Nome") %></a>
                                    <!-- Modal -->
                                    <div class="modal fade" id='<%# "AModal" + Eval("IdAttivita") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel"><%# Eval("Nome") %></h4>
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
        <div class="col-md-4">
            <h2>Info e Orari</h2>
            <p>
               La palestra si trova a Caravaggio (BG), in via Papa Giovanni XXIII°, 23
            </p>
            <div><h4>Orari:</h4><span class="orario">LUN-VEN: 9:00 - 13:00 e 14:00 - 22:00</span><br /> <span class="orario">SAB: 9:00 - 13:00</span>
            </div>
            <br />
                <button type="button" class="btn btn-primary btn-gratis"  data-toggle="modal" data-target= "#myModal">LA PRIMA PROVA<br />E' GRATIS!</button>
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
              <asp:TextBox ID="txtNome" class="form-control" runat="server"  required="required" placeholder="Il tuo nome"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Cognome</label>
            <div class="col-sm-10">
              <asp:TextBox ID="txtCognome" class="form-control" runat="server"  required="required" placeholder="Il tuo cognome"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Città</label>
            <div class="col-sm-10">
              <asp:TextBox ID="txtCittà" class="form-control" runat="server"  required="required" placeholder="Città"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Indirizzo</label>
            <div class="col-sm-10">
              <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server"  required="required" placeholder="Indirizzo"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Telefono</label>
            <div class="col-sm-10">
              <asp:TextBox ID="txtTelefono" class="form-control" runat="server"  required="required" placeholder="Telefono/cellulare"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
              <asp:TextBox ID="txtMail" class="form-control" runat="server"  required="required" placeholder="Email"></asp:TextBox>
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
        <div class="col-md-4">
            <h2>Servizi</h2>
            <div >
<%-- ListView promozioni e servizi --%>
                    <asp:ListView ID="ListView2" DataKeyNames="IdServizi" runat="server" SelectMethod="GetDataS">
                    <ItemSeparatorTemplate><br /></ItemSeparatorTemplate>
                    <ItemTemplate>
                                <!-- Link trigger modal -->
                                    <a href="#" data-toggle="modal" data-target= '<%# "#SModal" + Eval("IdServizi") %>'><%# Eval("Titolo") %></a>
                                    <!-- Modal -->
                                    <div class="modal fade" id='<%# "SModal" + Eval("IdServizi") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
            <h2>Promozioni</h2>
            <div >

                     <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdPromozione"  SelectMethod="GetDataP" >
                    <ItemSeparatorTemplate><br /></ItemSeparatorTemplate>
                    <EmptyDataTemplate>
                        <p>Nessuna promozione attiva al momento</p>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                                <!-- Link trigger modal -->
                                     <a href="#" data-toggle="modal" data-target= '<%# "#PModal" + Eval("IdPromozione") %>'><%# Eval("Titolo") %></a>
                                    <!-- Modal -->
                                    <div class="modal fade" id='<%# "PModal" + Eval("IdPromozione") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
    </div>

</asp:Content>
