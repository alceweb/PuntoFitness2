<%@ Page Title="riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PromoReg.aspx.cs" Inherits="PuntoFitness2.Registrati.PromoReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/sfondi/" + Title + ".jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-6 text-right">
            <h2>Le promo riservate agli utenti registrati</h2>
            </div>
            <div class="col col-md-6 text-right">
                <a href="/Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
        <hr />
        <h3></h3>
        <asp:ListView ID="ListView3" runat="server" SelectMethod="GetDataR">
            <EmptyDataTemplate>
                Al momento non ci sono promo riservate agli iscritti
            </EmptyDataTemplate>
            <ItemSeparatorTemplate>
                <hr />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <!-- Link trigger modal -->
                <div class="row">
                    <div class="col-md-4">
                        <a class="btn btn-fitness" data-toggle="modal" data-target='<%# "#AModal" + Eval("Id") %>'><%# Eval("Titolo") %>
                        </a>
                    </div>
                    <div class="col-md-6">
                         Inizio promo: <asp:Label ID="Label1" CssClass="verde" runat="server" Text='<%# Eval("DataInizio", "{0:dddd dd-MMM-yyyy}") %>'></asp:Label><br />
                         Fine promo: <asp:Label ID="Label2" CssClass="rosso" runat="server" Text='<%# Eval("DataFine", "{0:dddd dd-MMM-yyyy}") %>'></asp:Label>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id='<%# "AModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel"><%# Eval("Titolo") %></h4>
                            </div>
                            <div class="modal-body">
                                <%# Eval("Descrizione") %>
                            </div>
                            <div class="modal-footer">
                                <a href="/Contatti.aspx" class="btn btn-primary">Chiedi informazioni</a>
                                <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <hr />
    </div>

</asp:Content>
