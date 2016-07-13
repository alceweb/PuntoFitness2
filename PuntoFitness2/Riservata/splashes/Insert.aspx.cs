using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoFitness2.Riservata.splashes
{
    public partial class Insert : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // This is the Insert method to insert the entered splash item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new PuntoFitness2.Models.splash();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.splashs.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}