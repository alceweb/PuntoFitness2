using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace PuntoFitness2.PhotoGallery
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cartella = "~/PhotoGallery/images/";
            string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.jpg");
            lista.DataSource = immagini;
            lista.DataBind();

        }
    }
}