﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using PuntoFitness2.Models;
namespace PuntoFitness2.Riservata.documentis
{
    public partial class Edit : System.Web.UI.Page
    {
		protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected documenti item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  Id)
        {
            using (_db)
            {
                var item = _db.documentis.Find(Id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", Id));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    FileUpload fu1 = fv1.FindControl("fu1") as FileUpload;
                    string saveDir = Server.MapPath("~/Documenti/");
                    string nomeFile = Id.ToString();
                    // Save changes here
                    _db.SaveChanges();
                    string savePath = saveDir + nomeFile + ".pdf";
                    fu1.SaveAs(savePath);


                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single documenti item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public PuntoFitness2.Models.documenti GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.documentis.Find(Id);
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
