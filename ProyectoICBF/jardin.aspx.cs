using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class jardin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            ControladorJardin controladorJardin = new ControladorJardin();
            jardine jardine = new jardine();
            if (controladorJardin.validarJardinExistente(int.Parse(tbIdJardin.Text), tbNombre.Text) == false)
            {
                jardine.idJardin = tbIdJardin.Text;
                jardine.nombre = tbNombre.Text;
                jardine.encargado = ddEncargado.SelectedValue;
                jardine.estado = ddEstado.SelectedValue;
                jardine.direccion = tbDireccion.Text;
                controladorJardin.registrarJardin(jardine);
                labelError.Text = "jardin registrado con exito";
                gvJardines.DataBind();
                
            }
            else
            {
                gvJardines.DataBind();
                labelError.Text = "jardin ya se encuentra en la base de datos";
            }
        }

        protected void btActualizar_Click(object sender, EventArgs e)
        {
            ControladorJardin controladorJardin = new ControladorJardin();
            jardine jardine = new jardine();
            jardine.idJardin = tbIdJardin.Text;
            jardine.nombre = tbNombre.Text;
            jardine.encargado = ddEncargado.SelectedValue;
            jardine.estado = ddEstado.SelectedValue;
            jardine.direccion = tbDireccion.Text;
            controladorJardin.actualizarJardin(jardine);
            gvJardines.DataBind();
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            ControladorJardin controladorJardin = new ControladorJardin();
            controladorJardin.eliminarJardin(int.Parse(tbIdJardin.Text));
            gvJardines.DataBind();
        }

        protected void cerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
}