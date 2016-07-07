using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoFitness2.Registrati
{
    public partial class DocRis : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Model binding method to get List of documenti entries
        // USAGE: <asp:ListView SelectMethod="GetDataR">
        public IQueryable<PuntoFitness2.Models.documenti> GetData()
        {
            return _db.documentis.Where(r => r.Riservata == false);
        }
        public IQueryable<PuntoFitness2.Models.documenti> GetDataR()
        {
            return _db.documentis.Where(r => r.Riservata == true);
        }
    }
}