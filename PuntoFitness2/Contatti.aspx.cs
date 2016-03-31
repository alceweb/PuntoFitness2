using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Recaptcha.Web;
using System.Threading;
using System.Globalization;

namespace PuntoFitness2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("it-IT");
            DateTime dataInizio = new DateTime(1997, 9, 1);
            DateTime dataOggi = DateTime.Now;
            TimeSpan ts = dataOggi - dataInizio;
            DateTime dataFine = new DateTime(2017, 9, 1);
            TimeSpan tf = dataFine - dataOggi;
            int contoGiorni1 = tf.Days;
            int contoGiorni = ts.Days;
            Label2.Text = contoGiorni.ToString();
            Label3.Text = contoGiorni1.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Recaptcha1.Response))
            {
                lblMessage.Text = "Inserire codice reCaptcha in basso";
            }
            else
            {
                RecaptchaVerificationResult result = Recaptcha1.Verify();
                
                if (result == RecaptchaVerificationResult.Success)
                {
                    ////Preparo i campi della mail
                    String from = "webservice1@puntofitnesscaravaggio.it";
                    String to = "cesare@cr-consult.eu";
                    //Istanzio la classe che rappresenta il messaggio 
                    MailMessage mMailMessage = new MailMessage();
                    //Aggiungo il Mittente 
                    mMailMessage.From = new MailAddress(from);
                    //Aggiungo il destinatario 
                    mMailMessage.To.Add(new MailAddress(to));
                    mMailMessage.To.Add(new MailAddress("palestra@puntofitnesscaravaggio.it"));
                    //L'oggetto 
                    mMailMessage.Subject = "Prima prova da sito web";
                    //Il corpo 
                    mMailMessage.Body = "Richiesta di informazioni per la prima prova, tramite il sito www.puntofitnesscaravaggio.it<br/><br/><strong>Messaggio inviato da:</strong> " + txtNome.Text + " " + txtCognome.Text + "<br/><strong>Indirizzo:</strong> " + txtIndirizzo.Text + " (" + txtCitta.Text + ")<br/><strong>Mail:</strong> " + txtMail.Text + "<br/><strong>Tel:</strong> " + txtTelefono.Text + "<br/><br/><strong>Testo del messaggio:</strong> <br/>" + txtMessaggio.Text;
                    //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
                    mMailMessage.IsBodyHtml = true;
                    //Setto la priorità 
                    mMailMessage.Priority = MailPriority.Normal;
                    //configurazione nel web.config 
                    SmtpClient mSmtpClient = new SmtpClient();
                    //Invio il messaggio 
                    mSmtpClient.Send(mMailMessage);
                    Response.Redirect("FormContattiResponse.aspx");
                }
                if (result == RecaptchaVerificationResult.IncorrectCaptchaSolution)
                {
                    lblMessage.Text = "reCaptcha inserito in modo scorretto";
                }
                else
                {
                    lblMessage.Text = "C'è stato un problema, riprova.";
                }


            }
            
        }
    }
}