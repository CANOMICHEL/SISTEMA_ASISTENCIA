﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LibFormularios;
namespace AppControlAsistencia
{
    public partial class FrmPrincipal : Form
    {
        public FrmPrincipal()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            frmAsistencia frm = new frmAsistencia();
            frm.Show();
            Console.WriteLine();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
