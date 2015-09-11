using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PuntoFitness2.Riservata
{
    public partial class Anagrafica : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();
        //Binding al model per generare la lista utenti
        // ESEMPIO: <asp:ListView SelectMethod="GetDataA">
        public IQueryable<PuntoFitness2.Models.ApplicationUser> GetDataU()
        {
            return _db.Users.OrderBy(u => u.Email);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}