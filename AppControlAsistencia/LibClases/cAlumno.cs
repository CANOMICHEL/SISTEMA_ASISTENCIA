using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace LibClases
{
    public class cAlumno : cEntidad
    {
        //------------ ATRIBUTOS -------------
        //-- Se heredan de cEntidad

        //------------ METODOS ---------------
        //----- Constructores
        public cAlumno() : base("TAlumno")
        {
        }
        //---- Implementacion de metodos abstractos
        public override string[] NombresAtributos()
        {
            return new string[] { "CodAlumno", "DNI", "Nombre", "Direccion", "Telefono" };
        }

        public DataTable ListarAlumnosGrado(string Cod)
        {
            string consulta = "exec spuTMatricula_AlumnosPorGrado '" + Cod + "'";
            aConexion.EjecutarSelect(consulta);
            return aConexion.Datos.Tables[0];
        }

    }
}
