using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class avancesAcademico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            ControladorAvanceAcademico controladorAvanceAcademico = new ControladorAvanceAcademico();
            avanceAcademico avanceAcademico = new avanceAcademico();
            avanceAcademico.noRegsitro = int.Parse(tbNoRegistro.Text);
            avanceAcademico.nIdNino = ddNinos.SelectedValue.ToString();
            avanceAcademico.anioEscolar = tbAnioEscolar.Text;
            avanceAcademico.nivel = tbNivel.Text;
            avanceAcademico.nota = int.Parse(tbNota.Text);
            avanceAcademico.descripcion = tbDescripcion.Text;
            avanceAcademico.fechaCalificacion = DateTime.Parse(tbFechaCalificacion.Text);
            controladorAvanceAcademico.registrarAvanceAcademico(avanceAcademico);
            gvAvanceAcademico.DataBind();
            
        }

        protected void btEditar_Click(object sender, EventArgs e)
        {
            ControladorAvanceAcademico controladorAvanceAcademico = new ControladorAvanceAcademico();
            avanceAcademico avanceAcademico = new avanceAcademico();
            avanceAcademico.noRegsitro = int.Parse(tbNoRegistro.Text);
            avanceAcademico.nIdNino = ddNinos.SelectedValue.ToString();
            avanceAcademico.anioEscolar = tbAnioEscolar.Text;
            avanceAcademico.nivel = tbNivel.Text;
            avanceAcademico.nota = int.Parse(tbNota.Text);
            avanceAcademico.descripcion = tbDescripcion.Text;
            avanceAcademico.fechaCalificacion = DateTime.Parse(tbFechaCalificacion.Text);
            controladorAvanceAcademico.actualizarAvanceAcademico(avanceAcademico);
            gvAvanceAcademico.DataBind();
        }

        protected void btElimibnar_Click(object sender, EventArgs e)
        {
            ControladorAvanceAcademico controladorAvanceAcademico = new ControladorAvanceAcademico();
            controladorAvanceAcademico.eliminarAvanceAcademico(int.Parse(tbNoRegistro.Text));
            gvAvanceAcademico.DataBind();
        }
    }
}