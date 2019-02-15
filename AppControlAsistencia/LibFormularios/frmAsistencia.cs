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
namespace LibFormularios
{
    public partial class frmAsistencia : Form
    {
        cDocente aDocente = new cDocente();
        cAlumno aAlumno = new cAlumno();
        private string aCodDocente = "";
        public frmAsistencia()
        {
            InitializeComponent();
        }

        #region eventos

        private void frmAsistencia_Load(object sender, EventArgs e)
        {
            tbDocente.Text = aDocente.NombreDocente(aCodDocente).Rows[0][0].ToString();
            ListarSalonesDeDocente();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {

        }

        #endregion eventos



        #region metodos

        private void ListarSalonesDeDocente()
        {
            cboGrado.DataSource = aDocente.AulassDocente(aCodDocente);
            cboGrado.DisplayMember = "GradoSeccion";
            cboGrado.ValueMember = "CodGrado";
        }


        public void CargarListaAlumnos()
        {
            dgvListadoAlumnos.Rows.Clear();
            DataTable tabla = ListaAlumnos();
           
            bool check = false;
            int n = 0;
            foreach(DataRow linea in tabla.Rows){
                n++;
                dgvListadoAlumnos.Rows.Add(n.ToString(),linea[0].ToString(),linea[1].ToString(),check,check,check,"");
            }
        }

        private DataTable ListaAlumnos()
        {
            String Cod = cboGrado.SelectedValue.ToString();
            return aAlumno.ListarAlumnosGrado(Cod);
        }
        //propiedades
        public TextBox TBDocente
        {
            get { return this.tbDocente; }
            set { this.tbDocente = value; }
        }

        public ComboBox CBOGrado
        {
            get { return this.cboGrado;}
            set { this.cboGrado=value;}
        }

        public string CodDocente
        {
            get { return aCodDocente;}
            set { aCodDocente=value;}
        }

        #endregion metodos

        private void timer1_Tick(object sender, EventArgs e)
        {
            
        }

        private void cboGrado_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarListaAlumnos();
        }


    }
}
