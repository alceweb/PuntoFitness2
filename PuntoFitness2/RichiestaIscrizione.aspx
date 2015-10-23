<%@ Page Title="Richiesta registrazione" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RichiestaIscrizione.aspx.cs" Inherits="PuntoFitness2.RichiestaIscrizione" %>
<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col col-md-8 text-right">
                <h2><%: Title %></h2>
            </div>
            <div class="col col-md-4 text-right">
                <a href="Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>

        <div class="row">
            <div class="col col-md-3">
            </div>
            <div class="col col-md-6">
                <div class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtNome" class="form-control" runat="server" placeholder="Il tuo nome"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo obbligatorio"></asp:RequiredFieldValidator>
                    </div>
                        </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCognome" class="form-control" runat="server" placeholder="Il tuo cognome"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCognome" ErrorMessage="Campo obbligatorio"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCitta" class="form-control" runat="server" placeholder="Città"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCitta" ErrorMessage="Campo obbligatorio"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server" placeholder="Indirizzo"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtIndirizzo" ErrorMessage="Campo obbligatorio"></asp:RequiredFieldValidator>
                       </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtTelefono" class="form-control" runat="server" placeholder="Telefono/cellulare"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Campo obbligatorio"></asp:RequiredFieldValidator>
                       </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtMail" class="form-control" TextMode="Email" runat="server" placeholder="Email"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMail" ErrorMessage="Campo obbligatorio"></asp:RequiredFieldValidator>
                       </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:Label ID="lblMessage" runat="server" ></asp:Label>
                           <cc1:Recaptcha ID="Recaptcha1" Theme="Blackglass" runat="server" />
                           </div>
                       </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                        </div>
                    </div>
                </div><hr />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Invia richiesta iscrizione" OnClick="Button1_Click"></asp:Button>

            </div>
            <div class="col col-md-3">
                <p>Compilando questo modulo fai richiesta di registrazione come nuovo utente alla palestra <span class="rosso">"PUNTO FITNESS"</span></p>
                                        Registrandoti potrai utilizzare tutti i vantaggi riservati agli iscritti<br /><br />
                    <ul>
                        <li>Accesso alle promozioni stagionali</li>
                        <li>Iscrizione corsi on-line</li>
                        <li>Visualizzione on-line della tua scheda di allenamento</li>
                        <li>Download documenti</li>
                        <li>Accesso agli sconti periodici</li>
                        <li>...e tanto altro</li> 
                    </ul>
            </div>

        </div>
    </div>

</asp:Content>
