using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class listarAsistencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*CsAsistencia csAsistencia = new CsAsistencia();
            ddlNinosAsistencia.DataSource = csAsistencia.consultarNinos();
            ddlNinosAsistencia.DataTextField = "nombres";
            ddlNinosAsistencia.DataValueField = "idNino";*/
        }

        protected void btActualizar_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            asistencia asistencia = new asistencia();
            asistencia.fecha = DateTime.Parse(tbFecha.Text);
            asistencia.estadoNino = tbEstado.Text;
            asistencia.nIdNino = ddlNinosAsistencia.SelectedValue;
            asistencia.noRegistro = int.Parse(tbRegistro.Text);

            if (csAsistencia.actualizarAsistencia(asistencia))
            {
                Console.WriteLine("see");
            }
            else
            {
                Console.WriteLine("nee");
            }
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            asistencia asistencia = new asistencia();
            asistencia.noRegistro = int.Parse(tbRegistro.Text);
            if (csAsistencia.eliminarAsistencia(asistencia.noRegistro))
            {
                Console.WriteLine("see");
            }
            else
            {
                Console.WriteLine("nee");
            }

        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            asistencia asistencia = new asistencia();
            asistencia.fecha = DateTime.Parse(tbFecha.Text);
            asistencia.estadoNino = tbEstado.Text;
            asistencia.nIdNino = ddlNinosAsistencia.SelectedValue;
            asistencia.noRegistro = int.Parse(tbRegistro.Text);

            if (csAsistencia.registrarAsistencia(asistencia))
            {
                Console.WriteLine("see");
                gvAsistencia.DataBind();
            }
            else
            {
                Console.WriteLine("nee");
            }
        }

        protected void btListar_Click(object sender, EventArgs e)
        {

        }

    }
}