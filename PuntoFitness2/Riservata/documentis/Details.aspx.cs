using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using PuntoFitness2.Models;
using System.IO;
namespace PuntoFitness2.Riservata.documentis
{
    public partial class Details : System.Web.UI.Page
    {
		protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single documenti item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public PuntoFitness2.Models.documenti GetItem([FriendlyUrlSegmentsAttribute(0)]int? Id)
        {
                HtmlControl iframe = FormView1.FindControl("if1") as HtmlControl;
            if (Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.documentis.Where(m => m.Id == Id).FirstOrDefault();

            }
            if (File.Exists("~/Documenti/" + Id + ".pdf"))
            {
                iframe.Attributes["src"] = "~/Documenti/" + Id + ".pdf";

            }
            else
            {
                iframe.Attributes["src"] = "~/Documenti/nodoc.pdf";
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

