using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;

namespace PuntoFitness2.Registrati
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string utente = HttpContext.Current.User.Identity.Name.ToString();
            if1.Src = "~/Registrati/Documenti/" + utente + "_scheda.pdf";
            if2.Src = "~/Registrati/Documenti/" + utente + "_storico.pdf";
        }

    }
}