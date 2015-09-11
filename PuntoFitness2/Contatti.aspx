<%@ Page Title="Contatti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contatti.aspx.cs" Inherits="PuntoFitness2.Contact" %>
<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "Images/Sfondi/" + Title + ".jpg" %>'/>
</asp:Content>


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
                    0363 54040<br />
                    LUN-VEN: 10:00 - 22:00<br />
                    SAB: 14:30 - 17:30 
                </address>
                <address>
                    <strong>Mail:</strong>   <a href="mailto:Support@example.com">palestra@puntofitnesscaravaggio.it</a><br />
                </address>
                <a href="https://www.facebook.com/pages/Palestra-Punto-Fitness-Caravaggio/189024564443366"><img class="img-social" src="Images/faceb.png" /></a>
                <a href="https://twitter.com/PuntoFitness1"><img class="img-social" src="Images/twt.png" /></a>
                <a href="https://www.linkedin.com/profile/view?id=153806675&trk=hp-identity-name"><img class="img-social" src="Images/lkd.png" /></a><br />
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2796.841427085521!2d9.640698700000009!3d45.493137900000015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x478137e0de21040b%3A0xc5850ae427ed8811!2sViale+Papa+Giovanni+XXIII%2C+23%2C+24043+Caravaggio+BG!5e0!3m2!1sit!2sit!4v1438936607944" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>            </div>
            <div class="col-md-4">
                <h2>Cerchi informazioni</h2>
                <asp:Label ID="lblMessage" ForeColor="red" runat="server" Text="" ></asp:Label>
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
                            <asp:TextBox ID="txtCitta" class="form-control" runat="server" required="required" placeholder="Città"></asp:TextBox>
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
                           <cc1:Recaptcha ID="Recaptcha1" Theme="Blackglass" runat="server" />
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
