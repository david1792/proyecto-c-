using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Modelo
{
    public class CLSPersona
    {

        public bool registrarUsuario(usuario usuario)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            bool bandera = false;
            try
            {
                db.usuarios.InsertOnSubmit(usuario);
                db.SubmitChanges();
                bandera = true;
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message);
            }
            return bandera;

        }

        public bool eliminarUsuario(int id)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            bool bandera = false;
            try
            {
                var sentencia = (from p in db.usuarios
                                 where p.idUsuario == id.ToString()
                                 select p).First();//covierte a objeto

                db.usuarios.DeleteOnSubmit(sentencia);
                db.SubmitChanges();
                bandera = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return bandera;

        }

        public bool actualizarUsuario(usuario usuario)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            bool bandera = false;
            try
            {
                var sentencia = (from p in db.usuarios
                                 where p.idUsuario == usuario.idUsuario
                                 select p).First();//covierte a objeto

                sentencia.nombres = usuario.nombres;
                sentencia.apellidos = usuario.apellidos;
                sentencia.fechaNace = usuario.fechaNace;
                sentencia.telefono = usuario.telefono;
                sentencia.direccion = usuario.direccion;
                sentencia.email = usuario.email;
                sentencia.estado = usuario.estado;
                sentencia.estado = usuario.estado;
                sentencia.tUsuario = usuario.tUsuario;
                sentencia.clave = usuario.clave;
                db.SubmitChanges();
                bandera = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return bandera;

        }

        public object consultarUsuarios()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from p in db.usuarios
                           select p;// nombreRol = p.rol.nombre me trae el nombre del rol, si colocamos id me retorna el id
            return consulta;
        }

        public usuario login(string correo, string clave)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = db.sp_login(correo, clave);
            usuario usuario = new usuario();
            foreach (var item in consulta)
            {
                usuario.idUsuario = item.idUsuario;
                usuario.nombres = item.nombres;
                usuario.apellidos = item.apellidos;
                usuario.fechaNace = item.fechaNace;
                usuario.telefono = item.telefono;
                usuario.direccion = item.direccion;
                usuario.email = item.email;
                usuario.estado = item.estado;
                usuario.tUsuario = item.tUsuario;
                usuario.clave = item.clave;
            }
            return usuario;
        }
    }
}