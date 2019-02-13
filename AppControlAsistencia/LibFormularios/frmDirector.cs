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
    public partial class frmDirector : Form
    {
        public frmDirector()
        {
            InitializeComponent();
        }

        private void btnAlumnos_Click(object sender, EventArgs e)
        {
            frmIngresoDatos L = new frmIngresoDatos();
        }

        private void btnDocentes_Click(object sender, EventArgs e)
        {

        }

        private void btnRegistrarAsistencia_Click(object sender, EventArgs e)
        {

        }
    }
}
