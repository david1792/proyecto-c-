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

        public object consultarAvanceAcademicoAcudiente(int idAcudiente)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var consulta = from varAvance in db.avanceAcademicos
                           join varNinos in db.ninos on varAvance.nIdNino equals varNinos.idNino
                           join varUsuario in db.usuarios on varNinos.aIdAcudiente equals idAcudiente.ToString()
                           select new {noRegistro = varAvance.noRegsitro, nIdNino = varAvance.nino.nombres,
                                        anioEscolar = varAvance.anioEscolar, nivel = varAvance.nivel,
                                        nota = varAvance.nota, descripcion = varAvance.descripcion,
                                        fechaCalificacion = varAvance.fechaCalificacion};// nombreRol = p.rol.nombre me trae el nombre del rol, si colocamos id me retorna el id
            return consulta.Distinct();
        }
    }
}
