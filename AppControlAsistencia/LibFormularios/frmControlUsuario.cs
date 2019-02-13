using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using LibClases;
using LibFormularios;

namespace LibFormularios
{
    public partial class frmControlUsuario : Form
    {
        //Atributos
        cDocente aDocente = new cDocente();

        public frmControlUsuario()
        {
            InitializeComponent();
        }

        private void enter_event(object sender, EventArgs e)
        {
            TextBox tb = sender as TextBox;
            if (tb.Text == "Usuario")
            {
                tb.Clear();
                tb.ForeColor = Color.Black;

            }
            if (tb.Text == "Contraseña")
            {
                tb.Clear();
                tb.ForeColor = Color.Black;
                tb.UseSystemPasswordChar = true;
            }
        }

        private void leave_event(object sender, EventArgs e)
        {
            TextBox tb = sender as TextBox;
            if (tb.Text == "" & txtPassword.Text == "Contraseña")
            {
                txtUsername.Text = "Usuario";
                tb.ForeColor = Color.Gray;
            }
            if (tb.Text == "" & txtUsername.Text == "Usuario")
            {
                tb.UseSystemPasswordChar = false;
                txtPassword.Text = "Contraseña";
                tb.ForeColor = Color.Gray;
            }
        }

        private void btnAcceder_Click(object sender, EventArgs e)
        {
            if (aDocente.RespuestaLogin(txtUsername.Text, txtPassword.Text))
            {
                Console.WriteLine(txtUsername.Text[0].ToString() + txtUsername.Text[1]);
                if (txtUsername.Text[0].ToString() + txtUsername.Text[1] == "DP")
                {
                    Console.WriteLine("Llego aqui");
                    frmAsistencia L = new frmAsistencia();
                    L.ShowDialog();
                }
                if (txtUsername.Text[0].ToString() + txtUsername.Text[1] == "DS")
                {
                    //Abrir formulario de docente secunadria
                    frmAsistencia L = new frmAsistencia();
                    L.ShowDialog();
                }
                if (txtUsername.Text[0].ToString() + txtUsername.Text[1] == "DI")
                {
                    //Abrir formulario de director
                    frmDirector L = new frmDirector();
                    L.ShowDialog();
                }
                if (txtUsername.Text[0].ToString() + txtUsername.Text[1] == "AU")
                {
                    //Abrir formulario de auxiliar
                    frmIngresoDatos L = new frmIngresoDatos();
                    L.ShowDialog();
                }

            }
            else
            {
<<<<<<< HEAD
                MessageBox.Show("Acceso Denegado");
=======
                MessageBox.Show("Nope miserable");
>>>>>>> ddfe88dc4d2839978699a988e66e214afd119253
            }
            //aqui se verificara que el usuario y contraseña sea válido
            //ademas se debe verificar que el usuario acceda al sistema correcto
        }
    }
}
