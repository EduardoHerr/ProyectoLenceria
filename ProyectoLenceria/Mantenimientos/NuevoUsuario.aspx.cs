using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Negocio;
using Capa_Datos;

namespace ProyectoLenceria.Mantenimientos
{
    public partial class NuevoUsuario : System.Web.UI.Page
    {
        private tblUsuario us = new tblUsuario();
        private static connectDBDataContext db = new connectDBDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarTusu();
            }
        }
        void limpiar()
        {
            txtNombre.Text = txtApellido.Text= txtCedula.Text= txtClave.Text = txtCorreo.Text= txtDirección.Text = txtUser.Text= txtTelefono.Text;
            ddlRol.SelectedIndex = 0;
        }

        private void cargarTusu()
        {
            List<tblTipoUs> listus = new List<tblTipoUs>();
            listus = logTipoUsuario.obtenerTipUser();
            listus.Insert(0, new tblTipoUs() { tusuRol = "Seleccione" });

            ddlRol.DataSource = listus;
            ddlRol.DataTextField = "tusuRol";
            ddlRol.DataValueField = "tusuId";
            ddlRol.DataBind();
        }

        private void guardarUsuario()
        {
            try
            {
                lblMensaje.Text = "";
                us = new tblUsuario();


                us.usNombre = txtNombre.Text;
                us.usApellido = txtApellido.Text;
                us.usCedula = txtCedula.Text;
                us.usClave = txtClave.Text;
                us.usCorreo = txtCorreo.Text;
                us.usDireccion =txtDirección.Text;
                us.usLog = txtUser.Text;
                us.usTelefono = txtTelefono.Text;
                us.tusuId = Convert.ToInt32(ddlRol.SelectedValue);

                logUsuario.registrarUsuario(us);
                lblMensaje.Text = "Datos Guardados Exitosamente";

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Matenimientos/MantenimientoUsuarios.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            guardarUsuario();
        }
    }
}