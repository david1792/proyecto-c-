using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class ninos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            ControladorNino controladorNino = new ControladorNino();
            nino nino = new nino();
            nino.idNino = tbIdNino.Text;
            nino.nombres = tbNombre.Text;
            nino.apellidos = tbApellido.Text;
            nino.tipoSangre = ddSangre.SelectedValue;
            nino.ciudadOrigen = ddCiudad.SelectedValue;
            nino.aIdAcudiente = ddAcudiente.SelectedIndex.ToString();
            nino.telefono = tbTelefono.Text;
            nino.direccion = tbDireccion.Text;
            nino.EPS = tbEps.Text;
            nino.jIdJardin = ddJardin.SelectedValue.ToString();
            nino.uIdUsuarioRegistra = Session["id"].ToString();
            controladorNino.registrarNino(nino);
            gvNinos.DataBind();
        }

        protected void btEditar_Click(object sender, EventArgs e)
        {
            ControladorNino controladorNino = new ControladorNino();
            nino nino = new nino();
            nino.idNino = tbIdNino.Text;
            nino.nombres = tbNombre.Text;
            nino.apellidos = tbApellido.Text;
            nino.tipoSangre = ddSangre.SelectedValue;
            nino.ciudadOrigen = ddCiudad.SelectedValue;
            nino.aIdAcudiente = ddAcudiente.SelectedIndex.ToString();
            nino.telefono = tbTelefono.Text;
            nino.direccion = tbDireccion.Text;
            nino.EPS = tbEps.Text;
            nino.jIdJardin = ddJardin.SelectedValue.ToString();
            nino.uIdUsuarioRegistra = Session["id"].ToString();
            controladorNino.actualizarNino(nino);
            gvNinos.DataBind();
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            ControladorNino controladorNino = new ControladorNino();
            controladorNino.eliminarNino(int.Parse(tbIdNino.Text));
            gvNinos.DataBind();
        }
    }
}