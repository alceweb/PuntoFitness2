using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

namespace PuntoFitness2.Riservata.Galleria
{
    public partial class Default : System.Web.UI.Page
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
            lista.DataSource = files;
            lista.DataBind();
            }
        }
        protected void UploadFile(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/PhotoGallery/images/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                Label1.Text = "Devi selezionare un file!!!";
            }
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
            string cartella = "~/PhotoGallery/images/";
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(cartella + "demo3.jpg");
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}