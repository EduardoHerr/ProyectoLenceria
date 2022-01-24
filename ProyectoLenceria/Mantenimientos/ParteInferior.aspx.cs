using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoLenceria.Mantenimientos
{
    public partial class ParteInferior : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                consultarImagen();
            }
        }

        protected void consultarImagen()
        {
            SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=LenceryDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM tblProducto WHERE catId=3  ORDER BY proID ASC ";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            con.Open(); 

            DataTable ImagenDB = new DataTable();
            ImagenDB.Load(cmd.ExecuteReader());

            Repeater1.DataSource= ImagenDB;
            Repeater1.DataBind();
            con.Close();

        }

        protected void lnkComprar_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/Mantenimientos/webCompras.aspx?codi=" + e.CommandArgument);
        }
    }
}