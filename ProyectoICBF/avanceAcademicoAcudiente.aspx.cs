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
            gvAvanceAcademico.DataSource = controladorAvanceAcademico.consultarAvanceAcademicoAcudiente(15);
            gvAvanceAcademico.DataBind();
        }
    }
}