using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Microsoft.AspNet.Identity;


namespace PuntoFitness2.Riservata
{
    public partial class GestioneDocumenti : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        //Binding al model per generare la lista oggetti per attivita
        // ESMPIO: <asp:ListView SelectMethod="GetDataA">
        public IOrderedQueryable<PuntoFitness2.Models.ApplicationUser> OrderBy< IQueryable<PuntoFitness2.Models.ApplicationUser> GetDataU()
        {
            return _db.Users;
        }

    }
}