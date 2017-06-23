using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EXCEL = Aspose.Cells;

namespace ExcelToLua
{
    class _SheetHeaderData
    {
        public string Name;
        public string Type;
        public string Chinese;
        public int colIndex;
    }


    class _SheetHeader
    {
        protected List<_SheetHeaderData> _headerData;
        protected _SheetHeaderData _noteHeader;
        protected Dictionary<string, int> _index;
        protected List<int> _dataHeaderIndex;
        protected Dictionary<string, int> _dataIndex;
        public _SheetHeader(EXCEL.Cells v_datas)
        {
            _headerData = new List<_SheetHeaderData>();
            _dataHeaderIndex = new List<int>();
            _index = new Dictionary<string, int>();
            _dataIndex = new Dictionary<string, int>();
            for (int column = 0; column < 200; column++)
            {
                _SheetHeaderData data = new _SheetHeaderData();
                data.Name = v_datas[0, column].StringValue;
                data.Type = v_datas[1, column].StringValue;
                data.Chinese = v_datas[2, column].StringValue;
                data.colIndex = column;
                _headerData.Add(data);
                _index.Add(data.Name, column);
                string englishName = v_datas[0, column].StringValue;
                if (string.IsNullOrEmpty(englishName))
                    break;
                if (englishName.Length>4&&englishName.Substring(0, 4) == "fzl_")
                {
                    continue;
                }
                if (englishName == "#note")
                {
                    _noteHeader = data;
                    continue;
                }
                _dataIndex.Add(data.Name, _dataHeaderIndex.Count);
                _dataHeaderIndex.Add(column);
            }
        }

        public _SheetHeaderData Note
        {
            get { return _noteHeader; }
        }

        public int DataColumnNum
        {
            get { return _dataHeaderIndex.Count; }
        }

        public _SheetHeaderData[] DataHeaderData
        {
            get
            {
                _SheetHeaderData[] dataHeaders = new _SheetHeaderData[_dataHeaderIndex.Count];
                for (int i = 0; i < _dataHeaderIndex.Count; i++)
                {
                    dataHeaders[i] = _headerData[_dataHeaderIndex[i]];
                }
                return dataHeaders.ToArray();
            }
        }

        public int getColIndex(string v_headerName)
        {
            if (_index.ContainsKey(v_headerName))
            {
                int idx = _index[v_headerName];
                return _headerData[idx].colIndex;
            }
            else
                return -1;
        }

        public int getDataColIndex(string v_headerName)
        {
            if (_dataIndex.ContainsKey(v_headerName))
            {
                return _dataIndex[v_headerName];
            }
            else
                return -1;
        }


        public CellValue checkData(EXCEL.Cell v_cell, int v_row, int v_col)
        {
            int dataIndex = _dataHeaderIndex[v_col];
            string type = _headerData[dataIndex].Type;
            CellValue val = null;
            bool success = false;
            switch (type)
            {
                case "ID":
                    val = new IDVal();
                    success = val.init(v_cell);
                    break;
                case "number":
                    val = new FloatVal();
                    success = val.init(v_cell);
                    break;
                case "string":
                    val = new StringVal();
                    success = val.init(v_cell);
                    break;
                case "int":
                    val = new IntVal();
                    success = val.init(v_cell);
                    break;
                case "prob":
                    val = new ProbVal();
                    success = val.init(v_cell);
                    break;
                case "float":
                    val = new FloatVal();
                    success = val.init(v_cell);
                    break;
                case "percent":
                    val = new PercentVal();
                    success = val.init(v_cell);
                    break;
                case "bool":
                    val = new BoolVal();
                    success = val.init(v_cell);
                    break;
                default:
                    string id;
                    NickNameColCatchManager nickNameColCatchManager = NickNameColCatchManager.getInstence();

                    if (type.EndsWith(":list"))
                    {
                        string eleType = type.Substring(0, type.Length - 5);
                        val = new IDListVal(eleType);
                        success = val.init(v_cell);
                    }
                    else if (nickNameColCatchManager.checkData(type, v_cell.Value, out id))
                    {
                        ValueType valType = nickNameColCatchManager.getSetsValType(type);
                        if (valType == ValueType.字符串)
                        {
                            val = new IDVal();
                        }
                        else if (valType == ValueType.整数)
                        {
                            val = new EnumVal();
                        }       
                        success = val.init(id);
                    }
                    break;
            }
            if (success)
            {
                return val;
            }
            else
            {
                val = new IDVal();
                success = val.init("[nil]");
                Debug.Exception("没有找到名为{0}类型为{1}的ID", v_cell.Value, type);
                return null;
            }
        }
    }


    class SheetBin
    {
        public static int ROW_MAX_ELEMENT = -1;
        protected _SheetHeader _header;
        protected List<CellValue[]> _data;
        protected List<string> _notes;
        IndexSheetData _indexData;
        protected string _sheetName;
        protected bool _hasPmKey;
        protected int _pmkeyCol;
        public SheetBin()
        {
            _data = new List<CellValue[]>();
            _notes = new List<string>();
        }
        public bool init(EXCEL.Worksheet v_workSheet, IndexSheetData v_indexData,int v_rowBegin=3)
        {
            _indexData = v_indexData;
            _sheetName = v_indexData.sheetName;
            EXCEL.Cells datas = v_workSheet.Cells;
            _header = new _SheetHeader(datas);
            int columnNum = _header.DataColumnNum;
            for(int rowNum = v_rowBegin; rowNum < 100000; rowNum++)
            {
                if (datas[rowNum, 0].Value == null||string.IsNullOrEmpty(datas[rowNum, 0].Value.ToString()))
                    break;
                CellValue[] rowData = new CellValue[columnNum];
                //读取常规列
                for (int i = 0; i < columnNum; i++)
                {
                    int col = _header.DataHeaderData[i].colIndex;
                    string name = _header.DataHeaderData[i].Name;
                    try
                    {
                        rowData[i] = _header.checkData(datas[rowNum, col], rowNum, i);
                    }
                    catch (Exception ex)
                    {
                        Debug.Error("sheet {3}: {0}行{1}列读取数据时报错,报错信息为：\r\n{2}", rowNum, i,ex.ToString(), v_indexData.sheetName);
                        return false;
                    }
                }
                _data.Add(rowData);
                //读取注释列
                if (_header.Note != null)
                {
                    int note_col = _header.Note.colIndex;
                    string note = datas[rowNum, note_col].Value as string;
                    _notes.Add(note);
                }
                else
                {
                    _notes.Add(null);
                }
            }
            _hasPmKey = false;
            if (!string.IsNullOrWhiteSpace(_indexData.pmKey))
            {
                _pmkeyCol = _header.getDataColIndex(_indexData.pmKey);
                if (_pmkeyCol != -1)
                {
                    _hasPmKey = true;
                }
                else
                {
                    Debug.Exception("主键未找到，表头没有名为{0}的列", _indexData.pmKey);
                }
            }

            return true;
        }
        public LuaTable getLuaTableConfig()
        {
            _SheetHeaderData[] headerData = _header.DataHeaderData;
            int rows = _data.Count;
            int columns = _header.DataColumnNum;
            LuaTable config = null;

            if (_hasPmKey)
            {
                LuaMap tmp = new LuaMap();
                tmp.init(true);
                for (int i = 0; i < rows; i++)
                {
                    LuaMap rowConfig = new LuaMap();
                    rowConfig.init(false, ROW_MAX_ELEMENT);
                    for (int j = 0; j < columns; j++)
                    {
                        rowConfig.addData(headerData[j].Name, _data[i][j].getLuaValue());
                    }

                    if (!tmp.addData(_data[i][_pmkeyCol].toKeyString(), rowConfig, _notes[i]))
                    {
                        Debug.Exception("主键 {0} 重复", _data[i][_pmkeyCol].toKeyString());
                    }
                }
                config = tmp;
            }
            else
            {
                LuaArray tmp = new LuaArray();
                tmp.init(true,true, ROW_MAX_ELEMENT);
                for (int i = 0; i < rows; i++)
                {
                    LuaMap rowConfig = new LuaMap();
                    rowConfig.init();
                    for (int j = 0; j < columns; j++)
                    {
                        rowConfig.addData(headerData[j].Name, _data[i][j].getLuaValue());
                    }
                    tmp.addData(rowConfig,_notes[i]);
                }
                config = tmp;
            }
            return config;
        }

        public LuaMap[] getGroupIndexes()
        {
            if (_indexData.groupIndex == null)
                return null;
            LuaMap[] rtn = new LuaMap[_indexData.groupIndex.Length];
            for (int i = 0; i < _indexData.groupIndex.Length; i++)
            {
                rtn[i] = new LuaMap();
                rtn[i].init(true);
            }
            int[][] colIndex = new int[_indexData.groupIndex.Length][];
            for (int i = 0; i < _indexData.groupIndex.Length; i++)
            {
                string[] theIndex = _indexData.groupIndex[i];
                colIndex[i] = new int[theIndex.Length];
                for (int j = 0; j < theIndex.Length; j++)
                {
                    colIndex[i][j] = _header.getDataColIndex(theIndex[j]);
                }
            }

            for (int i = 0; i < _data.Count; i++)
            {
                for (int j = 0; j < colIndex.Length; j++)
                {
                    
                    string key = "[\"";
                    for (int k = 0; k < colIndex[j].Length; k++)
                    {
                        if (k > 0)
                            key = key + "_";
                        int col = colIndex[j][k];
                        key += _data[i][col].toKeyString();
                    }
                    key += "\"]";
                    if (!rtn[j].cointainKey(key))
                    {
                        LuaArray arr = new LuaArray();
                        arr.init(false, false, 8);
                        rtn[j].addData(key, arr);
                    }
                    LuaArray theArr = rtn[j][key] as LuaArray;
                    if (_hasPmKey)
                    {
                        theArr.addData(_data[i][_pmkeyCol].getLuaValue());
                    }
                    else
                    {
                        theArr.addData(new LuaInteger(i));
                    }
                }
            }

            return rtn;
        }

        public LuaMap[] getUniqueIndexes()
        {
            if (_indexData.uniqueIndex == null)
                return null;
            LuaMap[] rtn = new LuaMap[_indexData.uniqueIndex.Length];
            for (int i = 0; i < _indexData.uniqueIndex.Length; i++)
            {
                rtn[i] = new LuaMap();
                rtn[i].init();
            }
            int[][] colIndex = new int[_indexData.uniqueIndex.Length][];
            for (int i = 0; i < _indexData.uniqueIndex.Length; i++)
            {
                string[] theIndex = _indexData.uniqueIndex[i];
                colIndex[i] = new int[theIndex.Length];
                for (int j = 0; j < theIndex.Length; j++)
                {
                    colIndex[i][j] = _header.getDataColIndex(theIndex[j]);
                }
            }

            for (int i = 0; i < _data.Count; i++)
            {
                for (int j = 0; j < colIndex.Length; j++)
                {

                    string key = "[\"";
                    for (int k = 0; k < colIndex[j].Length; k++)
                    {
                        if (k > 0)
                            key = key + "_";
                        int col = colIndex[j][k];
                        key += _data[i][col].toKeyString();
                    }
                    key += "\"]";

                    if (_hasPmKey)
                    {
                        rtn[j].addData(key, _data[i][_pmkeyCol].getLuaValue());
                    }
                    else
                    {
                        rtn[j].addData(key, new LuaInteger(i));
                    }
                }
            }

            return rtn;
        }



        public _SheetHeader SheetHeader
        {
            get 
            {
                return _header;
            }
        }
    }
}
