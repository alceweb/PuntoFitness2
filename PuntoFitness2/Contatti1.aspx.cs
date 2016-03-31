using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;

namespace PuntoFitness2
{
    public partial class Contatti1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("it-IT");
            DateTime dataInizio = new DateTime(1997, 9, 1);
            DateTime dataOggi = DateTime.Now;
            TimeSpan ts = dataOggi - dataInizio;
            DateTime dataFine = new DateTime(2017, 9, 2);
            TimeSpan tf = dataFine - dataOggi;
            int contoGiorni1 = tf.Days;
            int contoGiorni = ts.Days;
            Label2.Text = contoGiorni.ToString();
            Label3.Text = contoGiorni1.ToString();
        }
    }
}