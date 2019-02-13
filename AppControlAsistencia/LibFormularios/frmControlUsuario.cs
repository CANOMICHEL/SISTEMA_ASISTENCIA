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

namespace AppControlAsistencia
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
            if(aDocente.RespuestaLogin(txtUsername.Text,txtPassword.Text))
            {
                MessageBox.Show("Existe usuario");

            }
            else
            {
                MessageBox.Show("Nope miserable");
            }
            //aqui se verificara que el usuario y contraseña sea válido
            //ademas se debe verificar que el usuario acceda al sistema correcto
        }




    }
}
