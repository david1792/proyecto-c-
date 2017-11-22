using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Modelo
{
    public class CsAsistencia
    {
        public bool registrarAsistencia(asistencia asistencia )
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            bool bandera = false;
            try
            {
                db.asistencias.InsertOnSubmit(asistencia);
                db.SubmitChanges();
                bandera = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return bandera;

        }

        public bool eliminarAsistencia(int id)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            bool bandera = false;
            try
            {
                var sentencia = (from p in db.asistencias
                                 where p.noRegistro == id
                                 select p).First();//covierte a objeto

                db.asistencias.DeleteOnSubmit(sentencia);
                db.SubmitChanges();
                bandera = true;
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message);
            }
            return bandera;

        }

        public bool actualizarAsistencia(asistencia asistencia)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            bool bandera = false;
            try
            {
                var sentencia = (from p in db.asistencias
                                 where p.noRegistro == asistencia.noRegistro
                                 select p).First();//covierte a objeto

                sentencia.noRegistro = asistencia.noRegistro;
                sentencia.fecha = asistencia.fecha;
                sentencia.estadoNino = asistencia.estadoNino;
                db.SubmitChanges();
                bandera = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return bandera;

        }

        public object consultarAsistencia()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from p in db.asistencias
                           select new { p.noRegistro, p.nino.nombres, p.fecha, nombreRol = p.nIdNino };// nombreRol = p.rol.nombre me trae el nombre del rol, si colocamos id me retorna el id
            return consulta;
        }

        public object consultarNinos()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from p in db.ninos
                           select p;// nombreRol = p.rol.nombre me trae el nombre del rol, si colocamos id me retorna el id
            return consulta;
        }
    }
}
