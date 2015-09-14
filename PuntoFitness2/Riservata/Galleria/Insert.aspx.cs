using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace PuntoFitness2.Riservata.Galleria
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/PhotoGallery/images/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath)));
                }
                ListView1.DataSource = files;
                ListView1.DataBind();
            }

        }

        protected void UploadFile(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/PhotoGallery/images/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            string saveDir = Server.MapPath("~/PhotoGallery/images/");
            string nomeFile = DateTime.Now.ToString("ddMMyyy-HHmmss");
            if (fu1.HasFile)
            {
                //Recupero l'estensione del file
                string Estensione = System.IO.Path.GetExtension(fu1.PostedFile.FileName).Substring(1);
                //Imposto il nuovo path completo del file
                string savePath = saveDir + nomeFile + "." + Estensione;
                fu1.SaveAs(savePath);
                // Avvisa dell'avvenuto upload.
            }
            else
            {
                // Avvisa del mancato upload.
            }
        }
    }
}