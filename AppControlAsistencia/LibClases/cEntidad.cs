using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace LibClases
{
   //Virtual: Son metodos que los heredan los hijos

    //Abstracta: Clase que no se puede instanciar (no se puede hacer cEntidad = new cEntidad())
    //          Tambien obligas al hijo a que ponga este código, porque si no lo hace... no funciona
    //          Puede estar vacia, no tener cuerpo, y obliga a sus herederos a trabajar
    //          Deja huecos en el padre y obliga al hijo a rellenarlos
    public abstract class cEntidad
    {
        //==================== Atributos ==================
        private cConexion aConexion;
        private string aNombreTabla; // Porque es lo unico que cambia en algunas consultas
        string[] aNombres = null; //-- Nombres de los campos de la tabla
        string[] aValores = null; // -- valores de los campos de la tabla
        private bool aNuevo;

        //==================== Metodos ====================
        //------------------ Constructores ----------------
        public cEntidad(string pNombreTabla)
        {
            //Inicializar los atributos
            aNuevo = true;
            aNombreTabla = pNombreTabla;
            aConexion = new cConexion();
            aNombres = NombresAtributos();
            aValores = null;
        }
        //------------------ Porpiedades -----------------
        public bool Nuevo
        {
            get { return aNuevo; }
            set { aNuevo = value; }
        }
        //---------------------- Metodos de soporte de BD -------------------------
        //-- Metodo abstracto encargado de establecer los nombres de los campos
        //-- (atributos) de la tabla. Se deben implementar necesariamente
        //-- en los herederos como arreglos de cadenas
        //-- Estos atributos deben coincidir con los existentes en la Base de Datos
        //-------------------------------------------------------------------------
        public abstract string[] NombresAtributos();

        //-------------------------------------------------------------------------
        //-- Metodos para el mantenimiento de la tabla
        //-------------------------------------------------------------------------

        //------------------- Insercion de nuevos registros -----------------------
        //Params: Sirve para ingresar un numero de parametros variables (se ingresan como un arreglo)
        public virtual void Insertar(params string[] Atributos)
        {
            //-- Permite insertar informacion de un registro en la tabla

            //-- Recuperar los valores de los atributos
            aValores = Atributos;
            //-- Formar la cadena de insercion
            string CadenaInsertar = "insert into " + aNombreTabla + " values ('";
            for (int k = 0; k < aValores.Length; k++)
            {
                //-- incluir los atributos en la consulta
                CadenaInsertar += aValores[k];
                if (k == aValores.Length - 1)
                    //-- se concatenó el ultimo atributo. Terminar la consulta
                    CadenaInsertar += "')";
                else
                    //-- dejar la consulta lista para el siguiente atributo
                    CadenaInsertar += "', '";
            }
            //Ejecutar la consulta para insertar el registro
            aConexion.EjecutarComando(CadenaInsertar);
            aNuevo = false;
        }
        //------------------- Actualizar registros -----------------------
        public virtual void Actualizar(params string[] Atributos)
        {
            //-- Permite actualizar informacion de un registro en la tabla

            //-- Recuperar los valores de los atributos
            aValores = Atributos;
            //-- Formar la cadena de actualizacion
            string CadenaActualizar = "update " + aNombreTabla + " set";
            for (int k = 1; k < aValores.Length; k++)
            {
                if (k == aValores.Length - 1)
                    CadenaActualizar += aNombres[k] + "= '" + aValores[k] + "' ";
                else
                    CadenaActualizar += aNombres[k] + "= '" + aValores[k] + "',";
            }
            CadenaActualizar += "where " + aNombres[0] + "= '" + aValores[0] + "'";
        }
        //TAREAAAAAA Terminar metodo actualizar como el insertar
        //------------------- Eliminar registros -----------------------
        public void Eliminar(params string[] Atributos)
        {
            //Permite eliminar un registro

            //Recuperar los nombres y valores de los atriburtos de la tabla
            aNombres = NombresAtributos();
            aValores = Atributos;

            //Formar la cadena de eliminacion
            string CadenaEliminar = "delete from " + aNombreTabla +
                                    " where " + aNombres[0] + "= '" + aValores[0] + "'";
            //Ejecutar la consulta para eliminar el registro
            aConexion.EjecutarComando(CadenaEliminar);
        }
        //---------------------------------------------------------------------------------
        public bool ExisteClavePrimaria(params string[] Atributos)
        {
            //Verifica si un registro especifico existe

            //Recuperar los nombres y valores de los atributos de la tabla.
            aNombres = NombresAtributos();
            aValores = Atributos;

            //Formar la consulta
            string CadenaConsulta = "select * from " + aNombreTabla +
                                    " where " + aNombres[0] + "= '" + aValores[0] + "'";
            //Ejecutar la consulta
            aConexion.EjecutarSelect(CadenaConsulta);

            //Si existen registro en la tabla 0 dal dataset, la clave primaria exite
            return (aConexion.Datos.Tables[0].Rows.Count > 0);
        }
        //---------------------------------------------------------------------------------
        public DataTable Registro(params string[] Atributos)
        {
            //-- Recupera la informacion de un registro

            //-- Recuperar los nombres y valores de los atributos de la tabla.
            aNombres = NombresAtributos();
            aValores = Atributos;

            //-- Formar la consulta
            string CadenaConsulta = "select * from " + aNombreTabla +
                                    " where " + aNombres[0] + "= '" + aValores[0] + "'";

            //-- Ejecutar la consulta y devolver el resultado
            aConexion.EjecutarSelect(CadenaConsulta);
            return aConexion.Datos.Tables[0];
        }
        //-------------------------------------------------------------------------
        public string ValorAtributo(string pNombreCampo)
        {
            //Recupera el valor de un atributo del dataset
            return aConexion.Datos.Tables[0].Rows[0][pNombreCampo].ToString();
        }
        //------------------------------------------------------------------------
        public DataTable ListaGeneral()
        {
            //-- Retorna una tabla co0n la lista completa de libros
            string Consulta = "select * from " + aNombreTabla;
            aConexion.EjecutarSelect(Consulta);
            return aConexion.Datos.Tables[0];
        }
    }
}
