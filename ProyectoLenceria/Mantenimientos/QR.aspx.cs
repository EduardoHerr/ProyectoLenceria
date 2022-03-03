using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Drawing;
using MessagingToolkit.QRCode.Codec;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Net.Mime;

namespace ProyectoLenceria.Mantenimientos
{
    public partial class QR : System.Web.UI.Page
    {
        static byte[] imagenbytes;
        List<string> list = new List<string>();
        MailMessage m = new MailMessage();
        SmtpClient smtp = new SmtpClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargaQR();
            }
        }

        void cargaQR()
        {
            QRCodeEncoder enc = new QRCodeEncoder();
            Bitmap img = enc.Encode("https://www.youtube.com/watch?v=hOXrGqq07_U");
            System.Drawing.Image qr = (System.Drawing.Image)img;

            using (MemoryStream ms = new MemoryStream())
            {
                qr.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                imagenbytes = ms.ToArray();

                imagen2.Src = "data:image/gif;base64," + Convert.ToBase64String(imagenbytes);
                imagen2.Width = 200;
                imagen2.Height = 200;
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=LenceryDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM tblCliente ";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);


            if (ds.Tables[0].Rows.Count>0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    list.Add(Convert.ToString(ds.Tables[0].Rows[i]["cliCorreo"]));

                }
            }
            con.Close();

            foreach(var dato in list)
            {

                string from = "diabulusinmusic4446@gmail.com";
                string contra = "2806eduardo";
                string to = dato;
                if (enviarCorreo(from,contra,to))
                {
                    lblMensaje.ForeColor = Color.Green;
                    lblMensaje.Text = "SPAM realizado";
                }
                else
                {
                    lblMensaje.ForeColor = Color.Red;
                    lblMensaje.Text = "ERROR";
                }

            }
        }



        public bool enviarCorreo(string from, string contra, string to)
        {

            try
            {
                m.From = new MailAddress(from, "OnixClothing", System.Text.Encoding.UTF8);
                m.To.Add(new MailAddress(to));
                m.IsBodyHtml = true;
                //Imagen
                string html = "<h2>Puedes visitarnos escaneando el siquiente codigo QR:</h2>";
                //"<img scr='cid:imagen' width='207' height='207' alt='Onixclothing' />";

                AlternateView htmlView = AlternateView.CreateAlternateViewFromString(html + "<br/><img scr=cid:imagen>", null, "text/html");

                LinkedResource img = new LinkedResource(@"C:\Users\Barbatoz\source\repos\EduardoHerr\ProyectoLenceria\ProyectoLenceria\Mantenimientos\images\qr.jpg", MediaTypeNames.Image.Jpeg);
                img.ContentId = "imagen";

                htmlView.LinkedResources.Add(img);

                m.AlternateViews.Add(htmlView);
                m.Body = img.ContentId;



                m.Subject = "The OnixClothing";
                smtp.Host = "smtp.gmail.com";

                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential(from, contra);
                smtp.EnableSsl = true;
                smtp.Send(m);


                return true;

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.StackTrace);
                return false;

            }

        }
    }
}