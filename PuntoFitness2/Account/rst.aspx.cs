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

namespace PuntoFitness2.Account
{
    public partial class rst : System.Web.UI.Page
    {
        protected PuntoFitness2.Models.ApplicationDbContext _db = new PuntoFitness2.Models.ApplicationDbContext();
        //Binding al model per generare la lista utenti
        // ESEMPIO: <asp:ListView SelectMethod="GetDataA">
        public IQueryable<PuntoFitness2.Models.ApplicationUser> GetDataU()
        {
            return _db.Users.OrderBy(u => u.Email);
        }

        public IQueryable<PuntoFitness2.Models.ApplicationUser> GetDataU1()
        {
            var utente = ListView1.SelectedValue.ToString();
            return _db.Users.Where(u => u.Id == utente);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected async void Button1_Click(object sender, EventArgs e)
        {
            if (txtPsw.Text.Length > 8)
            {
            UserStore<ApplicationUser> store = new UserStore<ApplicationUser>(_db);
            UserManager<ApplicationUser> UserManager = new UserManager<ApplicationUser>(store);
            String userId = ddlUser.SelectedValue.ToString(); 
            String newPassword = txtPsw.Text; 
            String hashedNewPassword = UserManager.PasswordHasher.HashPassword(newPassword);
            ApplicationUser cUser = await store.FindByIdAsync(userId);
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

        protected void ddlUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblOk.Text = "";
        }

    }
}