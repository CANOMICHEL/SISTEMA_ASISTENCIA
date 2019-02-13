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


        public DataTable ListarAlumnosGrado(string codSalon)
        {
            string consulta = "exec spuTMatricula_AlumnosPorGrado '" + codSalon + "'";
            Console.WriteLine(consulta);
            aConexion.EjecutarSelect(consulta);

            Console.WriteLine(aConexion.Datos.Tables[0].Rows[0][0].ToString());
            return aConexion.Datos.Tables[0];

        }
    }
}
