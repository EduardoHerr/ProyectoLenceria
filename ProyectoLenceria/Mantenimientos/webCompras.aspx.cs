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
    public partial class webCompras : System.Web.UI.Page
    {
        static private tblProducto pro = new tblProducto();
        static private tblVenta ven = new tblVenta();
        static private tblCliente cli = new tblCliente();
        static double precio = 0;
        static double c = 0;
        static int cant = 0;
        static int cliente;
        static int producto;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lnkComprar.Visible=false;
                if (Request["codi"]!=null)
                {
                    
                    int codigo = Convert.ToInt32(Request["codi"]);
                    if (codigo !=0)
                    {
                        consultaImagenes(codigo);
                        pro = logVentas.obtenerproxID(codigo);
                        if (pro!=null)
                        {
                            lblNombre.Text = pro.proArteNom.ToString();
                            lblCantidad.Text = pro.proCantidad.ToString();
                            precio =Convert.ToDouble( pro.proPrecio.ToString());
                            producto = Convert.ToInt32(pro.proId.ToString());
                            lblPrecio.Text = pro.proPrecio.ToString();
                        }
                    }
                }
                if (Session["nombre"]!=null)
                {
                    cli = logVentas.obtenerxNom(Session["nombre"].ToString());
                    if (cli!=null)
                    {
                        cliente =Convert.ToInt32(cli.cliId.ToString());

                    }

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
                    img1.ImageUrl = "data:image;base64," + Convert.ToBase64String(img);
                }

            }
            catch (Exception)
            {

                cargarImagen();
            }

            con.Close();
        }
        void cargarImagen()
        {
            img1.ImageUrl = "~/Mantenimientos/images/imagen.png";
        }

        protected void btnCalcula_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtCantidad.Text,out int num))
            {
                if (Convert.ToInt32(txtCantidad.Text) >= pro.proCantidad)
                {
                    lblMensaje.ForeColor = Color.Red;
                    lblMensaje.Text = "No disponible en stock";
                    txtCantidad.Text = "1";
                }
                else
                {
                    cant = Convert.ToInt32(txtCantidad.Text);
                    c = cant * precio;
                    lblMensaje.Text = c.ToString();
                    lnkComprar.Visible = true;
                }
            }
            else
            {
                lblMensaje.Text = "Dato ingresado no valido";
            }
            
        }

        void limpiar()
        {
            lblCantidad.Text = lblMensaje.Text = lblNombre.Text = lblPrecio.Text = txtCantidad.Text = "";
            cargarImagen();
        }
        void guardar()
        {
            try
            {
                ven = new tblVenta();

                ven.cliId = cliente;
                ven.proId = producto;
                ven.venCapital = c;
                ven.venCantidad = cant;
                ven.venFechaVen = DateTime.Now;
                logVentas.guardarVenta(ven);
                resta();
                
                limpiar();
                lblMensaje.ForeColor = Color.Green;
                lblMensaje.Text = "Compra exitosa";
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error: " + ex.Message);
            }
        }

        void resta()
        {
            
            pro = logProductos.obtenerxID(producto);
            if (pro!=null)
            {
                int rest =Convert.ToInt32(pro.proCantidad.ToString());
                int resta =  rest - cant;

                pro.proCantidad = resta;

                logProductos.edit(pro);
            }
        }
        protected void lnkComprar_Click(object sender, EventArgs e)
        {
            guardar();

        }

        
    }
}