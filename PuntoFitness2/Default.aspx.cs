using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoFitness2
{
    public partial class _Default : Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<PuntoFitness2.Models.promozioni> GetDataP()
        {
            return _db.promozionis;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormResponse.aspx");
        }
   }
}