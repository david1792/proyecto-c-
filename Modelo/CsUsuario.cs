using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq.Mapping;
using System.Data.Linq.SqlClient;

namespace Modelo
{
    [Table(Name = "usuario")]
    public class CsUsuario
    {
        #region
        [Column(IsDbGenerated = false, IsPrimaryKey = true)]
        public int idUsuario { get; set; }
        [Column]
        public string nombres { get; set; }
        [Column]
        public string apellidos { get; set; }
        [Column]
        public DateTime fechaNace { get; set; }
        [Column]
        public string telefono { get; set; }
        [Column]
        public string direccion { get; set; }
        [Column]
        public string email { get; set; }
        [Column]
        public int estado { get; set; }
        [Column]
        public int tUsuario { get; set; }
        [Column]
        public string clave { get; set; }

        #endregion
    }
}
