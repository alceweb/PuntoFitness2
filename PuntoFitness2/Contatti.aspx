<%@ Page Title="Contatti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contatti.aspx.cs" Inherits="PuntoFitness2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="body-page">
            <h2><%: Title %></h2>
            <hr />
        <div class="row">
            <div class="col-md-5 bianco">
                <address>
                    Punto Fitness<br />
                    24043 Caravaggio BG<br />
                    <abbr title="Phone">Tel:</abbr>
                    0363 54040
                </address>
                <address>
                    <strong>Mail:</strong>   <a href="mailto:Support@example.com">info@puntofitnesscaravaggio.it</a><br />
                </address>
                <a href="https://www.facebook.com/pages/Palestra-Punto-Fitness-Caravaggio/189024564443366"><img class="img-social" src="Images/faceb.png" /></a>
                <a href="https://twitter.com/PuntoFitness1"><img class="img-social" src="Images/twt.png" /></a>
                <a href="https://www.linkedin.com/profile/view?id=153806675&trk=hp-identity-name"><img class="img-social" src="Images/lkd.png" /></a>
            </div>
            <div class="col-md-4">
                <h2>Cerchi informazioni...</h2>
                <div class="form-horizontal">
                    <div class="form-group">
                        <%--            <label for="inputEmail3" class="col-sm-2 control-label">Nome</label>--%>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtNome" class="form-control" runat="server" required="required" placeholder="Il tuo nome"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <%--            <label for="inputEmail3" class="col-sm-2 control-label">Cognome</label>--%>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCognome" class="form-control" runat="server" required="required" placeholder="Il tuo cognome"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <%--            <label for="inputEmail3" class="col-sm-2 control-label">Città</label>--%>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCittà" class="form-control" runat="server" required="required" placeholder="Città"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <%--            <label for="inputEmail3" class="col-sm-2 control-label">Indirizzo</label>--%>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server" required="required" placeholder="Indirizzo"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <%--            <label for="inputPassword3" class="col-sm-2 control-label">Telefono</label>--%>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtTelefono" class="form-control" runat="server" required="required" placeholder="Telefono/cellulare"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <%--            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>--%>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtMail" class="form-control" runat="server" required="required" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <%--            <label for="inputPassword3" class="col-sm-2 control-label">Messaggio</label>--%>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtMessaggio" class="form-control" runat="server" TextMode="MultiLine" required="required" placeholder="Cosa vuoi sapere?"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Invia messaggio" OnClick="Button1_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        </div>
</asp:Content>
