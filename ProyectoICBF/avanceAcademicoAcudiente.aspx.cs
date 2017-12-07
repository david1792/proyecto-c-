using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class avanceAcademicoAcudiente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ControladorAvanceAcademico controladorAvanceAcademico = new ControladorAvanceAcademico();
            gvAvanceAcademico.DataSourceID = null;
            gvAvanceAcademico.DataSource = controladorAvanceAcademico.consultarAvanceAcademicoAcudiente(int.Parse(Session["id"].ToString()));
            gvAvanceAcademico.DataBind();
            usuarioSesion.Text = Session["nombre"].ToString();
            idSesion.Text = Session["id"].ToString();

        }

        protected void cerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}