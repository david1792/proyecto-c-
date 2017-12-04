using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Modelo
{
    public class ControladorAvanceAcademico
    {
        public void registrarAvanceAcademico(avanceAcademico avanceAcademico)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                db.avanceAcademicos.InsertOnSubmit(avanceAcademico);
                db.SubmitChanges();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

        }

        public void eliminarAvanceAcademico(int id)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                var sentencia = (from p in db.avanceAcademicos
                                 where p.noRegsitro == id
                                 select p).First();//covierte a objeto

                db.avanceAcademicos.DeleteOnSubmit(sentencia);
                db.SubmitChanges();
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message);
            }

        }

        public void actualizarAvanceAcademico(avanceAcademico avanceAcademico)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                var sentencia = (from p in db.avanceAcademicos
                                 where p.noRegsitro == avanceAcademico.noRegsitro
                                 select p).First();//covierte a objeto

                sentencia.noRegsitro = avanceAcademico.noRegsitro;
                sentencia.nIdNino = avanceAcademico.nIdNino;
                sentencia.anioEscolar = avanceAcademico.anioEscolar;
                sentencia.nivel = avanceAcademico.nivel;
                sentencia.nota = avanceAcademico.nota;
                sentencia.descripcion = avanceAcademico.descripcion;
                sentencia.fechaCalificacion = avanceAcademico.fechaCalificacion;
                db.SubmitChanges();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

        }

        public object consultarTodosAvanceAcademico()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from p in db.avanceAcademicos
                           select new { p.noRegsitro, p.nino.nombres, p.anioEscolar, p.nivel, p.nota, p.descripcion, p.fechaCalificacion };// nombreRol = p.rol.nombre me trae el nombre del rol, si colocamos id me retorna el id
            return consulta;
        }

        public object consultarAvanceAcademico()
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from p in db.ninos
                           select p;// nombreRol = p.rol.nombre me trae el nombre del rol, si colocamos id me retorna el id
            return consulta;
        }
    }
}
