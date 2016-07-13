using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoFitness2.Riservata.splashes
{
    public partial class Default : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Model binding method to get List of splash entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<PuntoFitness2.Models.splash> GetData()
        {
            int cnt = _db.splashs.Count();
            lblCount.Text = cnt.ToString();
            return _db.splashs;
        }
    }
}