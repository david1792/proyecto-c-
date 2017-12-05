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
            DateTime dtStart = DateTime.Parse(tbFecha.Text);
            TimeSpan sp = DateTime.Now - dtStart;
            if (sp.Days > 6 * 365)
            {
                labelError.Text = "el niño debe ser menor de 6 años";
            }
            else
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
                nino.FechaNacimiento = DateTime.Parse(tbFecha.Text);
                nino.uIdUsuarioRegistra = "10";//Session["id"].ToString();
                if (controladorNino.validarNinoExistente(int.Parse(tbIdNino.Text)) == false)
                {
                    controladorNino.registrarNino(nino);
                    gvNinos.DataBind();
                    labelError.Text = "niño registrado con exito";
                }
                else
                {
                    gvNinos.DataBind();
                    labelError.Text = "niño ya se encuentra en la base de datos";
                }
            }
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
            nino.FechaNacimiento = DateTime.Parse(tbFecha.Text);
            nino.jIdJardin = ddJardin.SelectedValue.ToString();
            nino.uIdUsuarioRegistra = "10";//Session["id"].ToString();
            controladorNino.actualizarNino(nino);
            gvNinos.DataBind();
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            ControladorNino controladorNino = new ControladorNino();
            controladorNino.eliminarNino(int.Parse(tbIdNino.Text));
            gvNinos.DataBind();
        }

        /*protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime dtStart = DateTime.Parse(tbFecha.Text);
            TimeSpan sp = DateTime.Now - dtStart;

            if (sp.Days > 6 * 365)
            {
                args.IsValid = false;
                CustomValidator1.ErrorMessage = "el niño debe ser menor de 6 años";
            }
            else
            { 
                args.IsValid = true;
            }
        }*/
    }
}