namespace ExcelToLua
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSele = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.btnExpAll = new System.Windows.Forms.Button();
            this.btnOutCardInfo = new System.Windows.Forms.Button();
            this.btnCalELO = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnSele
            // 
            this.btnSele.Location = new System.Drawing.Point(24, 48);
            this.btnSele.Name = "btnSele";
            this.btnSele.Size = new System.Drawing.Size(75, 23);
            this.btnSele.TabIndex = 1;
            this.btnSele.Text = "选择文件";
            this.btnSele.UseVisualStyleBackColor = true;
            this.btnSele.Click += new System.EventHandler(this.btnSele_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(167, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(197, 12);
            this.label1.TabIndex = 4;
            this.label1.Text = "文件格式为：Lua文件名+“-”+表名";
            // 
            // btnExpAll
            // 
            this.btnExpAll.Font = new System.Drawing.Font("KaiTi", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnExpAll.Location = new System.Drawing.Point(24, 112);
            this.btnExpAll.Name = "btnExpAll";
            this.btnExpAll.Size = new System.Drawing.Size(126, 58);
            this.btnExpAll.TabIndex = 5;
            this.btnExpAll.Text = "导出全部excel";
            this.btnExpAll.UseVisualStyleBackColor = true;
            this.btnExpAll.Click += new System.EventHandler(this.btnExpAll_Click);
            // 
            // btnOutCardInfo
            // 
            this.btnOutCardInfo.Location = new System.Drawing.Point(231, 48);
            this.btnOutCardInfo.Name = "btnOutCardInfo";
            this.btnOutCardInfo.Size = new System.Drawing.Size(104, 48);
            this.btnOutCardInfo.TabIndex = 6;
            this.btnOutCardInfo.Text = "导出card设计表";
            this.btnOutCardInfo.UseVisualStyleBackColor = true;
            this.btnOutCardInfo.Click += new System.EventHandler(this.btnOutCardInfo_Click);
            // 
            // btnCalELO
            // 
            this.btnCalELO.Location = new System.Drawing.Point(231, 128);
            this.btnCalELO.Name = "btnCalELO";
            this.btnCalELO.Size = new System.Drawing.Size(96, 32);
            this.btnCalELO.TabIndex = 7;
            this.btnCalELO.Text = "计算ELO";
            this.btnCalELO.UseVisualStyleBackColor = true;
            this.btnCalELO.Click += new System.EventHandler(this.btnCalELO_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(537, 359);
            this.Controls.Add(this.btnCalELO);
            this.Controls.Add(this.btnOutCardInfo);
            this.Controls.Add(this.btnExpAll);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnSele);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnSele;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnExpAll;
        private System.Windows.Forms.Button btnOutCardInfo;
        private System.Windows.Forms.Button btnCalELO;
    }
}

