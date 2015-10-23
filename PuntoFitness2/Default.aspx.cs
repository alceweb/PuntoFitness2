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
    public partial class _Default : Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public IQueryable<PuntoFitness2.Models.promozioni> GetDataP()
        {
            return _db.promozionis.Where(a => a.Riservata == false && a.DataInizio <= DateTime.Today && a.DataFine >= DateTime.Today);
        }
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if (String.IsNullOrEmpty(Recaptcha1.Response))
        //    {
               
        //        lblMessage.Text = "Inserire codice reCaptcha in basso";
        //        ClientScript.RegisterStartupScript(GetType(), "modalOpen", "$('#myModal').modal('show');", true);
        //    }
        //    else
        //    {
        //        RecaptchaVerificationResult result = Recaptcha1.Verify();

        //        if (result == RecaptchaVerificationResult.Success)
        //        {
        //            ////Preparo i campi della mail
        //            String from = "webservice1@puntofitnesscaravaggio.it";
        //            String to = "cesare@cr-consult.eu";
        //            //Istanzio la classe che rappresenta il messaggio 
        //            MailMessage mMailMessage = new MailMessage();
        //            //Aggiungo il Mittente 
        //            mMailMessage.From = new MailAddress(from);
        //            //Aggiungo il destinatario 
        //            mMailMessage.To.Add(new MailAddress(to));
        //            mMailMessage.To.Add(new MailAddress("palestra@puntofitnesscaravaggio.it"));
        //            //L'oggetto 
        //            mMailMessage.Subject = "Richiesta informazioni da sito web";
        //            //Il corpo 
        //            mMailMessage.Body = "Richiesta di informazioni ricevuta tramite il sito www.puntofitnesscaravaggio.it<br/><br/><strong>Messaggio inviato da:</strong> " + txtNome.Text + " " + txtCognome.Text + "<br/><strong>Indirizzo:</strong> " + txtIndirizzo.Text + " ("+txtCitta.Text+")<br/><strong>Mail:</strong> " + txtMail.Text + "<br/><strong>Tel:</strong> " + txtTelefono.Text + "<br/><br/><strong>Testo del messaggio:</strong> <br/>" + txtMessaggio.Text;
        //            //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
        //            mMailMessage.IsBodyHtml = true;
        //            //Setto la priorità 
        //            mMailMessage.Priority = MailPriority.Normal;
        //            //configurazione nel web.config 
        //            SmtpClient mSmtpClient = new SmtpClient();
        //            //Invio il messaggio 
        //            mSmtpClient.Send(mMailMessage);
        //            Response.Redirect("FormContattiResponse.aspx");
        //        }
        //        if (result == RecaptchaVerificationResult.IncorrectCaptchaSolution)
        //        {
        //            lblMessage.Text = "reCaptcha inserito in modo scorretto";
        //            ClientScript.RegisterStartupScript(GetType(), "modalOpen", "$('#myModal').modal('show');", true);

                    
        //        }
        //        else
        //        {
        //            lblMessage.Text = "C'è stato un problema, riprova.";
        //            ClientScript.RegisterStartupScript(GetType(), "modalOpen", "$('#myModal').modal('show');", true);

        //        }
        //    }
        //}
        public IQueryable<PuntoFitness2.Models.slide> GetDataSl() 
        {
            return _db.slides;
        }
   }
}