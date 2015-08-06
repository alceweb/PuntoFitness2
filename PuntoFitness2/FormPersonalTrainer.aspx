<%@ Page Title="Contatti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormPersonalTrainer.aspx.cs" Inherits="PuntoFitness2.FormPersonalTrainer" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "Images/" + Title + ".jpg" %>'/>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="body-page">
            <div class="row">
                <div class="col-md-12 text-center">
    <h2>Personal trainer</h2>
    <h3>Compila e invia questa form per richiedere un'attività di personal trainer personalizzata...<br />
        Anche a casa tua, o nella tua palestra!</h3>
                </div>
            </div>
<div class="row">
    <div class="col-md-4">

    </div>
    <div class="col-md-4 text-center">
         <div class="form-horizontal">
          <div class="form-group">
            <div class="col-sm-10">
              <asp:TextBox ID="txtNome" class="form-control" runat="server"  required="required" placeholder="Il tuo nome"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <asp:TextBox ID="txtCognome" class="form-control" runat="server"  required="required" placeholder="Il tuo cognome"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <asp:TextBox ID="txtCittà" class="form-control" runat="server"  required="required" placeholder="Città"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server"  required="required" placeholder="Indirizzo"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <asp:TextBox ID="txtTelefono" class="form-control" runat="server"  required="required" placeholder="Telefono/cellulare"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <asp:TextBox ID="txtMail" class="form-control" runat="server"  required="required" placeholder="Email"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <asp:TextBox ID="txtMessaggio" class="form-control" runat="server" TextMode="MultiLine" required="required" placeholder="Se hai preferenza di giorni o orari scrivili qui."></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Invia richiesta" OnClick="Button1_Click"></asp:Button>
            </div>
          </div>
        </div>
    </div>
    <div class="col-md-6">
    </div>
</div>
            </div>
</asp:Content>
