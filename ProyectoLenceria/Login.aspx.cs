using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Datos;
using Capa_Negocio;

namespace ProyectoLenceria
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void ingresarCliente()
        {
            if (string.IsNullOrEmpty(txtlog.Text))
            {
                lblMensaje.ForeColor = Color.Red;
                lblMensaje.Text = "Ingrese el Usuario";
            }
            else if (string.IsNullOrEmpty(txtPassword.Text))
            {
                lblMensaje.ForeColor= Color.Red;
                lblMensaje.Text = "Ingrese la Clave";
            }
            else
            {
                bool existeusu = logCliente.ciLog(txtlog.Text);
                bool exista = logCliente.autentificar(txtlog.Text, txtPassword.Text);
                if (existeusu)
                {
                    if (exista)
                    {
                        Session["rol"] = "3";
                        Session["nombre"] = txtlog.Text;
                        Response.Redirect("~/Mantenimientos/Inicio.aspx");
                    }
                    else
                    {
                        lblMensaje.ForeColor = Color.Red;
                        lblMensaje.Text = "Datos Incorrectos..";
                    }

                }
                else
                {
                    lblMensaje.ForeColor = Color.Red;
                    lblMensaje.Text = "Usuario No existente..";

                    txtlog.Text = "";
                    txtPassword.Text = "";
                }

            }
        }

        protected void btnIngreso_Click(object sender, EventArgs e)
        {
            ingresarCliente();
        }

        protected void btnColaborador_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtlog.Text))
            {
                lblMensaje.ForeColor = Color.Red;
                lblMensaje.Text = "Ingrese el Usuario";
            }
            else if (string.IsNullOrEmpty(txtPassword.Text))
            {
                lblMensaje.ForeColor = Color.Red;
                lblMensaje.Text = "Ingrese la Clave";
            }
            else
            {
                bool existeusu = logUsuario.usLog(txtlog.Text);
                bool exista = logUsuario.autentificarLog(txtlog.Text, txtPassword.Text);
                if (existeusu)
                {
                    if (exista)
                    {
                        tblUsuario us = new tblUsuario();
                        us = logUsuario.autentificarxLoginlog(txtlog.Text, txtPassword.Text);

                        int tuser = (int)us.tusuId;
                        if (tuser==1)
                        {
                            Session["rol"] = "1";
                            Session["nombre"] = txtlog.Text;
                            Response.Redirect("~/Mantenimientos/Inicio.aspx");
                        }

                        if (tuser == 2)
                        {
                            Session["rol"] = "2";
                            Session["nombre"] = txtlog.Text;
                            Response.Redirect("~/Mantenimientos/Inicio.aspx");
                        }
                    }
                    else
                    {
                        lblMensaje.ForeColor = Color.Red;
                        lblMensaje.Text = "Datos Incorrectos..";
                    }

                }
                else
                {
                    lblMensaje.ForeColor = Color.Red;
                    lblMensaje.Text = "Usuario No existente..";

                    txtlog.Text = "";
                    txtPassword.Text = "";
                }

            }
        }
    }
}