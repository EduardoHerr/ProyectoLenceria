using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Datos;
using Capa_Negocio;

namespace ProyectoLenceria.Mantenimientos
{
    public partial class NuevoProducto : System.Web.UI.Page
    {
        private tblProducto prodinfo = new tblProducto();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                cargarCategoria();
                cargarImagen();
                if (Request["cod"]!=null)
                {
                    btnGuardar.Visible = false;
                    btnEditar.Visible = true;
                    int codigo = Convert.ToInt32(Request["cod"]);
                    prodinfo = logProductos.obtenerxID(codigo);
                    if (prodinfo!=null)
                    {
                        txtCantidad.Text = prodinfo.proCantidad.ToString();
                        txtColor.Text  = prodinfo.proColor.ToString();
                        txtMarca.Text = prodinfo.proMarca.ToString();
                        txtNombre.Text = prodinfo.proNombre.ToString();
                        txtPrecio.Text = prodinfo.proPrecio.ToString();
                        txtTalla.Text = prodinfo.proTalla.ToString();
                        txtNombreArchivo.Text = prodinfo.proArteNom.ToString();
                        ddlCategoria.SelectedValue = prodinfo.catId.ToString();

                        consultaImagenes(codigo);
                    }
                }
                else
                {
                    btnEditar.Visible = false;
                    btnGuardar.Visible = true;
                }
            }
        }

        void consultaImagenes(int cod)
        {
            SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=LenceryDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT proArte FROM tblProducto Where proId=" + cod;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            try
            {
                byte[] img = (byte[])cmd.ExecuteScalar();

                if (img != null && img.Length > 0)
                {
                    Image1.ImageUrl = "data:image;base64," + Convert.ToBase64String(img);
                }

            }
            catch (Exception)
            {

                cargarImagen();
            }

            con.Close();
        }

        private void cargarCategoria()
        {
            List<tblCategoria> listcat = new List<tblCategoria>();
            listcat = logCategoria.obtenerCat();
            listcat.Insert(0,new tblCategoria(){ catNombreCategoria="Seleccione"});
            ddlCategoria.DataSource = listcat;
            ddlCategoria.DataTextField = "catNombreCategoria";
            ddlCategoria.DataValueField = "catId";
            ddlCategoria.DataBind();
        }


        void guardarEditar(int key)
        {
            if (key==0)
            {
                guardar();
            }
            else
            {
                prodinfo = logProductos.obtenerxID(key);
                if (prodinfo!=null)
                {
                    modify(prodinfo);
                }
            }
        }
        private void modify(tblProducto prod)
        {
            try
            {
                lblMensaje.Text = "";
                prod.proArteNom = txtNombreArchivo.Text;
                prod.proNombre = txtNombre.Text;
                prod.proMarca = txtMarca.Text;
                prod.proTalla = txtTalla.Text;
                prod.proColor = txtColor.Text;
                prod.proPrecio = Convert.ToDouble(txtPrecio.Text);
                prod.proCantidad = Convert.ToInt32(txtCantidad.Text);
                prod.catId =Convert.ToInt32(ddlCategoria.SelectedValue);

                if (flu1.HasFile)
                {
                    prod.proTituloArte = flu1.FileName;
                    #region CargarImagen
                    //Funcion para devolver el tamaño de la imagen
                    int tamanio = flu1.PostedFile.ContentLength;
                    //array de bytes
                    byte[] imageNew = new byte[tamanio];
                    //Leer la imagen original
                    flu1.PostedFile.InputStream.Read(imageNew, 0, tamanio);

                    Bitmap imageOriginalBinaria = new Bitmap(flu1.PostedFile.InputStream);
                    #endregion

                    #region imgThumbnail
                    System.Drawing.Image imgt;
                    int tamaniot = 200;
                    imgt = Redimencion(imageOriginalBinaria, tamaniot);
                    byte[] bImageOriginal = new byte[tamaniot];
                    ImageConverter Convertidor = new ImageConverter();
                    bImageOriginal = (byte[])Convertidor.ConvertTo(imgt, typeof(byte[]));
                    #endregion

                    prod.proArte = bImageOriginal;
                                    
                    
                    string imagendat = "data:image/jpeg;base64," + Convert.ToBase64String(bImageOriginal);
                    Image1.ImageUrl = imagendat;
                }
                else
                {
                    lblMensaje.ForeColor = Color.Red;
                    lblMensaje.Text = "No se ha cargado Imagen";
                }




                logProductos.edit(prod);
                lblMensaje.Text = "Datos Actualizados Exitosamente";


            }
            catch (Exception ex)
            {

                throw new ArgumentException("No se modifico: " + ex.Message);
            }
        }

        void cargarImagen()
        {
            Image1.ImageUrl = "~/Mantenimientos/images/imagen.png";
        }

        void guardar()
        {
            try
            {
                lblMensaje.Text = "";

                prodinfo = new tblProducto();

                prodinfo.proArteNom = txtNombreArchivo.Text;
                prodinfo.proNombre = txtNombre.Text;
                prodinfo.proMarca = txtMarca.Text;
                prodinfo.proTalla = txtTalla.Text;
                prodinfo.proColor = txtColor.Text;
                prodinfo.proPrecio = Convert.ToDouble(txtPrecio.Text);
                prodinfo.proCantidad =Convert.ToInt32( txtCantidad.Text);
                prodinfo.catId = ddlCategoria.SelectedIndex;
                if (flu1.HasFile)
                {
                    prodinfo.proTituloArte = flu1.FileName;
                    #region CargarImagen
                    //Funcion para devolver el tamaño de la imagen
                    int tamanio = flu1.PostedFile.ContentLength;
                    //array de bytes
                    byte[] imageNew = new byte[tamanio];
                    //Leer la imagen original
                    flu1.PostedFile.InputStream.Read(imageNew, 0, tamanio);

                    Bitmap imageOriginalBinaria = new Bitmap(flu1.PostedFile.InputStream);
                    #endregion

                    #region imgThumbnail
                    System.Drawing.Image imgt;
                    int tamaniot = 200;
                    imgt = Redimencion(imageOriginalBinaria, tamaniot);
                    byte[] bImageOriginal = new byte[tamaniot];
                    ImageConverter Convertidor = new ImageConverter();
                    bImageOriginal = (byte[])Convertidor.ConvertTo(imgt, typeof(byte[]));
                    #endregion

                    prodinfo.proArte = bImageOriginal;

                    logProductos.guardarProd(prodinfo);
                    lblMensaje.Text = "Datos Guardados ";

                    string imagendat = "data:image/jpeg;base64," + Convert.ToBase64String(bImageOriginal);
                    Image1.ImageUrl = imagendat;
                }
                else
                {
                    lblMensaje.ForeColor = Color.Red;
                    lblMensaje.Text = "No se ha cargado Imagen";
                }



            }
            catch (Exception ex)
            {

                throw new ArgumentException("No se Modifico: " + ex.Message);
            }
        }
        public System.Drawing.Image Redimencion(System.Drawing.Image imageOriginal, int Alto)
        {
            var Radio = (double)Alto / imageOriginal.Height;
            var nancho = (int)(imageOriginal.Width * Radio);
            var nalto = (int)(imageOriginal.Height * Radio);
            var niredi = new Bitmap(nancho, nalto);
            var g = Graphics.FromImage(niredi);
            g.DrawImage(imageOriginal, 0, 0, nancho, nalto);


            return niredi;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            guardarEditar(Convert.ToInt32(Request["cod"]));
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/Mantenimientos/Inicio.aspx");
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            guardarEditar(Convert.ToInt32(Request["cod"]));
        }
    }
}