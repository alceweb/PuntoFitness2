using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using PuntoFitness2.Models;

namespace PuntoFitness2.Riservata.slides
{
    public partial class EditImg : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // This is the Select method to selects a single slide item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public PuntoFitness2.Models.slide GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.slides.Find(Id);
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            Label Label1 = fv1.FindControl("Label1") as Label;
            FileUpload fu1 = fv1.FindControl("fu1") as FileUpload;
            string saveDir = Server.MapPath("~/Images/slideshow/");
            string nomeFile = fv1.SelectedValue.ToString();
            if (fu1.HasFile)
            {
                //Recupero l'estensione del file
                string Estensione = System.IO.Path.GetExtension(fu1.PostedFile.FileName).Substring(1);
                //Imposto il nuovo path completo del file
                string savePath = saveDir + nomeFile + "." + Estensione;
                fu1.SaveAs(savePath);
                // Avvisa dell'avvenuto upload.
                Label1.Text = "Immagine caricata corretamente.";
            }
            else
            {
                // Avvisa del mancato upload.
                Label1.Text = "Non hai scelto l'immagine per la galleria.";
            }
        }
    }
}
