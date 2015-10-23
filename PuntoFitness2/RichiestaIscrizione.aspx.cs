using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Recaptcha.Web;

namespace PuntoFitness2
{
    public partial class RichiestaIscrizione : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                    String from = "webservice1@puntofitnesscaravaggio.it";
                    String to = "palestra@puntofitnesscaravaggio.it";
                    //Istanzio la classe che rappresenta il messaggio 
                    MailMessage mMailMessage = new MailMessage();
                    //Aggiungo il Mittente 
                    mMailMessage.From = new MailAddress(from);
                    //Aggiungo il destinatario 
                    mMailMessage.To.Add(new MailAddress(to));
                    mMailMessage.To.Add(new MailAddress("cesare@cr-consult.eu"));
                    //L'oggetto 
                    mMailMessage.Subject = "Richiesta iscrizione corso";
                    //Il corpo 
                    mMailMessage.Body = "<strong>" + DateTime.Today.ToLongDateString() + "</strong> - " + DateTime.Now.ToLongTimeString() + "<hr/><strong>Richiesta registrazione alla palestra inviata da:</strong> " + txtNome.Text + " " + txtCognome.Text + "<br/><strong>Indirizzo:</strong> " + txtIndirizzo.Text + " - " + txtCitta.Text + "<br/><strong>Mail:</strong> " + txtMail.Text + "<br/><strong>Tel:</strong> " + txtTelefono.Text;
                    //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
                    mMailMessage.IsBodyHtml = true;
                    //Setto la priorità 
                    mMailMessage.Priority = MailPriority.Normal;
                    //configurazione nel web.config 
                    SmtpClient mSmtpClient = new SmtpClient();
                    //Invio il messaggio 
                    mSmtpClient.Send(mMailMessage);
                    Response.Redirect("FormRegistrazioneResponse.aspx");
                }
            }
        }
    }
}