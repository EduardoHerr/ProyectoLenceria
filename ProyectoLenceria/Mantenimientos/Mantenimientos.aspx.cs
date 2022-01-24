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
    public partial class Mantenimientos : System.Web.UI.Page
    {
        static int cat = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["cat"]!=null)
                {
                    cat = Convert.ToInt32(Session["cat"].ToString());
                    List<tblProducto> ltpro=new List<tblProducto>();
                    ltpro = logProductos.obtenerxCat(cat);

                    gvrDatos.DataSource = ltpro;
                    gvrDatos.DataBind();
                }
            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Mantenimientos/NuevoProducto.aspx");
        }

        protected void gvrDatos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName=="Editar")
            {
                Response.Redirect("~/Mantenimientos/NuevoProducto.aspx?cod=" + codigo, true);
                Context.ApplicationInstance.CompleteRequest();
            }else if (e.CommandName == "Eliminar")
            {
                tblProducto prod = new tblProducto();
                prod= logProductos.obtenerxID(codigo);
                if (prod!=null)
                {
                    logProductos.deleteProd(prod);
                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
                }
            }
        }
    }
}