using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
    }
}
