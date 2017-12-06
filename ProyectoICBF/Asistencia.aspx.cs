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
            if (DateTime.Now.Hour >= 8 && DateTime.Now.Hour <= 10)
            {
                asistencia.fecha = DateTime.Parse(tbFecha.Text);
                asistencia.estadoNino = ddlEstado.SelectedValue.ToString();
                asistencia.noRegistro = int.Parse(tbRegistro.Text);
                asistencia.nIdNino = ddlNinosAsistencia.SelectedValue.ToString();
                csAsistencia.actualizarAsistencia(asistencia);
                gvAsistencia.DataBind();
                labelError.Text = "se actualizo exitosamente la asistencia";
            }
            else
            {
                gvAsistencia.DataBind();
                labelError.Text = "la asistencia se toma de 8 a 10 am";

            }

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
            if (DateTime.Now.Hour >= 8 && DateTime.Now.Hour <= 10)
            {
                asistencia.fecha = DateTime.Parse(tbFecha.Text);
                asistencia.estadoNino = ddlEstado.SelectedValue;
                asistencia.noRegistro = int.Parse(tbRegistro.Text);
                asistencia.nIdNino = ddlNinosAsistencia.SelectedValue.ToString();
                csAsistencia.registrarAsistencia(asistencia);
                gvAsistencia.DataBind();
                labelError.Text = "se registro exitosamente la asistencia" + DateTime.Now.Hour;
            }
            else
            {
                gvAsistencia.DataBind();
                labelError.Text = "la asistencia se toma de 8 a 10 am" + DateTime.Now.Hour;
            }

        }
    }
}