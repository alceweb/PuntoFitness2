using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using PuntoFitness2.Models;
using System.Net.Mail;
using Recaptcha.Web;

namespace PuntoFitness2.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
           
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
                                                        Request.QueryString["ReturnUrl"],
                                                        RememberMe.Checked),
                                          true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        FailureText.Text = "Invalid login attempt";
                        ErrorMessage.Visible = true;
                        break;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Recaptcha1.Response))
            {

                lblMessage.Text = "Inserire codice reCaptcha in basso";
                ClientScript.RegisterStartupScript(GetType(), "modalOpen", "$('#myModal').modal('show');", true);
            }
            else
            {
                RecaptchaVerificationResult result = Recaptcha1.Verify();

                if (result == RecaptchaVerificationResult.Success)
                {
                    ////Preparo i campi della mail
                    String from = "webservice@puntofitnesscaravaggio.it";
                    String to = "cesare@cr-consult.eu";
                    //Istanzio la classe che rappresenta il messaggio 
                    MailMessage mMailMessage = new MailMessage();
                    //Aggiungo il Mittente 
                    mMailMessage.From = new MailAddress(from);
                    //Aggiungo il destinatario 
                    mMailMessage.To.Add(new MailAddress(to));
                    mMailMessage.To.Add(new MailAddress("palestra@puntofitnesscaravaggio.it"));
                    //L'oggetto 
                    mMailMessage.Subject = "Richiesta di registrazione";
                    //Il corpo 
                    mMailMessage.Body = "Richiesta di registrazione alla palestra, ricevuta tramite il sito www.puntofitnesscaravaggio.it<br/><br/><strong>Messaggio inviato da:</strong> " + txtNome.Text + " " + txtCognome.Text + "<br/><strong>Indirizzo:</strong> " + txtIndirizzo.Text + " (" + txtCitta.Text + ")<br/><strong>Mail:</strong> " + txtMail.Text + "<br/><strong>Tel:</strong> " + txtTelefono.Text + "<br/><br/><strong>Testo del messaggio:</strong> <br/>" + txtMessaggio.Text;
                    //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
                    mMailMessage.IsBodyHtml = true;
                    //Setto la priorità 
                    mMailMessage.Priority = MailPriority.Normal;
                    //configurazione nel web.config 
                    SmtpClient mSmtpClient = new SmtpClient();
                    //Invio il messaggio 
                    mSmtpClient.Send(mMailMessage);
                    Response.Redirect("/FormPTResponse.aspx");
                }
                if (result == RecaptchaVerificationResult.IncorrectCaptchaSolution)
                {
                    lblMessage.Text = "reCaptcha inserito in modo scorretto";
                    ClientScript.RegisterStartupScript(GetType(), "modalOpen", "$('#myModal').modal('show');", true);


                }
                else
                {
                    lblMessage.Text = "C'è stato un problema, riprova.";
                    ClientScript.RegisterStartupScript(GetType(), "modalOpen", "$('#myModal').modal('show');", true);

                }
            } 
            
        }
    }
}