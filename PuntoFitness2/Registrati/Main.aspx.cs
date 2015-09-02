using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System.IO;
namespace PuntoFitness2.Registrati
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string utente = HttpContext.Current.User.Identity.Name.ToString();
            string file = "~/Registrati/Documenti/" + utente + "_scheda.pdf";
            string file1 = "~/Registrati/Documenti/" + utente + "_storico.pdf";
            if (File.Exists(Server.MapPath((file))))
            {
                if1.Src = "~/Registrati/Documenti/" + utente + "_scheda.pdf";
                hl1.NavigateUrl = "~/Registrati/Documenti/" + utente + "_scheda.pdf";
            }
            else
            {
                if1.Src = "~/Registrati/Documenti/scheda.pdf";
            }
            if (File.Exists(Server.MapPath(file1)))
            {
                if2.Src = "~/Registrati/Documenti/" + utente + "_storico.pdf";
                hl2.NavigateUrl= "~/Registrati/Documenti/" + utente + "_storico.pdf";
            }
            else
            {
                if2.Src = "~/Registrati/Documenti/scheda.pdf";
            }
        }

    }
}