using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace PuntoFitness2.Riservata
{
    public partial class Documenti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (fu1.HasFile)
            {
                string saveDir = Server.MapPath("~/");
                string nomeFile = "CalendarioCorsi.pdf";
                fu1.SaveAs(saveDir + nomeFile);
                lbl1.ForeColor = Color.Green;
                lbl1.Text = "File caricato correttamente";
            }
            else
            {
                lbl1.ForeColor = Color.Red;
                lbl1.Text = "Devi scegliere un file da scaricare";
            }
        }
    }
}