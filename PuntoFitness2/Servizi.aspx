<%@ Page Title="Servizi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Servizi.aspx.cs" Inherits="PuntoFitness2.Servizi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2> <%: Title %></h2>
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

</asp:Content>
