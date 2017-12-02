using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Modelo
{
    public class ControladorNino
    {

        public void registrarNino(nino nino)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                db.ninos.InsertOnSubmit(nino);
                db.SubmitChanges();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public void actualizarNino(nino nino)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            try
            {
                var sentencia = (from p in db.ninos
                                 where p.idNino == nino.idNino
                                 select p).First();

                sentencia.nombres = nino.nombres;
                sentencia.apellidos = nino.apellidos;
                sentencia.FechaNacimiento = nino.FechaNacimiento;
                sentencia.tipoSangre = nino.tipoSangre;
                sentencia.ciudadOrigen = nino.ciudadOrigen;
                sentencia.aIdAcudiente = nino.aIdAcudiente;
                sentencia.telefono = nino.telefono;
                sentencia.direccion = nino.direccion;
                sentencia.EPS = nino.EPS;
                sentencia.jardine = nino.jardine;
                sentencia.uIdUsuarioRegistra = nino.uIdUsuarioRegistra;
                db.SubmitChanges();

            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public bool eliminarNino(int id)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            bool bandera = false;
            try
            {
                var sentencia = (from p in db.ninos
                                 where p.idNino == id.ToString()
                                 select p).First();//covierte a objeto

                db.ninos.DeleteOnSubmit(sentencia);
                db.SubmitChanges();
                bandera = true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            return bandera;
        }
    }
}
