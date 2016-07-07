<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Corsi.aspx.cs" Inherits="PuntoFitness2.Corsi" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <div  class="body-page">
        <div class="row">
            <div class="col col-md-6 text-right">
            <h2><%: Title %></h2>
            </div>
            <div class="col col-md-6 text-right">
                <a href="Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
                <a href="CalendarioCorsi.aspx"><h2 class="glyphicon-calendar"> Calendario</h2></a><hr />
                    <asp:ListView ID="ListView3" DataKeyNames="Id" SelectedIndex="-1" runat="server" SelectMethod="GetDataA">
                    <ItemSeparatorTemplate><hr /></ItemSeparatorTemplate>
                    <ItemTemplate>
                                <!-- Link trigger modal -->
                                <div class="row">
                                    <div class="col-md-2 text-center" >
                                        <a data-toggle="modal" data-target= '<%# "#AModal" + Eval("Id") %>'><img class="img-circle img-lista" src='<%#"Images/c" + Eval("iD") + ".jpg"%>' /></a>
                                    </div>
                                    <div class="col-md-5">
                                        <a data-toggle="modal" data-target= '<%# "#AModal" + Eval("Id") %>'><h3><%# Eval("Nome") %></h3></a>
                                    </div>
                                    <div class="col-md-3">
                                        <h5><%# Eval("Orari") %></h5>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:Button CssClass="btn btn-primary" ID="Button2" CommandName="Select" runat="server" Text="Vuoi iscriverti?" />
                                    </div>
                                </div>
                                    <!-- Modal corso-->
                                    <div class="modal fade" id='<%# "AModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h2 class="modal-title" id="myModalLabel"><%# Eval("Nome") %></h2>
                                          </div>
                                          <div class="modal-body">
                                            <%# Eval("Descrizione") %></div>
                                          <div class="modal-footer">
                                              <a href="Contatti.aspx" class="btn btn-primary">Chiedi informazioni</a>
                                            <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                    </ItemTemplate>
                        <SelectedItemTemplate>
                                <!-- Link trigger modal -->
                                <div class="row ">
                                    <div class="col-md-2 text-center" >
                                        <img class="img-circle img-lista" src='<%#"Images/c" + Eval("iD") + ".jpg"%>' />
                                    </div>
                                    <div class="col-md-5 text-right">
                                        <h1><%# Eval("Nome") %></h1>
                                    </div>
                                    <div class="col-md-3 text-center">
                                        <asp:HyperLink CssClass="btn btn-danger" ID="HyperLink1" NavigateUrl="~/RichiestaIscrizione.aspx" runat="server">Nuovo utente</asp:HyperLink>
                                        <div class="btn btn-success" data-toggle="modal" data-target= '<%# "#UModal" + Eval("Id") %>'>Utente registrato</div>
                                    </div>
                                    <div class=" col-md-2 text-right">
                                        <a href="/Corsi.aspx" class="glyphicon glyphicon-remove"></a>

                                    </div>
                                </div>
                                    <!-- Modal già iscritto-->
                            <div class="modal fade" id='<%# "UModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title text-center" id="myModalULabel">
                                                <asp:Label ID="lblNomeI" runat="server" Text='<%# "Richiesta iscrizione al corso di " + Eval("Nome") %>'></asp:Label></h4>
                                          </div>
                                          <div class="modal-body">
                                              <%# Eval("Orari") %><hr />

                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <div class="col-sm-10">
                                                        <p>Inserisci la mail che usi per accedere all'area riservata</p>
                                                        <asp:TextBox ID="txtMailI" TextMode="Email" class="form-control" runat="server" placeholder="Email"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtMailI" runat="server" ErrorMessage="Devi inserire la mail" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                            
                                                    </div>
                                                </div>
                                            </div>
                                          </div>

                                          <div class="modal-footer">
                                            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Invia iscrizione" OnClick="Button3_Click" ValidateRequestMode="Enabled"></asp:Button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                        </SelectedItemTemplate>
                </asp:ListView>

        </div>
</asp:Content>
