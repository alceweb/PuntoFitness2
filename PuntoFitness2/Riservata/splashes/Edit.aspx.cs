using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;

namespace PuntoFitness2.Riservata.splashes
{
    public partial class Edit : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // This is the Update methd to update the selected attivita item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int Id)
        {
            using (_db)
            {
                var item = _db.splashs.Find(Id);

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
                    FileUpload fu1 = fw1.FindControl("fu1") as FileUpload;
                    string saveDir = Server.MapPath("~/Images/");
                    string nomeFile = "c" + Id.ToString();
                    if (fu1.HasFile)
                    {
                        //Recupero l'estensione del file
                        string Estensione = System.IO.Path.GetExtension(fu1.PostedFile.FileName).Substring(1);
                        //Imposto il nuovo path completo del file
                        string savePath = saveDir + nomeFile + "." + Estensione;
                        fu1.SaveAs(savePath);
                    }
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single splash item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public PuntoFitness2.Models.splash GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.splashs.Find(Id);
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