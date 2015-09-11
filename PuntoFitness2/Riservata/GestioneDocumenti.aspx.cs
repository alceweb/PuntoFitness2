using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Microsoft.AspNet.Identity;
using System.IO;


namespace PuntoFitness2.Riservata
{
    public partial class GestioneDocumenti : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            string utente = DropDownList1.SelectedValue.ToString();
            Label1.Text = utente;
            string file = "~/Registrati/Documenti/" + utente + "_scheda.pdf";
            string file1 = "~/Registrati/Documenti/" + utente + "_storico.pdf";
            if (File.Exists(Server.MapPath((file))))
            {
                pnl1.Visible = false;
                pnl2.Visible = true;
                if1.Src = file;
            }
            else
            {
                pnl1.Visible = true;
                pnl2.Visible = false;
                if1.Src = "~/Registrati/Documenti/scheda.pdf";
            }
            if (File.Exists(Server.MapPath((file1))))
            {
                if2.Src = file1;
            }
            else
            {
                if2.Src = "~/Registrati/Documenti/scheda.pdf";
            }
        }
        //Binding al model per generare la lista utenti
        // ESEMPIO: <asp:ListView SelectMethod="GetDataA">
        public IQueryable<PuntoFitness2.Models.ApplicationUser> GetDataU()
        {
            return _db.Users.OrderBy(u=>u.Email);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pnl1.Visible = true;
            pnl2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            pnl1.Visible = true;
            pnl2.Visible = false;
        }

        protected void btnDwl1_Click(object sender, EventArgs e)
        {
            string utente = DropDownList1.SelectedValue.ToString();
            string saveDir = Server.MapPath("~/Registrati/Documenti/");
            string nomeFile = utente + "_scheda.pdf";
            if (fu1.HasFile)
            {
                fu1.SaveAs(saveDir + nomeFile);
                lbl1.Text = "File caricato correttamente";
            }
            else
            {
                lbl1.Text = "Devi scegliere un file da assegnare";
            }
        }

        protected void btnDwl2_Click(object sender, EventArgs e)
        {
            string utente = DropDownList1.SelectedValue.ToString();
            string saveDir = Server.MapPath("~/Registrati/Documenti/");
            string nomeFile = utente + "_storico.pdf";
            if (fu2.HasFile)
            {
                fu2.SaveAs(saveDir + nomeFile);
                lbl2.Text = "File caricato correttamente";
            }
            else
            {
                lbl2.Text = "Devi scegliere un file da assegnare";
            }
        }
    }
}