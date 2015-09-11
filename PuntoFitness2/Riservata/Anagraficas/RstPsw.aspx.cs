using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using PuntoFitness2.Models;
using System.Threading.Tasks;
using System.Drawing;

namespace PuntoFitness2.Riservata.Anagraficas
{
    public partial class RstPsw : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text= Request.QueryString["Email"];
        }
        protected async void Button1_Click(object sender, EventArgs e)
        {
            if (txtPsw.Text.Length > 8)
            {
                UserStore<ApplicationUser> store = new UserStore<ApplicationUser>(_db);
                UserManager<ApplicationUser> UserManager = new UserManager<ApplicationUser>(store);
                String userId = Request.QueryString["Email"];
                String newPassword = txtPsw.Text;
                String hashedNewPassword = UserManager.PasswordHasher.HashPassword(newPassword);
                ApplicationUser cUser = await store.FindByEmailAsync(userId);
                await store.SetPasswordHashAsync(cUser, hashedNewPassword);
                await store.UpdateAsync(cUser);
                lblOk.ForeColor = Color.GreenYellow;
                lblOk.Text = "Password modificata con successo!";
            }
            else
            {
                lblOk.ForeColor = Color.Red;
                lblOk.Text = "Scrivi una password valida! Almeno 8 carattteri, 1 maiuscola e un carattere non alfanumerico!";
            }
        }

    }
}