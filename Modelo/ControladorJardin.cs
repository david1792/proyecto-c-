using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ControladorJardin
    {
        public void registrarJardin(jardine jardine)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                db.jardines.InsertOnSubmit(jardine);
                db.SubmitChanges();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public void actualizarJardin(jardine jardine)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                var sentencia = (from p in db.jardines
                                 where p.idJardin == jardine.idJardin
                                 select p).First();

                sentencia.nombre = jardine.nombre;
                sentencia.direccion = jardine.direccion;
                sentencia.encargado = jardine.encargado;
                sentencia.estado = jardine.estado;
                db.SubmitChanges();

            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public void eliminarJardin(int id)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                var sentencia = (from p in db.jardines
                                 where p.idJardin == id.ToString()
                                 select p).First();//covierte a objeto

                db.jardines.DeleteOnSubmit(sentencia);
                db.SubmitChanges();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public bool validarJardinExistente(int idjardin, string nombre)
        {
            bool bandera = false;
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                var consulta = (from p in db.jardines
                                where p.idJardin == idjardin.ToString() || p.nombre == nombre
                                select p).First();// nombreRol = p.rol.nombre me trae el nombre del rol, si colocamos id me retorna el id
                if (consulta.idJardin != null)
                {
                    bandera = true;
                }
                return bandera;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return bandera;
            }
            return bandera;
        }
    }
}
