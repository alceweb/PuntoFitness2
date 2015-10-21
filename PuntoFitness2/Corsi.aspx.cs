using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using PuntoFitness2.Models;
using System.Net.Mail;
using Microsoft.AspNet.Identity;

namespace PuntoFitness2
{
    public partial class Corsi : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        //Binding al model per generare la lista oggetti per attivita
        // ESMPIO: <asp:ListView SelectMethod="GetDataA">
        public IQueryable<PuntoFitness2.Models.attivita> GetDataA()
        {
            return _db.attivitas.Where(a => a.Attivo == true).OrderBy(n=> n.Nome);
        }
        public IQueryable<PuntoFitness2.Models.ApplicationUser> GetDataU()
        {
            return _db.Users;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Label lblNomeI = ListView3.Items[ListView3.SelectedIndex].FindControl("lblNomeI") as Label;
            TextBox txtMailI = ListView3.Items[ListView3.SelectedIndex].FindControl("txtMailI") as TextBox;
            if (_db.Users.Where(em=>em.Email == txtMailI.Text).Count() > 0)
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
                    //mMailMessage.To.Add(new MailAddress("palestra@puntofitnesscaravaggio.it"));
                    //L'oggetto 
                    mMailMessage.Subject = "Richiesta iscrizione corso";
                    //Il corpo 
                    mMailMessage.Body = "www.puntofitnesscaravaggio.it <strong> <br/>" + DateTime.Now.ToLongDateString() + "</strong><h2>" + txtMailI.Text + "</h2><h3>Ha fatto " + lblNomeI.Text + "</h3>";
                    //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
                    mMailMessage.IsBodyHtml = true;
                    //Setto la priorità 
                    mMailMessage.Priority = MailPriority.Normal;
                    //configurazione nel web.config 
                    SmtpClient mSmtpClient = new SmtpClient();
                    //Invio il messaggio 
                    mSmtpClient.Send(mMailMessage);
                    Response.Redirect("FormIscrizioneCorsoResponse.aspx");

                }
            Response.Redirect("NotLogged.aspx");

        }

    }
}