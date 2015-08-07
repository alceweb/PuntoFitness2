using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoFitness2.Registrati
{
    public partial class PromoReg : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public IQueryable<PuntoFitness2.Models.promozioni> GetDataR()
        {
            return _db.promozionis.Where(a => a.Riservata == true && a.DataInizio <= DateTime.Today && a.DataFine >= DateTime.Today);
        }
    }
}