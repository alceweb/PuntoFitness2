using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;

namespace PuntoFitness2.Registrati
{
    public partial class ContentDoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var utente = HttpContext.Current.User.Identity.GetUserId();
            string cartella = "~/Registrati/Documenti/";
            string[] pdf = System.IO.Directory.GetFiles(Server.MapPath(cartella), utente + "_*.pdf");
            ListView1.DataSource = pdf;
            ListView1.DataBind();
        }
    }
}