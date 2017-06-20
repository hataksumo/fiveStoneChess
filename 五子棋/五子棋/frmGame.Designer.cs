using System.Windows.Forms;
namespace 五子棋
{
    partial class frmGame
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.checkBoxBlack = new System.Windows.Forms.CheckBox();
            this.checkBoxWhite = new System.Windows.Forms.CheckBox();
            this.btnStepBack = new System.Windows.Forms.Button();
            this.btnGiveUp = new System.Windows.Forms.Button();
            this.cbBlack = new System.Windows.Forms.ComboBox();
            this.cbWhite = new System.Windows.Forms.ComboBox();
            this.btnStart = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnLoad = new System.Windows.Forms.Button();
            this.chkAnalysis = new System.Windows.Forms.CheckBox();
            this.lblMouse = new System.Windows.Forms.Label();
            this.btnStepFoward = new System.Windows.Forms.Button();
            this.cbRuler = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnTest = new System.Windows.Forms.Button();
            this.panelChessboard = new 五子棋.ChessBoard();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("微软雅黑", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(724, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(107, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "思考黑方：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("微软雅黑", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.Location = new System.Drawing.Point(724, 66);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(107, 25);
            this.label2.TabIndex = 2;
            this.label2.Text = "思考白方：";
            // 
            // checkBoxBlack
            // 
            this.checkBoxBlack.AutoSize = true;
            this.checkBoxBlack.Location = new System.Drawing.Point(837, 41);
            this.checkBoxBlack.Name = "checkBoxBlack";
            this.checkBoxBlack.Size = new System.Drawing.Size(15, 14);
            this.checkBoxBlack.TabIndex = 3;
            this.checkBoxBlack.UseVisualStyleBackColor = true;
            this.checkBoxBlack.CheckedChanged += new System.EventHandler(this.checkBoxBlack_CheckedChanged);
            this.checkBoxBlack.MouseClick += new System.Windows.Forms.MouseEventHandler(this.frmGame_MouseClick);
            // 
            // checkBoxWhite
            // 
            this.checkBoxWhite.AutoSize = true;
            this.checkBoxWhite.Location = new System.Drawing.Point(837, 76);
            this.checkBoxWhite.Name = "checkBoxWhite";
            this.checkBoxWhite.Size = new System.Drawing.Size(15, 14);
            this.checkBoxWhite.TabIndex = 4;
            this.checkBoxWhite.UseVisualStyleBackColor = true;
            this.checkBoxWhite.CheckedChanged += new System.EventHandler(this.checkBoxWhite_CheckedChanged);
            this.checkBoxWhite.MouseClick += new System.Windows.Forms.MouseEventHandler(this.frmGame_MouseClick);
            // 
            // btnStepBack
            // 
            this.btnStepBack.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnStepBack.Location = new System.Drawing.Point(729, 119);
            this.btnStepBack.Name = "btnStepBack";
            this.btnStepBack.Size = new System.Drawing.Size(75, 32);
            this.btnStepBack.TabIndex = 5;
            this.btnStepBack.Text = "上一步";
            this.btnStepBack.UseVisualStyleBackColor = true;
            this.btnStepBack.Click += new System.EventHandler(this.btnStepBack_Click);
            // 
            // btnGiveUp
            // 
            this.btnGiveUp.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnGiveUp.Location = new System.Drawing.Point(913, 119);
            this.btnGiveUp.Name = "btnGiveUp";
            this.btnGiveUp.Size = new System.Drawing.Size(75, 32);
            this.btnGiveUp.TabIndex = 6;
            this.btnGiveUp.Text = "认输";
            this.btnGiveUp.UseVisualStyleBackColor = true;
            this.btnGiveUp.Click += new System.EventHandler(this.btnGiveUp_Click);
            // 
            // cbBlack
            // 
            this.cbBlack.FormattingEnabled = true;
            this.cbBlack.Location = new System.Drawing.Point(858, 38);
            this.cbBlack.Name = "cbBlack";
            this.cbBlack.Size = new System.Drawing.Size(121, 20);
            this.cbBlack.TabIndex = 7;
            this.cbBlack.SelectedIndexChanged += new System.EventHandler(this.cbBlack_SelectedIndexChanged);
            // 
            // cbWhite
            // 
            this.cbWhite.FormattingEnabled = true;
            this.cbWhite.Location = new System.Drawing.Point(858, 76);
            this.cbWhite.Name = "cbWhite";
            this.cbWhite.Size = new System.Drawing.Size(121, 20);
            this.cbWhite.TabIndex = 8;
            this.cbWhite.SelectedIndexChanged += new System.EventHandler(this.cbWhite_SelectedIndexChanged);
            // 
            // btnStart
            // 
            this.btnStart.Location = new System.Drawing.Point(625, 12);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(75, 23);
            this.btnStart.TabIndex = 10;
            this.btnStart.Text = "游戏开始";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // btnSave
            // 
            this.btnSave.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSave.Location = new System.Drawing.Point(729, 160);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 32);
            this.btnSave.TabIndex = 13;
            this.btnSave.Text = "保存";
            this.btnSave.UseVisualStyleBackColor = true;
            // 
            // btnLoad
            // 
            this.btnLoad.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnLoad.Location = new System.Drawing.Point(823, 160);
            this.btnLoad.Name = "btnLoad";
            this.btnLoad.Size = new System.Drawing.Size(75, 32);
            this.btnLoad.TabIndex = 14;
            this.btnLoad.Text = "载入";
            this.btnLoad.UseVisualStyleBackColor = true;
            // 
            // chkAnalysis
            // 
            this.chkAnalysis.AutoSize = true;
            this.chkAnalysis.BackColor = System.Drawing.Color.Transparent;
            this.chkAnalysis.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.chkAnalysis.Location = new System.Drawing.Point(729, 233);
            this.chkAnalysis.Name = "chkAnalysis";
            this.chkAnalysis.Size = new System.Drawing.Size(157, 25);
            this.chkAnalysis.TabIndex = 16;
            this.chkAnalysis.Text = "是否生成分析文档";
            this.chkAnalysis.UseVisualStyleBackColor = false;
            this.chkAnalysis.CheckedChanged += new System.EventHandler(this.chkAnalysis_CheckedChanged);
            // 
            // lblMouse
            // 
            this.lblMouse.BackColor = System.Drawing.Color.Transparent;
            this.lblMouse.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lblMouse.Location = new System.Drawing.Point(727, 271);
            this.lblMouse.Name = "lblMouse";
            this.lblMouse.Size = new System.Drawing.Size(159, 23);
            this.lblMouse.TabIndex = 17;
            this.lblMouse.Text = "pos:";
            // 
            // btnStepFoward
            // 
            this.btnStepFoward.Font = new System.Drawing.Font("微软雅黑", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnStepFoward.Location = new System.Drawing.Point(823, 119);
            this.btnStepFoward.Name = "btnStepFoward";
            this.btnStepFoward.Size = new System.Drawing.Size(75, 32);
            this.btnStepFoward.TabIndex = 18;
            this.btnStepFoward.Text = "下一步";
            this.btnStepFoward.UseVisualStyleBackColor = true;
            this.btnStepFoward.Click += new System.EventHandler(this.btnStepFoward_Click);
            // 
            // cbRuler
            // 
            this.cbRuler.FormattingEnabled = true;
            this.cbRuler.Location = new System.Drawing.Point(858, 198);
            this.cbRuler.Name = "cbRuler";
            this.cbRuler.Size = new System.Drawing.Size(121, 20);
            this.cbRuler.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("微软雅黑", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label3.Location = new System.Drawing.Point(724, 198);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 25);
            this.label3.TabIndex = 20;
            this.label3.Text = "游戏规则：";
            // 
            // btnTest
            // 
            this.btnTest.Location = new System.Drawing.Point(625, 38);
            this.btnTest.Name = "btnTest";
            this.btnTest.Size = new System.Drawing.Size(75, 23);
            this.btnTest.TabIndex = 21;
            this.btnTest.Text = "测试";
            this.btnTest.UseVisualStyleBackColor = true;
            this.btnTest.Click += new System.EventHandler(this.btnTest_Click);
            // 
            // panelChessboard
            // 
            this.panelChessboard.Location = new System.Drawing.Point(1, 1);
            this.panelChessboard.Name = "panelChessboard";
            this.panelChessboard.Size = new System.Drawing.Size(10, 10);
            this.panelChessboard.TabIndex = 9;
            this.panelChessboard.MouseClick += new System.Windows.Forms.MouseEventHandler(this.panelChessboard_MouseClick);
            this.panelChessboard.MouseMove += new System.Windows.Forms.MouseEventHandler(this.frmGame_MouseMove);
            // 
            // frmGame
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::五子棋.Properties.Resources.三妻四妾;
            this.ClientSize = new System.Drawing.Size(1014, 682);
            this.Controls.Add(this.btnTest);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cbRuler);
            this.Controls.Add(this.btnStepFoward);
            this.Controls.Add(this.lblMouse);
            this.Controls.Add(this.chkAnalysis);
            this.Controls.Add(this.btnLoad);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.panelChessboard);
            this.Controls.Add(this.cbWhite);
            this.Controls.Add(this.cbBlack);
            this.Controls.Add(this.btnGiveUp);
            this.Controls.Add(this.btnStepBack);
            this.Controls.Add(this.checkBoxWhite);
            this.Controls.Add(this.checkBoxBlack);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.MaximumSize = new System.Drawing.Size(1030, 720);
            this.MinimumSize = new System.Drawing.Size(581, 600);
            this.Name = "frmGame";
            this.Text = "欢乐五子棋";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Form1_FormClosed);
            this.Load += new System.EventHandler(this.Form1_Load);
            this.MouseClick += new System.Windows.Forms.MouseEventHandler(this.frmGame_MouseClick);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.CheckBox checkBoxBlack;
        private System.Windows.Forms.CheckBox checkBoxWhite;
        private System.Windows.Forms.Button btnStepBack;
        private System.Windows.Forms.Button btnGiveUp;
        private System.Windows.Forms.ComboBox cbBlack;
        private System.Windows.Forms.ComboBox cbWhite;
        private ChessBoard panelChessboard;
        private Button btnStart;
        private Button btnSave;
        private Button btnLoad;
        private CheckBox chkAnalysis;
        private Label lblMouse;
        private Button btnStepFoward;
        private ComboBox cbRuler;
        private Label label3;
        private Button btnTest;
    }
}

