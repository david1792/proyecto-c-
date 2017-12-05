using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace ProyectoICBF
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCrear_Click(object sender, EventArgs e)
        {
            CLSPersona clsPersona = new CLSPersona();
            usuario usuario = new usuario();
                if (clsPersona.validarMadreComunitariaExistente(int.Parse(tbIdUsuario.Text)) == false)
                {
                    usuario.idUsuario = tbIdUsuario.Text;
                    usuario.nombres = tbNombre.Text;
                    usuario.apellidos = tbApellido.Text;
                    usuario.fechaNace = DateTime.Parse(tbFechaNacimiento.Text);
                    usuario.telefono = tbTelefono.Text;
                    usuario.direccion = tbDireccion.Text;
                    usuario.email = tbEmail.Text;
                    usuario.estado = int.Parse(tbEstado.Text);
                    usuario.tUsuario = int.Parse(ddlTipoUsuario.SelectedValue);
                    usuario.clave = tbClave.Text;
                    if (clsPersona.registrarUsuario(usuario))
                    {
                        Console.WriteLine("sss");
                    }
                    gvUsuarios.DataBind();
                    labelError.Text = "usuario registrado con exito";
                }
                else
                {
                    gvUsuarios.DataBind();
                    labelError.Text = "usuario ya se encuentra en la base de datos";
                }
            
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            CLSPersona clsPersona = new CLSPersona();
            if(clsPersona.eliminarUsuario(int.Parse(tbIdUsuario.Text)))
            {
                Console.WriteLine("sss");
            }
            gvUsuarios.DataBind();

        }

        protected void btEditar_Click(object sender, EventArgs e)
        {
            CLSPersona clsPersona = new CLSPersona();
            usuario usuario = new usuario();
            usuario.idUsuario = tbIdUsuario.Text;
            usuario.nombres = tbNombre.Text;
            usuario.apellidos = tbApellido.Text;
            usuario.fechaNace = DateTime.Parse(tbFechaNacimiento.Text);
            usuario.telefono = tbTelefono.Text;
            usuario.direccion = tbDireccion.Text;
            usuario.email = tbEmail.Text;
            usuario.estado = int.Parse(tbEstado.Text);
            usuario.tUsuario = int.Parse(ddlTipoUsuario.SelectedValue);
            usuario.clave = tbClave.Text;
            if (clsPersona.actualizarUsuario(usuario))
            {
                Console.WriteLine("sss");
            }
            gvUsuarios.DataBind();

        }
    }
}