<%@ Page Title="login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PuntoFitness2.Account.Login" Async="true" %>
<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/" + Title + ".jpg" %>' />
</asp:Content>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="body-page">
        <div class="row">
            <div class="col col-md-6 text-right">
            <h2>Area riservata</h2>
            </div>
            <div class="col col-md-6 text-right">
                <a href="/Default.aspx" class="glyphicon glyphicon-remove"></a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <section id="loginForm">
                    <div class="form-horizontal">
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
                    <p>Hai perso la password?</p>
                    <p>Chiedine una nuova in palestra</p>
                    <p></p>
                </section>
            </div>

            <div class="col-md-6">
                <%--<section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>--%>
                <hr />
                <h4>L'accesso è riservato solo agli iscritti alla palestra. Chiedi nome utente e password a Giorgio in palestra.</h4>
                <br /><br /><p>Gli utenti accreditati avranno accesso a promozioni riservate, potranno scaricare la propria scheda di allenamento e documenti messi a disposizione</p>

        </div>
    </div>
        </div>
</asp:Content>
