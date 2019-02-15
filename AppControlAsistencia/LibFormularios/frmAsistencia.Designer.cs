namespace LibFormularios
{
    partial class frmAsistencia
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.panel1 = new System.Windows.Forms.Panel();
            this.tabControl_Docente = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dgvListadoAlumnos = new System.Windows.Forms.DataGridView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnSalir = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.cboGrado = new System.Windows.Forms.ComboBox();
            this.tbDocente = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.panel4 = new System.Windows.Forms.Panel();
            this.colunmNro = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnCod = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnNombres = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Columnpresente = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.ColumnTarde = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.ColumnFalta = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.ColumnOBS = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.panel1.SuspendLayout();
            this.tabControl_Docente.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListadoAlumnos)).BeginInit();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.tabControl_Docente);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1326, 733);
            this.panel1.TabIndex = 0;
            // 
            // tabControl_Docente
            // 
            this.tabControl_Docente.Controls.Add(this.tabPage1);
            this.tabControl_Docente.Controls.Add(this.tabPage2);
            this.tabControl_Docente.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl_Docente.Location = new System.Drawing.Point(0, 0);
            this.tabControl_Docente.Name = "tabControl_Docente";
            this.tabControl_Docente.SelectedIndex = 0;
            this.tabControl_Docente.Size = new System.Drawing.Size(1326, 733);
            this.tabControl_Docente.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.panel4);
            this.tabPage1.Controls.Add(this.panel2);
            this.tabPage1.Controls.Add(this.panel3);
            this.tabPage1.Location = new System.Drawing.Point(4, 29);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1318, 700);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Asistencia";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.panel2.Controls.Add(this.btnSalir);
            this.panel2.Controls.Add(this.btnGuardar);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panel2.Location = new System.Drawing.Point(3, 632);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1312, 65);
            this.panel2.TabIndex = 4;
            // 
            // dgvListadoAlumnos
            // 
            this.dgvListadoAlumnos.AllowUserToAddRows = false;
            this.dgvListadoAlumnos.AllowUserToDeleteRows = false;
            this.dgvListadoAlumnos.BackgroundColor = System.Drawing.Color.LightCyan;
            this.dgvListadoAlumnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvListadoAlumnos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colunmNro,
            this.ColumnCod,
            this.ColumnNombres,
            this.Columnpresente,
            this.ColumnTarde,
            this.ColumnFalta,
            this.ColumnOBS});
            this.dgvListadoAlumnos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvListadoAlumnos.Location = new System.Drawing.Point(0, 0);
            this.dgvListadoAlumnos.Name = "dgvListadoAlumnos";
            this.dgvListadoAlumnos.Size = new System.Drawing.Size(1312, 458);
            this.dgvListadoAlumnos.TabIndex = 3;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.PeachPuff;
            this.panel3.Controls.Add(this.label3);
            this.panel3.Controls.Add(this.cboGrado);
            this.panel3.Controls.Add(this.tbDocente);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.label1);
            this.panel3.Controls.Add(this.lblTitulo);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panel3.Location = new System.Drawing.Point(3, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1312, 171);
            this.panel3.TabIndex = 5;
            // 
            // btnSalir
            // 
            this.btnSalir.AutoSize = true;
            this.btnSalir.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalir.ForeColor = System.Drawing.Color.Red;
            this.btnSalir.Location = new System.Drawing.Point(1163, 11);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(95, 34);
            this.btnSalir.TabIndex = 1;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(422, 138);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(218, 24);
            this.label3.TabIndex = 61;
            this.label3.Text = "LISTADO DE ALUMNOS";
            // 
            // btnGuardar
            // 
            this.btnGuardar.AutoSize = true;
            this.btnGuardar.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGuardar.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnGuardar.Location = new System.Drawing.Point(20, 11);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(95, 34);
            this.btnGuardar.TabIndex = 0;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // cboGrado
            // 
            this.cboGrado.CausesValidation = false;
            this.cboGrado.FormattingEnabled = true;
            this.cboGrado.Location = new System.Drawing.Point(225, 87);
            this.cboGrado.Name = "cboGrado";
            this.cboGrado.Size = new System.Drawing.Size(538, 28);
            this.cboGrado.Sorted = true;
            this.cboGrado.TabIndex = 59;
            this.cboGrado.Text = "Seleccione";
            this.cboGrado.SelectedIndexChanged += new System.EventHandler(this.cboGrado_SelectedIndexChanged);
            // 
            // tbDocente
            // 
            this.tbDocente.Enabled = false;
            this.tbDocente.Location = new System.Drawing.Point(225, 44);
            this.tbDocente.Name = "tbDocente";
            this.tbDocente.Size = new System.Drawing.Size(538, 26);
            this.tbDocente.TabIndex = 58;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(161, 84);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 20);
            this.label2.TabIndex = 57;
            this.label2.Text = "Grado:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(145, 44);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 20);
            this.label1.TabIndex = 56;
            this.label1.Text = "Docente:";
            // 
            // lblTitulo
            // 
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.Location = new System.Drawing.Point(345, 9);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(318, 24);
            this.lblTitulo.TabIndex = 55;
            this.lblTitulo.Text = "REGISTRAR ASISTENCIA ALUMNO";
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 29);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1318, 700);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Reportes";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.dgvListadoAlumnos);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel4.Location = new System.Drawing.Point(3, 174);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(1312, 458);
            this.panel4.TabIndex = 6;
            // 
            // colunmNro
            // 
            this.colunmNro.HeaderText = "Nro";
            this.colunmNro.Name = "colunmNro";
            this.colunmNro.Width = 70;
            // 
            // ColumnCod
            // 
            this.ColumnCod.HeaderText = "Cod";
            this.ColumnCod.Name = "ColumnCod";
            // 
            // ColumnNombres
            // 
            this.ColumnNombres.HeaderText = "Apellidos y nombres";
            this.ColumnNombres.Name = "ColumnNombres";
            this.ColumnNombres.Width = 500;
            // 
            // Columnpresente
            // 
            this.Columnpresente.HeaderText = "Presente";
            this.Columnpresente.Name = "Columnpresente";
            // 
            // ColumnTarde
            // 
            this.ColumnTarde.HeaderText = "Tarde";
            this.ColumnTarde.Name = "ColumnTarde";
            // 
            // ColumnFalta
            // 
            this.ColumnFalta.HeaderText = "Falta";
            this.ColumnFalta.Name = "ColumnFalta";
            // 
            // ColumnOBS
            // 
            this.ColumnOBS.HeaderText = "Observaciones";
            this.ColumnOBS.Name = "ColumnOBS";
            this.ColumnOBS.Width = 250;
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // frmAsistencia
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1326, 733);
            this.Controls.Add(this.panel1);
            this.Name = "frmAsistencia";
            this.Text = "frmAsistencia";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmAsistencia_Load);
            this.panel1.ResumeLayout(false);
            this.tabControl_Docente.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListadoAlumnos)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TabControl tabControl_Docente;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.DataGridView dgvListadoAlumnos;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboGrado;
        private System.Windows.Forms.TextBox tbDocente;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.DataGridViewTextBoxColumn colunmNro;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnCod;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnNombres;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Columnpresente;
        private System.Windows.Forms.DataGridViewCheckBoxColumn ColumnTarde;
        private System.Windows.Forms.DataGridViewCheckBoxColumn ColumnFalta;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnOBS;
        private System.Windows.Forms.Timer timer1;

    }
}