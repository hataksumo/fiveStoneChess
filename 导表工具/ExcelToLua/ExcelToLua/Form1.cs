using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Excel = Aspose.Cells;

namespace ExcelToLua
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        private void btnSele_Click(object sender, EventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.InitialDirectory = excelPath;
            fileDialog.Multiselect = true;
            fileDialog.Title = "请选择Excel文件";
            //fileDialog.Filter = "*.xlsx";
            //fileDialog.ShowDialog();
            if (fileDialog.ShowDialog() == DialogResult.OK)
            {
                string[] names = fileDialog.FileNames;
                for (int i = 0; i < names.Length; i++)
                {
                    apposeReadExcel(names[i]);
                }
            }
        }

        public void __old_readExcel(string v_filePath)
        {
            string[] saveNames = v_filePath.Split('\\');
            string tSaveName = saveNames[saveNames.Length - 1];

            string[] saveName = tSaveName.Split('.')[0].Split('-');

            DataTable dt = ReadExcel(v_filePath);
            if (saveName[0].Equals("card_data"))
            {
                WriteToLuaCardData(dt, saveName[1], saveName[0]);
            }
            else if (saveName[0].Equals("drop_base_data"))
            {
                WriteToLuaDropBaseData(dt, saveName[1], saveName[0]);
            }
            else if (saveName[0].Equals("progress_data"))
            {
                WriteToLuaProgressData(dt, saveName[1], saveName[0]);
            }
            else
            {
                WriteToLua(dt, saveName[1], saveName[0]);
            }
        }


        public void apposeReadExcel(string v_filePath)
        {
            Excel.Workbook book = new Excel.Workbook(v_filePath);
            Excel.Worksheet index_sheet = book.Worksheets["INDEX"];
            if (index_sheet == null)
            {
                __old_readExcel(v_filePath);
                return;
            }
            //读取索引表
            List<IndexSheetData> indexes = new List<IndexSheetData>();
            SheetHeader index_header = new SheetHeader();
            index_header.readHeader(index_sheet);
            Excel.Cells datas = index_sheet.Cells;

            for (int i = 1; i < 100; i++)
            {
                try
                {
                    if (datas[i, 0].Value == null || string.IsNullOrEmpty(datas[i, 0].Value.ToString()))
                        break;
                    IndexSheetData the_index = new IndexSheetData();
                    the_index.init(datas, i, index_header);
                    indexes.Add(the_index);
                }
                catch (Exception ex)
                {
                    Debug.Error("{0}读取索引列，第{1}行时报错，报错信息如下\r\n{2}", Path.GetFileName(v_filePath), i + 2, ex.ToString());
                }
            }

            //根据索引表读取各sheet
            foreach (IndexSheetData curIndex in indexes)
            {
                if (!(curIndex.isCliOpt|| curIndex.isServOpt))
                    continue;
                Excel.Worksheet curSheet = book.Worksheets[curIndex.sheetName];
                if (curSheet == null)
                {
                    Debug.Error("{0}没有找到sheet[{1}]", Path.GetFileName(v_filePath),curIndex.sheetName);
                    return;
                }
                SheetBin bin = new SheetBin();
                StringBuilder sb = new StringBuilder();
                try
                {
                    bin.init(curSheet, curIndex);
                    LuaTable val = bin.getLuaTableConfig();
                    sb.Append(string.Format("local {0} = {{}}\r\n\r\n", curIndex.className));
                    sb.Append(string.Format("--======================{0}==========================\r\n", curIndex.dataFieldName));
                    val.outputSrc(sb, 0, curIndex.className + "." + curIndex.dataFieldName);
                }
                catch (Exception ex)
                {
                    Debug.Error("{0}_[{1}]导出基础数据时出现错误，错误信息为:\r\n{2}", Path.GetFileNameWithoutExtension(v_filePath), curIndex.sheetName, ex.ToString());
                }
                //打印组索引
                LuaMap[] sheet_indexes = null;
                LuaMap[] sheet_uni_indexes = null;
                try
                {
                    sheet_indexes = bin.getGroupIndexes();
                    sheet_uni_indexes = bin.getUniqueIndexes();
                }
                catch (Exception ex)
                {
                    Debug.Error("{0}_[{1}]输出索引时出现错误，错误信息为:\r\n{2}", Path.GetFileName(v_filePath), curIndex.sheetName, ex.ToString());
                }

                if (sheet_indexes != null)
                {
                    string[][] groupIndex = curIndex.groupIndex;
                    for (int i = 0; i < sheet_indexes.Length; i++)
                    {
                        string field = "index";
                        for (int j = 0; j < groupIndex[i].Length; j++)
                        {
                            field = field + "_" + groupIndex[i][j];
                        }
                        field = field.ToUpper();
                        sb.Append(string.Format("\r\n--================={0}=================\r\n", field));
                        sheet_indexes[i].outputSrc(sb, 0, curIndex.className + "." + field);
                    }
                }

                if (sheet_uni_indexes != null)
                {
                    string[][] unique_indexes = curIndex.uniqueIndex;
                    for (int i = 0; i < sheet_uni_indexes.Length; i++)
                    {
                        string field = "uindex";
                        for (int j = 0; j < unique_indexes[i].Length; j++)
                        {
                            field = field + "_" + unique_indexes[i][j];
                        }
                        field = field.ToUpper();
                        sb.Append(string.Format("\r\n--================={0}=================\r\n", field));
                        sheet_uni_indexes[i].outputSrc(sb, 0, curIndex.className + "." + field);
                    }
                }


                sb.Append(string.Format("\r\nreturn {0}", curIndex.className));

                string optCliFilePath = Config.cliPath + "\\" + curIndex.optFileName;
                string optSvFilePath = Config.servPath + "\\" + curIndex.optFileName;
                if(curIndex.isCliOpt)
                    File.WriteAllText(optCliFilePath, sb.ToString());
                if(curIndex.isServOpt)
                    File.WriteAllText(optSvFilePath, sb.ToString());
            }
            Debug.Info("{0}:导表完成~~~", Path.GetFileName(v_filePath));

        }




        public static DataTable ReadExcel(string filePath)
        {
            try
            {
                string strConn = "Provider=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + filePath + ";" + ";Extended Properties=\"Excel 12.0;HDR=YES;IMEX=1\"";
                OleDbConnection OleConn = new OleDbConnection(strConn);
                OleConn.Open();
                String sql = "SELECT * FROM  [Sheet1$]";//可是更改Sheet名称，比如sheet2，等等

                OleDbDataAdapter OleDaExcel = new OleDbDataAdapter(sql, OleConn);
                DataSet OleDsExcle = new DataSet();
                OleDaExcel.Fill(OleDsExcle, "Sheet1");
                OleConn.Close();

                return OleDsExcle.Tables["Sheet1"];
            }
            catch (Exception err)
            {
                MessageBox.Show("数据绑定Excel失败!失败原因：" + err.Message, "提示信息",
                    MessageBoxButtons.OK, MessageBoxIcon.Information);
                return null;
            }
        }
        private List<string> GetTitles(DataTable dt)
        {

            List<string> titles = new List<string>();
            for (int col = 0; col < dt.Columns.Count; col++)
            {
                titles.Add(dt.Rows[0][col].ToString());
            }
            return titles;
        }
        private List<string> GetTypes(DataTable dt)
        {
            List<string> types = new List<string>();
            for (int col = 0; col < dt.Columns.Count; col++)
            {
                types.Add(dt.Rows[1][col].ToString());
            }
            return types;
        }

        private string AddStringEnd(int j, string rowContent, int count)
        {
            if (j == count - 1)
            {
                rowContent += "'";
            }
            else
            {
                rowContent += "',";
            }
            return rowContent;
        }
        private string AddNumEnd(int j, string rowContent, int count)
        {
            if (j == count - 1)
            {
                rowContent += "";
            }
            else
            {
                rowContent += ",";
            }
            return rowContent;
        }
        private void SaveContentEndAndSave(StringBuilder saveContent, string saveFileName, bool bNotify = true)
        {
            saveContent.Append("\n}");
            saveContent.Append("\n\nreturn " + saveFileName);
            saveContent.Replace('\'', '"');
            //FileStream fsFile = new FileStream(@"D:\" + saveFileName + ".lua", FileMode.Create);
            //StreamWriter sw = new StreamWriter(fsFile, new UTF8Encoding(false));
            string content = saveContent.ToString();
            File.WriteAllText(cliPath + saveFileName + ".lua", content);
            File.WriteAllText(servPath + saveFileName + ".lua", content);
            //Debug.Info(Path.GetFullPath(cliPath + saveFileName + ".lua"));
            //Debug.Info(Path.GetFullPath(servPath + saveFileName + ".lua"));
            //sw.Write(saveContent.ToString());
            //sw.Close();
            if (bNotify)
                MessageBox.Show(@"转换成功123123->D:\" + saveFileName + ".lua");
        }

        private void WriteToLuaCardData(DataTable dt, string saveName, string fileName, int fileIndex=0)
        {
            string saveFileName = fileName;

            StringBuilder saveContent = new StringBuilder("local " + saveFileName + " = {}\n\n");
            saveContent.Append(saveFileName + "." + saveName + " = {\n");


            StringBuilder saveContentOther = new StringBuilder("local " + saveFileName + "_normal" + " = {}\n\n");
            saveContentOther.Append(saveFileName + "_normal" + "." + saveName + " = {\n");


            List<string> titles = GetTitles(dt);

            List<string> types = GetTypes(dt);

            for (int i = 2; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][0] == "")
                {
                    break;
                }
                string rowContent = "\t['" + dt.Rows[i][0] + "'] = {";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    if (types[j] == "string")
                    {
                        rowContent = rowContent + titles[j] + " = '" + dt.Rows[i][j];
                        rowContent = AddStringEnd(j, rowContent, Convert.ToInt32(dt.Columns.Count));
                    }
                    else
                    {
                        rowContent = rowContent + titles[j] + " = " + dt.Rows[i][j];
                        rowContent = AddNumEnd(j, rowContent, Convert.ToInt32(dt.Columns.Count));
                    }
                }
                rowContent += "},\n";
                saveContent.Append(rowContent);
            }

            for (int i = 2; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][0] == "")
                {
                    break;
                }
                string rowContent = "\t['" + dt.Rows[i][0] + "'] = {";
                for (int j = 0; j < dt.Columns.Count; j++)
                {

                    if (titles[j].Equals("card_base_id") || titles[j].Equals("basic_type"))
                    {
                        if (types[j] == "string")
                        {
                            rowContent = rowContent + titles[j] + " = '" + dt.Rows[i][j];
                            rowContent = AddStringEnd(j, rowContent, Convert.ToInt32(dt.Columns.Count));
                        }
                        else
                        {
                            rowContent = rowContent + titles[j] + " = " + dt.Rows[i][j];
                            rowContent = AddNumEnd(j, rowContent, Convert.ToInt32(dt.Columns.Count));
                        }
                    }
                    if (titles[j].Equals("progress_id"))
                    {
                        if (types[j] == "string")
                        {
                            rowContent = rowContent + titles[j] + " = '" + dt.Rows[i][j];
                            rowContent += "'";
                        }
                        else
                        {
                            rowContent = rowContent + titles[j] + " = " + dt.Rows[i][j];
                            rowContent += "";
                        }
                    }

                }
                rowContent += "},\n";
                saveContentOther.Append(rowContent);
            }


            SaveContentEndAndSave(saveContent, saveFileName);
            SaveContentEndAndSave(saveContentOther, saveFileName + "_normal");
        }

        private void WriteToLuaDropBaseData(DataTable dt, string saveName, string fileName, int fileIndex=0)
        {
            string saveFileName = fileName;

            StringBuilder saveContent = new StringBuilder("local " + saveFileName + " = {}\n\n");
            saveContent.Append(saveFileName + "." + saveName + " = {\n");

            List<string> titles = GetTitles(dt);


            List<string> types = GetTypes(dt);


            for (int i = 2; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][0] == "")
                {
                    break;
                }
                string rowContent = "\t['" + dt.Rows[i][0] + "'] = {";

                int k = 0;
                for (int j = 2; j < dt.Columns.Count; j++)
                {


                    if (titles[j].Equals("sub_count"))
                    {
                        k = Convert.ToInt32(dt.Rows[i][j]) + 3;
                    }
                }

                for (int j = 2; j < k; j++)
                {
                    if (types[j] == "string")
                    {
                        rowContent = rowContent + titles[j] + " = '" + dt.Rows[i][j];
                        rowContent = AddStringEnd(j, rowContent, k);
                    }
                    else
                    {
                        rowContent = rowContent + titles[j] + " = " + dt.Rows[i][j];
                        rowContent = AddNumEnd(j, rowContent, k);
                    }
                }
                rowContent += "},\n";
                saveContent.Append(rowContent);
            }
            SaveContentEndAndSave(saveContent, saveFileName);
        }

        private void WriteToLuaProgressData(DataTable dt, string saveName, string fileName, int fileIndex=0)
        {
            string saveFileName = fileName;

            StringBuilder saveContent = new StringBuilder("local " + saveFileName + " = {}\n\n");
            saveContent.Append(saveFileName + "." + saveName + " = {\n");

            List<string> titles = GetTitles(dt);


            List<string> types = GetTypes(dt);


            for (int i = 2; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][0] == "")
                {
                    break;
                }
                string rowContent = "\t['" + dt.Rows[i][0] + "'] = {";
                for (int j = 2; j < dt.Columns.Count; j++)
                {
                    if (types[j] == "string")
                    {
                        string data = dt.Rows[i][j].ToString();
                        if (string.IsNullOrEmpty(data))
                            data = "nil";
                        rowContent = rowContent + titles[j] + " = '" + data;
                        rowContent = AddStringEnd(j, rowContent, Convert.ToInt32(dt.Columns.Count));
                    }
                    else
                    {
                        string data = dt.Rows[i][j].ToString();
                        if (string.IsNullOrEmpty(data))
                            data = "nil";
                        rowContent = rowContent + titles[j] + " = " + data;
                        rowContent = AddNumEnd(j, rowContent, Convert.ToInt32(dt.Columns.Count));
                    }
                }
                rowContent += "},\n";
                saveContent.Append(rowContent);
            }
            SaveContentEndAndSave(saveContent, saveFileName);
        }

        private void WriteToLua(DataTable dt, string saveName, string fileName, int fileIndex=0, bool bNotify = true)
        {
            string saveFileName = fileName;

            StringBuilder saveContent = new StringBuilder("local " + saveFileName + " = {}\n\n");
            saveContent.Append(saveFileName + "." + saveName + " = {\n");

            List<string> titles = GetTitles(dt);


            List<string> types = GetTypes(dt);


            for (int i = 2; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][0] == "")
                {
                    break;
                }
                string rowContent = "\t['" + dt.Rows[i][0] + "'] = {";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    if (types[j] == "string")
                    {
                        rowContent = rowContent + titles[j] + " = '" + dt.Rows[i][j];
                        rowContent = AddStringEnd(j, rowContent, dt.Columns.Count);
                    }
                    else
                    {
                        rowContent = rowContent + titles[j] + " = " + dt.Rows[i][j];
                        rowContent = AddNumEnd(j, rowContent, dt.Columns.Count);
                    }
                }
                rowContent += "},\n";
                saveContent.Append(rowContent);
            }
            SaveContentEndAndSave(saveContent, saveFileName, bNotify);
        }


        public string cliPath = "";
        public string servPath = "";
        public string excelPath = "";

        private void Form1_Load(object sender, EventArgs e)
        {
            Config.load();
            cliPath = Config.cliPath;
            servPath = Config.servPath;
            excelPath = Config.excelPath;

            Excel.Workbook indexBook = new Excel.Workbook("Index/INDEX.xlsx");
            Excel.Worksheet indexSheet = indexBook.Worksheets["index"];
            Excel.Cells data = indexSheet.Cells;
            SheetHeader header = new SheetHeader();
            header.readHeader(indexSheet);
            List<NameCatchIndexData> nameCatchIndexDatas = new List<NameCatchIndexData>();

            //读取需要索引的数据列表
            for (int row = 1; row < 200; row++)
            {
                if (data[row, 0].Value == null|| string.IsNullOrWhiteSpace(data[row, 0].Value.ToString()))
                {
                    break;
                }
                NameCatchIndexData rowData = new NameCatchIndexData();
                rowData.readData(data, row, header);
                nameCatchIndexDatas.Add(rowData);
            }
            NickNameColCatchManager nickNameColCatchManager = NickNameColCatchManager.getInstence();
            //打开各表，生成各名称ID转换
            foreach(NameCatchIndexData curIndex in nameCatchIndexDatas.ToArray())
            {
                string excelPath = Config.excelPath +"\\"+ curIndex.excelFileName+".xlsx";
                Excel.Workbook book = new Excel.Workbook(excelPath);
                Excel.Worksheet sheet = book.Worksheets[curIndex.sheetName];
                SheetHeader theHeader = new SheetHeader();
                theHeader.readHeader(sheet, curIndex.headRow - 1);
                int idColIndex = theHeader[curIndex.columName];
                if (idColIndex == -1)
                {
                    Debug.Error("{1}  列{0}不存在", curIndex.columName, curIndex.excelFileName + "["+ curIndex.sheetName+"]");
                    return;
                }
                int noteIndex = theHeader[curIndex.noteColName];
                if (noteIndex == -1)
                {
                    Debug.Error("{1}  列{0}不存在", curIndex.noteColName, curIndex.excelFileName + "[" + curIndex.sheetName+"]");
                    return;
                }


                Excel.Cells theDatas = sheet.Cells;
                for (int row = curIndex.dataRowBegin - 1; row < 100000; row++)
                {
                    nickNameColCatchManager.createCatch(curIndex.fieldName, curIndex.valueType);
                    if (theDatas[row, 0].Value == null || string.IsNullOrWhiteSpace(theDatas[row, 0].Value.ToString()))
                    {
                        break;
                    }
                    try
                    {
                        int id = theDatas[row, idColIndex].IntValue;
                        string nickName = theDatas[row, noteIndex].StringValue;
                        nickNameColCatchManager.addData(curIndex.fieldName, nickName, id);
                    }
                    catch (Exception ex)
                    {
                        Debug.Error("{0}表[{1}],第{2}行出错啦，错误信息为:\r\n  " + ex.ToString(), curIndex.excelFileName,curIndex.sheetName,row +1);
                    }
                }
            }

        }


        private void btnExpAll_Click(object sender, EventArgs e)
        {
            using (FolderBrowserDialog ofd = new FolderBrowserDialog())
            {
                string path = Path.GetFullPath(excelPath);
                MessageBox.Show(path);
                ofd.SelectedPath = path;
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    string ppath = ofd.SelectedPath;
                    MessageBox.Show("路径为  " + ppath);
                    DirectoryInfo di = new DirectoryInfo(path);
                    FileInfo[] fileInfos = di.GetFiles("*.xlsx");
                    int index = 0;
                    try
                    {
                        foreach (FileInfo fi in fileInfos)
                        {
                            DataTable dt = ReadExcel(fi.FullName);
                            string[] saveName = fi.Name.Split('.')[0].Split('-');

                            if (fi.Name.Equals("card_data"))
                            {
                                WriteToLuaCardData(dt, saveName[1], saveName[0], index);
                            }
                            else if (fi.Name.Equals("drop_base_data"))
                            {
                                WriteToLuaDropBaseData(dt, saveName[1], saveName[0], index);
                            }
                            else if (fi.Name.Equals("progress_data"))
                            {
                                WriteToLuaProgressData(dt, saveName[1], saveName[0], index);
                            }
                            else
                            {
                                WriteToLua(dt, saveName[1], saveName[0], index, false);
                            }
                            index = index + 1;
                        }
                    }
                    catch (Exception exp)
                    {
                        MessageBox.Show(string.Format("导出表 {0} 时出错啦\r\n{1}", fileInfos[index].Name,exp.ToString()));
                        return;
                    }
                    MessageBox.Show("全部导出成功^_^");
                }
                
            }    
        }

        private void btnOutCardInfo_Click(object sender, EventArgs e)
        {
            Excel.Workbook card_design_book = new Excel.Workbook(Config.card_designer_Path.path);
            Excel.Worksheet monster_sheet = card_design_book.Worksheets[Config.card_designer_Path.sheets[0]];
            Excel.Worksheet skill_sheet = card_design_book.Worksheets[Config.card_designer_Path.sheets[1]];
            Excel.Worksheet buff_sheet = card_design_book.Worksheets[Config.card_designer_Path.sheets[2]];
            Excel.Worksheet progress_sheet = card_design_book.Worksheets[Config.card_designer_Path.sheets[3]];

            //导出monster表
            Excel.Workbook opt_monster_book = new Excel.Workbook(Config.card_data_path.path);
            Excel.Worksheet opt_monster_sheet = opt_monster_book.Worksheets[Config.card_data_path.sheets[0]];
            SheetHeader designer_monster_header = new SheetHeader();
            designer_monster_header.readHeader(monster_sheet);
            designer_monster_header.readDataWithIndex("卡牌ID");
            SheetHeader monster_header = new SheetHeader();
            monster_header.readHeader(opt_monster_sheet);
            monster_header.readDataWithIndex("id",3);
            ExcelTableConvert.convert(designer_monster_header, monster_header,
                new string[] { "计算HP", "计算HP成长", "计算品质", "计算移动速度", "计算耗费" ,"寻敌范围","隐藏费用"},
                new string[] { "hp", "hp_grow", "quality", "move_speed","cost", "find_range", "ai_value" });
            opt_monster_book.Save(Config.card_data_path.path);
            Debug.Info("monster表转换完成~~~");
            //导出skill表
            Excel.Workbook opt_skill_book = new Excel.Workbook(Config.skill_data_path.path);
            Excel.Worksheet opt_skill_sheet = opt_skill_book.Worksheets[Config.skill_data_path.sheets[0]];
            SheetHeader designer_skill_header = new SheetHeader();
            designer_skill_header.readHeader(skill_sheet);
            designer_skill_header.readDataWithIndex("技能ID");
            SheetHeader skill_header = new SheetHeader();
            skill_header.readHeader(opt_skill_sheet);
            skill_header.readDataWithIndex("id",3);
            ExcelTableConvert.convert(designer_skill_header, skill_header,
                new string[] {"计算伤害","计算成长", "计算攻击距离" },
                new string[] { "power", "power_grow", "distance" });
            opt_skill_book.Save(Config.skill_data_path.path);
            Debug.Info("skill表转换完成~~~");
            //导出buff表
            Excel.Workbook opt_buff_book = new Excel.Workbook(Config.buff_data_path.path);
            Excel.Worksheet opt_buff_sheet = opt_buff_book.Worksheets[Config.buff_data_path.sheets[0]];
            SheetHeader designer_buff_header = new SheetHeader();
            designer_buff_header.readHeader(buff_sheet);
            designer_buff_header.readDataWithIndex("状态ID");
            SheetHeader buff_header = new SheetHeader();
            buff_header.readHeader(opt_buff_sheet);
            buff_header.readDataWithIndex("buff_id",3);
            ExcelTableConvert.convert(designer_buff_header, buff_header,
                new string[] { "计算伤害值", "计算伤害成长" },
                new string[] { "power", "power_grow" });
            opt_buff_book.Save(Config.buff_data_path.path);
            Debug.Info("buff表转换完成~~~");
            //导出process表
            Excel.Workbook opt_progress_book = new Excel.Workbook(Config.progress_data_path.path);
            Excel.Worksheet opt_progress_sheet = opt_progress_book.Worksheets[Config.progress_data_path.sheets[0]];
            SheetHeader designer_progress_header = new SheetHeader();
            designer_progress_header.readHeader(progress_sheet);
            designer_progress_header.readDataWithIndex("突破ID");
            SheetHeader process_header = new SheetHeader();
            process_header.readHeader(opt_progress_sheet);
            process_header.readDataWithIndex("id", 3);
            ExcelTableConvert.convert(designer_progress_header, process_header,
                new string[] { "消耗金币数量", "消耗道具ID1", "消耗道具数量1", "消耗道具ID2", "消耗道具数量2" },
                new string[] { "gold_count", "item_id1", "item_count1", "item_id2", "item_count2" });
            opt_progress_book.Save(Config.progress_data_path.path);
            Debug.Info("process表转换完成~~~");

        }

        private void btnCalELO_Click(object sender, EventArgs e)
        {
            new frmElo().ShowDialog();
        }
    }

    class NameCatchIndexData
    {
        public string fieldName;
        public string excelFileName;
        public string sheetName;
        public int headRow;
        public string columName;
        public string noteColName;
        public int dataRowBegin;
        public string valueType;

        public bool readData(Excel.Cells v_data, int v_row, SheetHeader v_header)
        {
            try
            {
                int fieldNameIdx = v_header["字段名"];
                int tableNameIdx = v_header["表名"];
                int sheetNameIdx = v_header["sheet名"];
                int columIndexIdx = v_header["列行数"];
                int colimNameIdx = v_header["列名"];
                int noteColNameIdx = v_header["备注名"];
                int dataRowBeginIdx = v_header["起始行"];
                int valueTypeIdx = v_header["值类型"];
                fieldName = v_data[v_row, fieldNameIdx].StringValue;
                excelFileName = v_data[v_row, tableNameIdx].StringValue;
                sheetName = v_data[v_row, sheetNameIdx].StringValue;
                headRow = v_data[v_row, columIndexIdx].IntValue;
                columName = v_data[v_row, colimNameIdx].StringValue;
                noteColName = v_data[v_row, noteColNameIdx].StringValue;
                dataRowBegin = v_data[v_row, dataRowBeginIdx].IntValue;
                valueType = v_data[v_row, valueTypeIdx].StringValue;
            }
            catch (Exception ex)
            {
                Debug.Error(ex.ToString());
                return false;
            }
            return true;
        }
    }
}
