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
            gvNinosJardinLoad();
            gvJardinesDesaprobadoLoad();
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
            var consulta = from varNinos in db.ninos
                           join varJardin in db.jardines on varNinos.jIdJardin equals varJardin.idJardin
                           orderby varNinos.jIdJardin
                           select new
                           {
                               nombre = varNinos.nombres,
                               apellido = varNinos.apellidos,
                               telefono = varNinos.telefono,
                               direccion = varNinos.direccion,
                               eps = varNinos.EPS,
                               jardin = varNinos.jardine.nombre,
                           };

            gvNinosJardin.DataSource = consulta;
            gvNinosJardin.DataBind();
        }

        public void gvJardinesDesaprobadoLoad()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from varJardin in db.jardines
                           where varJardin.estado == "0"
                           select varJardin;
            gvJardinesDesaprobado.DataSource = consulta;
            gvJardinesDesaprobado.DataBind();
        }

        protected void cerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}