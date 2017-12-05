using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class reportes : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            gvAsistenciaLoad();
            gvInasistenciaEnfermedadLoad();
        }

        public void gvAsistenciaLoad()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from varAsistencia in db.asistencias
                           join varNinos in db.ninos on varAsistencia.nIdNino equals varNinos.idNino
                           select new {nombre = varNinos.nombres, apellido = varNinos.apellidos, registro = varAsistencia.noRegistro, fecha = varAsistencia.fecha, estado = varAsistencia.estadoNino  };
            gvAsistencia.DataSource = consulta;
            gvAsistencia.DataBind();
        }

        public void gvInasistenciaEnfermedadLoad()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from varAsistencia in db.asistencias
                           where varAsistencia.estadoNino == "enfermo"
                           select varAsistencia;
            gvInasistenciaEnfermedad.DataSource = consulta;
            gvInasistenciaEnfermedad.DataBind();
        }

        public void gvNinosJardinLoad()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
        }

        public void gvJardinesDesaprobadoLoad()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
        }
    }
}