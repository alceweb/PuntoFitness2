using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using PuntoFitness2.Models;

namespace PuntoFitness2.Riservata.servizis
{
    public partial class Delete : System.Web.UI.Page
    {
		protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected servizi item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int IdServizi)
        {
            using (_db)
            {
                var item = _db.servizis.Find(IdServizi);

                if (item != null)
                {
                    _db.servizis.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single servizi item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public PuntoFitness2.Models.servizi GetItem([FriendlyUrlSegmentsAttribute(0)]int? IdServizi)
        {
            if (IdServizi == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.servizis.Where(m => m.IdServizi == IdServizi).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

