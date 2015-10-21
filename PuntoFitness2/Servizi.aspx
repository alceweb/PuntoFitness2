<%@ Page Title="Servizi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Servizi.aspx.cs" Inherits="PuntoFitness2.Servizi" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-6 text-right">
            <h2><%: Title %></h2>
            </div>
            <div class="col col-md-6 text-right">
                <a href="Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
                <a href="/Documenti/Main"><h2><span class="glyphicon glyphicon-share-alt"></span> Download</h2></a><hr />
                    <asp:ListView ID="ListView2" DataKeyNames="Id" runat="server" SelectMethod="GetDataS">
                    <ItemSeparatorTemplate><hr /></ItemSeparatorTemplate>
                    <ItemTemplate>
                                <!-- Link trigger modal -->
                                <div class="row">
                                    <div class="col-md-2 text-center" >
                                        <a data-toggle="modal" data-target= '<%# "#SModal" + Eval("Id") %>'><img class="img-circle img-lista" src='<%#"Images/s" + Eval("iD") + ".jpg"%>' /></a>
                                    </div>
                                    <div class="col-md-10" >
                                        <a data-toggle="modal" data-target= '<%# "#SModal" + Eval("Id") %>'><h2><%# Eval("Titolo") %></h2></a>
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
                                               <a href="Contatti.aspx" class="btn btn-primary">Chiedi informazioni</a>
                                           <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                    </ItemTemplate>
                </asp:ListView>

    </div>

</asp:Content>
