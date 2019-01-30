namespace AppControlAsistencia
{
    partial class frmIngresoDatos
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
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.lblNombres = new System.Windows.Forms.Label();
            this.lblApellidos = new System.Windows.Forms.Label();
            this.txtApellidos = new System.Windows.Forms.TextBox();
            this.lblGrado = new System.Windows.Forms.Label();
            this.lblSeccion = new System.Windows.Forms.Label();
            this.cbGrado = new System.Windows.Forms.ComboBox();
            this.cbNivel = new System.Windows.Forms.ComboBox();
            this.lblNivel = new System.Windows.Forms.Label();
            this.cbSeccion = new System.Windows.Forms.ComboBox();
            this.epError = new System.Windows.Forms.ErrorProvider(this.components);
            this.lblTitulo = new System.Windows.Forms.Label();
            this.btnGrabar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.epError)).BeginInit();
            this.SuspendLayout();
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombre.Location = new System.Drawing.Point(154, 128);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(227, 29);
            this.txtNombre.TabIndex = 1;
            this.txtNombre.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.Presionartecla);
            this.txtNombre.Validating += new System.ComponentModel.CancelEventHandler(this.ControlarTexto);
            // 
            // lblNombres
            // 
            this.lblNombres.AutoSize = true;
            this.lblNombres.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombres.Location = new System.Drawing.Point(34, 133);
            this.lblNombres.Name = "lblNombres";
            this.lblNombres.Size = new System.Drawing.Size(93, 24);
            this.lblNombres.TabIndex = 2;
            this.lblNombres.Text = "Nombres:";
            // 
            // lblApellidos
            // 
            this.lblApellidos.AutoSize = true;
            this.lblApellidos.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblApellidos.Location = new System.Drawing.Point(34, 166);
            this.lblApellidos.Name = "lblApellidos";
            this.lblApellidos.Size = new System.Drawing.Size(93, 24);
            this.lblApellidos.TabIndex = 4;
            this.lblApellidos.Text = "Apellidos:";
            // 
            // txtApellidos
            // 
            this.txtApellidos.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtApellidos.Location = new System.Drawing.Point(154, 163);
            this.txtApellidos.Name = "txtApellidos";
            this.txtApellidos.Size = new System.Drawing.Size(227, 29);
            this.txtApellidos.TabIndex = 3;
            this.txtApellidos.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.Presionartecla);
            this.txtApellidos.Validating += new System.ComponentModel.CancelEventHandler(this.ControlarTexto);
            // 
            // lblGrado
            // 
            this.lblGrado.AutoSize = true;
            this.lblGrado.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGrado.Location = new System.Drawing.Point(60, 244);
            this.lblGrado.Name = "lblGrado";
            this.lblGrado.Size = new System.Drawing.Size(67, 24);
            this.lblGrado.TabIndex = 6;
            this.lblGrado.Text = "Grado:";
            // 
            // lblSeccion
            // 
            this.lblSeccion.AutoSize = true;
            this.lblSeccion.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSeccion.Location = new System.Drawing.Point(43, 282);
            this.lblSeccion.Name = "lblSeccion";
            this.lblSeccion.Size = new System.Drawing.Size(84, 24);
            this.lblSeccion.TabIndex = 8;
            this.lblSeccion.Text = "Sección:";
            // 
            // cbGrado
            // 
            this.cbGrado.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbGrado.FormattingEnabled = true;
            this.cbGrado.Items.AddRange(new object[] {
            "1ro",
            "2do",
            "3ro",
            "4to",
            "5to"});
            this.cbGrado.Location = new System.Drawing.Point(154, 236);
            this.cbGrado.Name = "cbGrado";
            this.cbGrado.Size = new System.Drawing.Size(227, 32);
            this.cbGrado.TabIndex = 9;
            this.cbGrado.Text = "Seleccionar";
            // 
            // cbNivel
            // 
            this.cbNivel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbNivel.FormattingEnabled = true;
            this.cbNivel.Items.AddRange(new object[] {
            "Primaria",
            "Secundaria"});
            this.cbNivel.Location = new System.Drawing.Point(154, 198);
            this.cbNivel.Name = "cbNivel";
            this.cbNivel.Size = new System.Drawing.Size(227, 32);
            this.cbNivel.TabIndex = 11;
            this.cbNivel.Text = "Seleccionar";
            // 
            // lblNivel
            // 
            this.lblNivel.AutoSize = true;
            this.lblNivel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNivel.Location = new System.Drawing.Point(70, 206);
            this.lblNivel.Name = "lblNivel";
            this.lblNivel.Size = new System.Drawing.Size(57, 24);
            this.lblNivel.TabIndex = 10;
            this.lblNivel.Text = "Nivel:";
            // 
            // cbSeccion
            // 
            this.cbSeccion.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbSeccion.FormattingEnabled = true;
            this.cbSeccion.Items.AddRange(new object[] {
            "A",
            "B",
            "C",
            "D"});
            this.cbSeccion.Location = new System.Drawing.Point(154, 274);
            this.cbSeccion.Name = "cbSeccion";
            this.cbSeccion.Size = new System.Drawing.Size(227, 32);
            this.cbSeccion.TabIndex = 12;
            this.cbSeccion.Text = "Seleccionar";
            // 
            // epError
            // 
            this.epError.ContainerControl = this;
            // 
            // lblTitulo
            // 
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.Location = new System.Drawing.Point(254, 45);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(201, 24);
            this.lblTitulo.TabIndex = 13;
            this.lblTitulo.Text = "AGREGAR ALUMNOS";
            // 
            // btnGrabar
            // 
            this.btnGrabar.AutoSize = true;
            this.btnGrabar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGrabar.Location = new System.Drawing.Point(306, 332);
            this.btnGrabar.Name = "btnGrabar";
            this.btnGrabar.Size = new System.Drawing.Size(75, 30);
            this.btnGrabar.TabIndex = 14;
            this.btnGrabar.Text = "Grabar";
            this.btnGrabar.UseVisualStyleBackColor = true;
            // 
            // frmIngresoDatos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(692, 397);
            this.Controls.Add(this.btnGrabar);
            this.Controls.Add(this.lblTitulo);
            this.Controls.Add(this.cbSeccion);
            this.Controls.Add(this.cbNivel);
            this.Controls.Add(this.lblNivel);
            this.Controls.Add(this.cbGrado);
            this.Controls.Add(this.lblSeccion);
            this.Controls.Add(this.lblGrado);
            this.Controls.Add(this.lblApellidos);
            this.Controls.Add(this.txtApellidos);
            this.Controls.Add(this.lblNombres);
            this.Controls.Add(this.txtNombre);
            this.Name = "frmIngresoDatos";
            this.Text = "frmIngresoDatos";
            ((System.ComponentModel.ISupportInitialize)(this.epError)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label lblNombres;
        private System.Windows.Forms.Label lblApellidos;
        private System.Windows.Forms.TextBox txtApellidos;
        private System.Windows.Forms.Label lblGrado;
        private System.Windows.Forms.Label lblSeccion;
        private System.Windows.Forms.ComboBox cbGrado;
        private System.Windows.Forms.ComboBox cbNivel;
        private System.Windows.Forms.Label lblNivel;
        private System.Windows.Forms.ComboBox cbSeccion;
        private System.Windows.Forms.ErrorProvider epError;
        private System.Windows.Forms.Button btnGrabar;
        private System.Windows.Forms.Label lblTitulo;
    }
}