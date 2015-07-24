﻿<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Corsi.aspx.cs" Inherits="PuntoFitness2.Corsi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
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
</asp:Content>
