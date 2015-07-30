<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Corsi.aspx.cs" Inherits="PuntoFitness2.Corsi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="body-page">
            <h2 ><%: Title %></h2><hr />
                    <asp:ListView ID="ListView3" runat="server" SelectMethod="GetDataA">
                    <ItemSeparatorTemplate><hr /></ItemSeparatorTemplate>
                    <ItemTemplate>
                                <!-- Link trigger modal -->
                                <div class="row">
                                    <div class="col-md-4" >
                                        <a class="btn btn-fitness" data-toggle="modal" data-target= '<%# "#AModal" + Eval("IdAttivita") %>'><%# Eval("Nome") %></a>
                                    </div>
                                    <div class="col-md-6">
                                        <img class="imgList" src="Images/corsi.jpg" />
                                    </div>
                                </div>
                                    <!-- Modal -->
                                    <div class="modal fade" id='<%# "AModal" + Eval("IdAttivita") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel"><%# Eval("Nome") %></h4>
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
