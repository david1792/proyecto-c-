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
            asistencia.estadoNino = ddlEstado.SelectedValue.ToString();
            asistencia.noRegistro = int.Parse(tbRegistro.Text);
            asistencia.nIdNino = ddlNinosAsistencia.SelectedValue.ToString();
            csAsistencia.actualizarAsistencia(asistencia);

            gvAsistencia.DataBind();

        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            csAsistencia.eliminarAsistencia(int.Parse(tbRegistro.Text));

            gvAsistencia.DataBind();
        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            CsAsistencia csAsistencia = new CsAsistencia();
            asistencia asistencia = new asistencia();
            asistencia.fecha = DateTime.Parse(tbFecha.Text);
            asistencia.estadoNino = ddlEstado.SelectedValue;
            asistencia.noRegistro = int.Parse(tbRegistro.Text);
            asistencia.nIdNino = ddlNinosAsistencia.SelectedValue.ToString();
            csAsistencia.registrarAsistencia(asistencia);
            gvAsistencia.DataBind();
        }
    }
}