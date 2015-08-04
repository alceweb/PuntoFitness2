<%@ Page Title="Servizi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Servizi.aspx.cs" Inherits="PuntoFitness2.Servizi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
    <h2 > <%: Title %></h2><hr />
                    <asp:ListView ID="ListView2" DataKeyNames="Id" runat="server" SelectMethod="GetDataS">
                    <ItemSeparatorTemplate><hr /></ItemSeparatorTemplate>
                    <ItemTemplate>
                                <!-- Link trigger modal -->
                                <div class="row">
                                    <div class="col-md-4" >
                                        <a href="#" class="btn btn-fitness" data-toggle="modal" data-target= '<%# "#SModal" + Eval("Id") %>'><%# Eval("Titolo") %></a>
                                    </div>
                                    <div class="col-md-6">
                                        <img class="imgList" src="Images/servizi1.jpg" />
                                    </div>
                                </div>
                                    <!-- Modal -->
                                    <div class="modal fade" id='<%# "SModal" + Eval("Id") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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

</asp:Content>
