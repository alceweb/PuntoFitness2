using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

namespace PuntoFitness2.Riservata.Galleria
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (lb2.SelectedIndex == -1)
            {
                string cartella = "~/PhotoGallery/images/";
                string[] jpg = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.jpg");
                lb2.DataSource = jpg;
                lb2.DataBind();
            }
        }
        protected void btnDelPdf_Click(object sender, EventArgs e)
        {
            if (lb2.SelectedValue != "")
            {
                System.IO.File.Delete(lb2.SelectedValue);
                lblDeleteOk.ForeColor = Color.Green;
                lblDeleteOk.Text = "Il file <strong>" + lb2.SelectedValue + "</strong> è stata eliminato!!!";
            }
            else
            {
                lblDeleteOk.ForeColor = Color.Red;
                lblDeleteOk.Text = "Non hai selezionato nessun file.<strong> NESSUN FILE CANCELLATO!!!</strong>";
            }
        }
        protected void btnAnnulla_Click(object sender, EventArgs e)
        {
            lblDeleteOk.Text = "Seleziona un file dalla per cancellarlo";
            lb2.SelectedIndex = -1;
            imgDel.ImageUrl = "";
        }

        protected void lb2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string fileName = lb2.SelectedValue.ToString();
            string path = "~/PhotoGallery/images/";
            string result;
            result = Path.GetFileName(fileName);
            imgDel.ImageUrl = path + result;
        }

    }
}