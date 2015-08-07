<%@ Page Title="Contatti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormPersonalTrainer.aspx.cs" Inherits="PuntoFitness2.FormPersonalTrainer" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "Images/" + Title + ".jpg" %>'/>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Personal trainer</h2><hr />
                <h4>Compila e invia questa form per richiedere un'attività di personal trainer...<br />
                    Anche a casa tua, o in palestra!</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group text-center" >
                    <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="txtNome" runat="server" required="required" placeholder="Il tuo nome" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                            <asp:TextBox ID="txtCognome" class="form-control" runat="server" required="required" placeholder="Il tuo cognome"></asp:TextBox>
                     </div>
                    <div class="form-group">
                            <asp:TextBox ID="txtCittà" class="form-control" runat="server" required="required" placeholder="Città"></asp:TextBox>
                    </div>
                    <div class="form-group">
                            <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server" required="required" placeholder="Indirizzo"></asp:TextBox>
                    </div>
                    <div class="form-group">
                            <asp:TextBox ID="txtTelefono" class="form-control" runat="server" required="required" placeholder="Telefono/cellulare"></asp:TextBox>
                    </div>
                    <div class="form-group">
                            <asp:TextBox ID="txtMail" class="form-control" runat="server" required="required" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                            <asp:TextBox ID="txtMessaggio" Width="280" class="form-control" runat="server" TextMode="MultiLine" required="required" placeholder="Se hai preferenza di giorni o orari scrivili qui."></asp:TextBox>
                    </div><hr />
                    <div class="form-group">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Invia richiesta" OnClick="Button1_Click"></asp:Button>
                    </div>
                </div>
              </div>
           </div>
    </div>
        <div>

        </div>
</asp:Content>
