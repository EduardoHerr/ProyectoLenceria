using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoLenceria.Mantenimientos
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargaHora();
        }

        private void CargaHora()
        {
            string hora = DateTime.Now.ToString("HH");
            int time = Convert.ToInt32(hora);

            if (time>7 && time<12)
            {
                lblSaludo.Text = "Buen Día";
            }
            else if (time>=12 && time<18)
            {
                lblSaludo.Text = "Buenas Tardes";
            }
            else
            {
                lblSaludo.Text = "Buenas Noches";
            }
        }
    }
}