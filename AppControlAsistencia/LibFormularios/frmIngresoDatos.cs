using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LibFormularios
{
    public partial class frmIngresoDatos : Form
    {
        public frmIngresoDatos()
        {
            InitializeComponent();
        }

        private void Presionartecla(object sender, KeyPressEventArgs e)
        {
            if (char.IsLetter(e.KeyChar))
                e.Handled = false;
            else if (char.IsControl(e.KeyChar))
                e.Handled = false;
            else
                e.Handled = true;
        }

        private void ControlarTexto(object sender, CancelEventArgs e)
        {
            TextBox tb = (sender as TextBox);
            if (tb.Text.Length == 0)
            {
                tb.Focus();
                //this.epError.SetError(tb, "Este campo debe ser llenado");
            }
        }

        private void btnGrabar_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
