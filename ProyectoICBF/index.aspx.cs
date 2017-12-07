using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            CLSPersona objPersona = new CLSPersona();

            var persona = objPersona.login(Login1.UserName, Login1.Password);

            if (persona.nombres != null)
            {
                Session["id"] = persona.idUsuario;
                Session["nombre"] = persona.nombres;
                if (persona.tUsuario == 1)
                {
                    Response.Redirect("usuarios.aspx"); 
                }
                else if (persona.tUsuario == 2)
                {
                    Response.Redirect("Asistencia.aspx");
                }
                else if (persona.tUsuario == 3)
                {
                    Response.Redirect("avanceAcademicoAcudiente.aspx");
                }
            }
        }
    }
}