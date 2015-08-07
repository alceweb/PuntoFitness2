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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Tutte le tue schede";
            if1.Src = "Documenti/SchedaStorico.pdf";
            Button1.Visible = false;
            Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "La tua scheda";
            if1.Src = "Documenti/Scheda.pdf";
            Button2.Visible = false;
            Button1.Visible = true;
        }
    }
}