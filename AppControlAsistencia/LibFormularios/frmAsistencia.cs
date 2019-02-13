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
        //atributos
        cAlumno aAlumno = new cAlumno();
        cDocente aDocente = new cDocente();
        public frmAsistencia()
        {
            InitializeComponent();
        }

        private void CargarComponente(cDocente docente, ComboBox cb, string cod)
        {
            //cb.Items.Clear();
            //DataTable tabla = docente.AulasDocente(cod);
            //cb.ValueMember = tabla;
            //cb.DisplayMember = linea[1].ToString() + " " + linea[2].ToString();
        }

        private void ListarSalonesDeDocente()
        {
            cboGrado.DataSource = aDocente.AulasDocente(textBox1.Text);
            cboGrado.DisplayMember = "GradoSeccion";
            cboGrado.ValueMember = "CodGrado";
        }

        private void frmAsistencia_Load(object sender, EventArgs e)
        {
            cDocente docente=new cDocente();
            ListarSalonesDeDocente();
        }

        private void btnListado_Click(object sender, EventArgs e)
        {

            String Cod = cboGrado.SelectedValue.ToString();
            DataTable tabla=aAlumno.ListarAlumnosGrado(Cod);
            dgvListado.DataSource = tabla;
            
            //CargarComponente(docente, alumno, dgvListado, textBox1.Text);


        }


    }
}
