using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using PuntoFitness2.Models;

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
    }
}