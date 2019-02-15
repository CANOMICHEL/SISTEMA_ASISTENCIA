using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using AppControlAsistencia;
using LibClases;
using LibFormularios;

namespace PruebaUnitaria
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void ValidarUsuarioOkUserOkPass_True()
        {
            string usuarioIngresado = "DP001";
            string contraseñaIngresado = "1234";
            bool estadoResultante = true;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
        [TestMethod]
        public void ValidarUsuarioOkUserNotPass_False()
        {
            string usuarioIngresado = "DP001";
            string contraseñaIngresado = "1255";
            bool estadoResultante = false;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
        [TestMethod]
        public void ValidarUsuarioOkUserNullPass_False()
        {
            string usuarioIngresado = "DP001";
            string contraseñaIngresado = "";
            bool estadoResultante = false;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
        [TestMethod]
        public void ValidarUsuarioNotUserNotPass_False()
        {
            string usuarioIngresado = "DP031";
            string contraseñaIngresado = "1455";
            bool estadoResultante = false;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
        [TestMethod]
        public void ValidarUsuarioNullUserNotPass_False()
        {
            string usuarioIngresado = "";
            string contraseñaIngresado = "1255";
            bool estadoResultante = false;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
        [TestMethod]
        public void ValidarUsuarioNotUserokPass_False()
        {
            string usuarioIngresado = "DP111";
            string contraseñaIngresado = "1234";
            bool estadoResultante = false;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
        [TestMethod]
        public void ValidarUsuarioNullUserOkPass_False()
        {
            string usuarioIngresado = "";
            string contraseñaIngresado = "1234";
            bool estadoResultante = false;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
        [TestMethod]
        public void ValidarUsuarioNullUserNullPass_False()
        {
            string usuarioIngresado = "";
            string contraseñaIngresado = "";
            bool estadoResultante = false;
            cDocente cAutenticacion = new cDocente();
            var result = cAutenticacion.RespuestaLogin(usuarioIngresado, contraseñaIngresado);
            Assert.AreEqual(estadoResultante, result);


        }
    }
}
