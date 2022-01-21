using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoLenceria.Mantenimientos
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        static string nombre;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Session["rol"]!=null)
                {
                    string rol = Session["rol"].ToString();
                    if (rol == "3")
                    {
                        pnlAdmin.Visible = false;
                        pnlUser.Visible = true;
                    }
                    else
                    {
                        pnlAdmin.Visible = true;
                        
                    }
                    if (Session["nombre"]!=null)
                    {
                        nombre = Session["nombre"].ToString();
                    }
                    else
                    {
                        Response.Redirect("~/Login.aspx");
                    }
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }

                cargarDatos();
            }

            cargaSaludo();
        }

        void cargarDatos()
        {
            ListItem i;
            i = new ListItem("Seleccione", "1");
            ddlLista.Items.Add(i);
            i = new ListItem("Cabeza","2");
            ddlLista.Items.Add(i);
            i = new ListItem("Parte Superior", "3");
            ddlLista.Items.Add(i);
            i = new ListItem("Parte Inferior", "4");
            ddlLista.Items.Add(i);
            i = new ListItem("Accesorios", "5");
            ddlLista.Items.Add(i);
            i = new ListItem("Calzado", "6");
            ddlLista.Items.Add(i);
        }

        private void Salir()
        {
            Session["rol"] = null;
            Response.Redirect("~/Login.aspx");
        }
        private void cargaSaludo()
        {
            string hora = DateTime.Now.ToString("HH");
            int time = Convert.ToInt32(hora);

            if (time > 7 && time < 12)
            {
                lblSaludo.Text = "Buen Día, "+nombre;
            }
            else if (time >= 12 && time < 18)
            {
                lblSaludo.Text = "Buenas Tardes, " + nombre;
            }
            else
            {
                lblSaludo.Text = "Buenas Noches, " + nombre;
            }
        }

        protected void lnkSalir_Click(object sender, EventArgs e)
        {
            Salir();
        }

        protected void ddlLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            int pag = ddlLista.SelectedIndex;
            if (pag!=0)
            {
                if (pag==1)
                {
                    Response.Redirect("~/Mantenimientos/MantenimientoCabeza.aspx");
                }
            }
        }
    }
}