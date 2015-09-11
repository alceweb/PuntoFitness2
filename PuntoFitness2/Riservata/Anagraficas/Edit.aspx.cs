using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;

namespace PuntoFitness2.Riservata.Anagraficas
{
    public partial class Edit : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // This is the Update methd to update the selected user item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(string Id)
        {
            using (_db)
            {
                var item = _db.Users.Find(Id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", Id));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("/Riservata/Anagraficas/Anagrafica");
                }
            }
        }
        // This is the Select method to selects a single user item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public IQueryable<PuntoFitness2.Models.ApplicationUser> GetDataU()
        {
            string utente = Request.QueryString["Email"];
            return _db.Users.Where(u => u.Email == utente);
        }


        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("/Riservata/Anagraficas/Anagrafica");
            }
        }

    }
}