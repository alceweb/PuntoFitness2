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
        //Binding al model per generare la lista oggetti per attivita
        // ESMPIO: <asp:ListView SelectMethod="GetDataA">
        public IQueryable<PuntoFitness2.Models.attivita> GetDataA()
        {
            return _db.attivitas.Where(a => a.Attivo==true);
        }
        //Binding al model per generare la lista oggetti per servizi
        // ESMPIO: <asp:ListView SelectMethod="GetDataS">
        public IQueryable<PuntoFitness2.Models.servizi> GetDataS()
        {
            return _db.servizis.Where(a => a.Attivo == true);
        }
        //Binding al model per generare la lista oggetti per promozioni
        // ESMPIO: <asp:ListView SelectMethod="GetDataP">
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