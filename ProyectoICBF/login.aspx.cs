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
                Response.Redirect("listarAsistencia.aspx");
            }
        }
    }
}