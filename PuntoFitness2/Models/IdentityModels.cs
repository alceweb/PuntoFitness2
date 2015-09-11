using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System.ComponentModel.DataAnnotations;
using PuntoFitness2.Models;


namespace PuntoFitness2.Models
{
    // You can add User data for the user by adding more properties to your User class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public DateTime? DataIscrizione { get; set; }
        public String Nome { get; set; }
        public String Cognome{ get; set; }
        public ClaimsIdentity GenerateUserIdentity(ApplicationUserManager manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = manager.CreateIdentity(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }

        public Task<ClaimsIdentity> GenerateUserIdentityAsync(ApplicationUserManager manager)
        {
            return Task.FromResult(GenerateUserIdentity(manager));
        }
    }
    public class attivita
    {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descrizione { get; set; }
        public bool Attivo { get; set; }
    }
    public class promozioni
    {
        [Key]
        public int Id { get; set; }
        public DateTime DataInizio { get; set; }
        public DateTime DataFine { get; set; }
        public string Titolo { get; set; }
        public string Descrizione { get; set; }
        public bool Riservata { get; set; }
    }
    public class servizi
    {
        [Key]
        public int Id { get; set; }
        public string Titolo { get; set; }
        public string Descrizione { get; set; }
        public bool Attivo { get; set; }
        public bool Riservata { get; set; }
    }
    public class slide
    {
        [Key]
        public int Id { get; set; }
        public string Titolo { get; set; }
        public string Didascalia { get; set; }
        public bool Attivo { get; set; }
        public string Classe { get; set; }
        public string Classe1 { get; set; }
    }
    public class documenti
    {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descrizione { get; set; }
    }
    public class pagine
    {
        [Key]
        public int Id { get; set;}
        public string titolo { get; set; }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
         public System.Data.Entity.DbSet<PuntoFitness2.Models.attivita> attivitas {get;set;}
         public System.Data.Entity.DbSet<PuntoFitness2.Models.servizi> servizis { get; set; }
         public System.Data.Entity.DbSet<PuntoFitness2.Models.promozioni> promozionis { get; set; }
         public System.Data.Entity.DbSet<PuntoFitness2.Models.slide> slides { get; set; }
         public System.Data.Entity.DbSet<PuntoFitness2.Models.documenti> documentis { get; set; }
        public System.Data.Entity.DbSet<PuntoFitness2.Models.pagine> pagines { get; set; }
    }

}

#region Helpers
namespace PuntoFitness2
{
    public static class IdentityHelper
    {
        // Used for XSRF when linking external logins
        public const string XsrfKey = "XsrfId";

        public const string ProviderNameKey = "providerName";
        public static string GetProviderNameFromRequest(HttpRequest request)
        {
            return request.QueryString[ProviderNameKey];
        }

        public const string CodeKey = "code";
        public static string GetCodeFromRequest(HttpRequest request)
        {
            return request.QueryString[CodeKey];
        }

        public const string UserIdKey = "userId";
        public static string GetUserIdFromRequest(HttpRequest request)
        {
            return HttpUtility.UrlDecode(request.QueryString[UserIdKey]);
        }

        public static string GetResetPasswordRedirectUrl(string code, HttpRequest request)
        {
            var absoluteUri = "/Account/ResetPassword?" + CodeKey + "=" + HttpUtility.UrlEncode(code);
            return new Uri(request.Url, absoluteUri).AbsoluteUri.ToString();
        }

        public static string GetUserConfirmationRedirectUrl(string code, string userId, HttpRequest request)
        {
            var absoluteUri = "/Account/Confirm?" + CodeKey + "=" + HttpUtility.UrlEncode(code) + "&" + UserIdKey + "=" + HttpUtility.UrlEncode(userId);
            return new Uri(request.Url, absoluteUri).AbsoluteUri.ToString();
        }

        private static bool IsLocalUrl(string url)
        {
            return !string.IsNullOrEmpty(url) && ((url[0] == '/' && (url.Length == 1 || (url[1] != '/' && url[1] != '\\'))) || (url.Length > 1 && url[0] == '~' && url[1] == '/'));
        }

        public static void RedirectToReturnUrl(string returnUrl, HttpResponse response)
        {
            if (!String.IsNullOrEmpty(returnUrl) && IsLocalUrl(returnUrl))
            {
                response.Redirect(returnUrl);
            }
            else
            {
                response.Redirect("~/");
            }
        }
    }
}
#endregion
