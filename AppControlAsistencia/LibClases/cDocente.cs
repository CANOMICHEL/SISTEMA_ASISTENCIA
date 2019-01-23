using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibClases
{
    class cDocente : cEntidad
    {
        //------------ ATRIBUTOS -------------
        //-- Se heredan de cEntidad

        //------------ METODOS ---------------
        //----- Constructores
        public cDocente() : base("TDocente")
        {
        }
        //---- Implementacion de metodos abstractos
        public override string[] NombresAtributos()
        {
            return new string[] { "CodLector", "Nombre", "Direccion", "Telefono", "DocIdentidad" };
        }
    }
}
