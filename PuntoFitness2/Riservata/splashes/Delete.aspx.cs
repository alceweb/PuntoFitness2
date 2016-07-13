using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;

namespace PuntoFitness2.Riservata.splashes
{
    public partial class Delete : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // This is the Delete methd to delete the selected splash item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int Id)
        {
            using (_db)
            {
                var item = _db.splashs.Find(Id);

                if (item != null)
                {
                    _db.splashs.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single attivita item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public PuntoFitness2.Models.splash GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.splashs.Where(m => m.Id == Id).FirstOrDefault();
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