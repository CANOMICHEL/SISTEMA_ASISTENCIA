using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppControlAsistencia
{
    public partial class frmControlUsuario : Form
    {
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
            if (tb.Text == "" & tbPassword.Text == "Contraseña")
            {
                tbUser.Text = "Usuario";
                tb.ForeColor = Color.Gray;
            }
            if (tb.Text == "" & tbUser.Text == "Usuario")
            {
                tb.UseSystemPasswordChar = false;
                tbPassword.Text = "Contraseña";
                tb.ForeColor = Color.Gray;
            }
        }

        private void btnAcceder_Click(object sender, EventArgs e)
        {
            //aqui se verificara que el usuario y contraseña sea válido
            //ademas se debe verificar que el usuario acceda al sistema correcto
        }




    }
}
