<%@ Page Title="login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PuntoFitness2.Account.Login" Async="true" %>
<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/" + Title + ".jpg" %>' />
</asp:Content>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="body-page">
        <h2>Accedi all'area riservata</h2>

        <div class="row">
            <div class="col-md-6">
                <section id="loginForm">
                    <div class="form-horizontal">
                        <h4>Accedi</h4>
                        <hr />
                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                        </asp:PlaceHolder>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="text-danger" ErrorMessage="The email field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <div class="checkbox">
                                    <asp:CheckBox runat="server" ID="RememberMe" />
                                    <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                            </div>
                        </div>
                    </div>
                    <p>
                        <asp:HyperLink runat="server" Visible="false" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                    </p>
                    <p>
                        <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                        --%>
                    </p>
                </section>
            </div>

            <div class="col-md-6">
                <%--<section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>--%>
                <h4>L'accesso è riservato solo agli iscritti alla palestra.</h4>
                <hr />
                <asp:Button ID="Button1" runat="server" Text="Richiedi l'iscrizione alla palestra" CssClass="btn" data-toggle="modal" data-target="#myModal" />
            </div>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <img src="../Images/logo.png" />
                        </div>
                        <div class="modal-body">
                            <h4>Modulo di iscrizione alla palestra PuntoFitness</h4>
                            <p>Compila e invia, ti contatteremo per stabilire un incontro e per comunicarti le credenziali di accesso al sito</p>
                            <asp:Label ID="lblMessage" ForeColor="red" runat="server" Text="" ></asp:Label>
                            <hr />
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" placeholder="Il tuo nome"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtCognome" CssClass="form-control" runat="server" placeholder="Il tuo cognome"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtCitta" CssClass="form-control" runat="server" placeholder="Città"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtIndirizzo" CssClass="form-control" runat="server" placeholder="Indirizzo"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server" placeholder="Telefono/cellulare"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtMail" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtMessaggio" CssClass="form-control" runat="server" TextMode="MultiLine" required="required" placeholder="Se hai preferenza di giorni o orari scrivili qui."></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <cc1:Recaptcha ID="Recaptcha1" Theme="Blackglass" runat="server" />
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-default" Text="Invia messaggio" OnClick="Button1_Click"></asp:Button>
                                    </div>
                                </div>
                                
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">X</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
