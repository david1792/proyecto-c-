using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class Asistencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btActualizar_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            asistencia asistencia = new asistencia();
            asistencia.fecha = DateTime.Parse(tbFecha.Text);
            asistencia.estadoNino = tbEstado.Text;
            asistencia.noRegistro = int.Parse(tbRegistro.Text);
            asistencia.nIdNino = ddlNinosAsistencia.SelectedValue.ToString();
            if (csAsistencia.actualizarAsistencia(asistencia))
            {
                Console.WriteLine("sss");
            }
            gvAsistencia.DataBind();

        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            if (csAsistencia.eliminarAsistencia(int.Parse(tbRegistro.Text)))
            {
                Console.WriteLine("sss");
            }
            gvAsistencia.DataBind();
        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            asistencia asistencia = new asistencia();
            asistencia.fecha = DateTime.Parse(tbFecha.Text);
            asistencia.estadoNino = tbEstado.Text;
            asistencia.noRegistro = int.Parse(tbRegistro.Text);
            asistencia.nIdNino = ddlNinosAsistencia.SelectedValue.ToString();
            if (csAsistencia.registrarAsistencia(asistencia))
            {
                Console.WriteLine("sss");
            }
            gvAsistencia.DataBind();
        }
    }
}