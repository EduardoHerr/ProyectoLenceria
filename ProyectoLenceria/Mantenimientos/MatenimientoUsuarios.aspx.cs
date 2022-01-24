using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Datos;
using Capa_Negocio;

namespace ProyectoLenceria.Mantenimientos
{
    public partial class MatenimientoUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarUsuario();
        }
        private void cargarUsuario()
        {
            List<tblUsuario> us = new List<tblUsuario>();
            us = logUsuario.obtenerUsuario();
            if (us!=null)
            {
                gvrUsuarios.DataSource = us;
                gvrUsuarios.DataBind();
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Mantenimientos/NuevoUsuario.aspx");
        }
    }
}