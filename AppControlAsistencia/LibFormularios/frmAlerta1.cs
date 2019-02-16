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
    public partial class frmAlerta1 : Form
    {
        private bool aGuarda;
        public frmAlerta1()
        {
            InitializeComponent();
        }

        #region propiedades
        public bool Guardar
        {
            get { return aGuarda;}
            set { aGuarda=value;}
        }

        public Button BTNGuardar
        {
            get { return this.btnGuardar;}
            set { this.btnGuardar = value; }
        }

        public Button BTNCancelar
        {
            get { return this.btnCancelar;}
            set { this.btnCancelar = value; }
        }

        public void Texto(string s)
        {
            this.lblAlerta.Text = s;
        }

        #endregion propiedades


        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
            aGuarda = false;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {   
            this.Close();
            aGuarda = true;
            
        }
    }
}
