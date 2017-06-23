﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    class LuaClass
    {
        protected string _className;
        protected string _baseClassName;
        protected CtorFunction _ctor;

        protected List<LuaMemberFunction> _memberFunctions;
        public LuaClass(string v_className,string v_baseClass = null)
        {
            _className = v_className;
            _baseClassName = v_baseClass;
            _memberFunctions = new List<LuaMemberFunction>();
        }
        public void setCtorFunc(CtorFunction v_ctor)
        {
            _ctor = v_ctor;
        }
        public void addFunction(LuaMemberFunction v_function)
        {
            _memberFunctions.Add(v_function);
        }

        public virtual void output(StringBuilder v_sb)
        {
            //输出标识符
            const int NStar = 13;
            v_sb.Append("--");
            for (int i = 0; i < NStar; i++)
                v_sb.Append("*");
            v_sb.AppendFormat("<=={0}==>",_className);
            for (int i = 0; i < NStar; i++)
                v_sb.Append("*");
            v_sb.Append("\r\n");
            //声明类
            v_sb.AppendFormat("{0} = class({1})\r\n", _className, _baseClassName);
            v_sb.AppendLine();
            //输出构造函数
            _ctor.output(v_sb, _className);
            v_sb.AppendLine();
            //输出其他成员函数
            for (int i = 0; i < _memberFunctions.Count; i++)
            {
                _memberFunctions[i].output(v_sb, _className);
                v_sb.AppendLine();
            }
            //输出结束符
            v_sb.Append("--");
            for (int i = 0; i < NStar; i++)
                v_sb.Append("*");
            v_sb.Append("==>class-end<==");
            for (int i = 0; i < NStar; i++)
                v_sb.Append("*");
            v_sb.Append("\r\n\r\n");
        }

    }

    class ConfigData : LuaClass
    {
        protected _SheetHeader _excelHeader;
        public ConfigData(string v_className)
            : base("_"+v_className + "ConfigData","ConfigBase")
        {
            
        }
        public void init(_SheetHeader v_excelHeader)
        {
            _excelHeader = v_excelHeader;
            _SheetHeaderData[] headerData = _excelHeader.DataHeaderData;
            //添加构造函数
            ConfigData_Ctor ctor = new ConfigData_Ctor();
            ctor.init(_excelHeader.DataHeaderData);
            setCtorFunc(ctor);
            //添加成员函数
            for (int i = 0; i < _excelHeader.DataColumnNum; i++)
            {
                ConfigData_get getFun = new ConfigData_get(headerData[i].Name, i + 1);
                _memberFunctions.Add(getFun);
            }
        }
    }

    class ConfigDataManager : LuaClass
    {
        protected SheetBin _sheetBin;
        //protected _SheetDesc _sheetDesc;
        protected LuaArray _configData;
        protected string _configDataClassName;
        public ConfigDataManager(string v_className)
            : base("_" + v_className + "ConfigDataManager", "ConfigManagerBase")
        {
            _configDataClassName = v_className + "ConfigData";
        }
        public void init(SheetBin v_sheetBin/*,_SheetDesc v_sheetDesc*/)
        {
            //_sheetBin = v_sheetBin;
            //_sheetDesc = v_sheetDesc;
            //_configData = v_sheetBin.getLuaTableConfig();
            //ConfigDataManager_ctor cctor = new ConfigDataManager_ctor();
            //string[] pmKey = _sheetDesc.PrimaryKey;
            //List<string[]> indexes = _sheetDesc.Indexes;
            //cctor.init(pmKey, indexes, _configData, _configDataClassName);
            //setCtorFunc(cctor);
            ////设置主键索引函数
            //string[] v_pmKey = new string[pmKey.Length];
            //for (int i = 0; i < v_pmKey.Length; i++)
            //{
            //    v_pmKey[i] = "v_" + pmKey[i];
            //}
            //ConfigDataManager_indexFun pmIdxFun = new ConfigDataManager_indexFun("getDataBy", v_pmKey);
            //pmIdxFun.init(pmKey);
            //addFunction(pmIdxFun);
            ////设置其他索引函数
            //int idxLen = indexes == null ? 0 : indexes.Count;
            //for (int i = 0; i < idxLen; i++)
            //{
            //    string[] v_indexKey = new string[indexes[i].Length];
            //    for (int j = 0; j < v_indexKey.Length; j++)
            //    {
            //        v_indexKey[j] = "v_" + indexes[i][j];
            //    }
            //    ConfigDataManager_indexFun idxFun =
            //        new ConfigDataManager_indexFun("getDataBy", v_indexKey);
            //    idxFun.init(indexes[i]);
            //    addFunction(idxFun);
            //}

        }

        public static string getIndexMemoName(string[] v_index)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("self._index");
            foreach (string indexKey in v_index)
            {
                sb.Append("_");
                sb.Append(indexKey);
            }
            return sb.ToString();
        }
    }

    abstract class LuaMemberFunction
    {
        protected string _functionName;
        protected string[] _params;
        public LuaMemberFunction(string v_functionName, string[] v_params = null)
        {
            _functionName = v_functionName;
            _params = v_params;
        }

        protected void _Output_t(StringBuilder v_sb, int v_level)
        {
            for (int i = 0; i < v_level; i++)
                v_sb.Append('\t');
        }
        public virtual void output(StringBuilder v_sb, string v_className)
        {
            v_sb.AppendFormat("function {0}:{1}(", v_className, _functionName);
            int len = _params == null ? 0 : _params.Length;
            for (int i = 0; i < len; i++)
            {
                if (i > 0)
                    v_sb.Append(",");
                v_sb.Append(_params[i]);
            }
            v_sb.AppendLine(")");
            _outputBody(v_sb, v_className);
            v_sb.Append("end\r\n");
        }
        protected abstract void _outputBody(StringBuilder v_sb, string v_className);
    }

    abstract class CtorFunction : LuaMemberFunction
    {
        public CtorFunction()
            : base("Ctor",new string[]{"v_data"})
        {
 
        }
    }

    class ConfigData_Ctor : CtorFunction
    {
        protected _SheetHeaderData[] _memberVarList;
        public ConfigData_Ctor()
        {

        }

        public void init(_SheetHeaderData[] v_memberVarList)
        {
            _memberVarList = v_memberVarList;
        }

        protected override void _outputBody(StringBuilder v_sb, string v_className)
        {
            if (_memberVarList == null)
            {
                Debug.Exception(v_className + "类构造函数没有初始化成员列表");
            }
            int len = _memberVarList.Length;
            string v_data = _params[0];
            for (int i = 0; i < len; i++)
            {
                _Output_t(v_sb, 1);
                v_sb.AppendFormat("self._data[{0}] = v_data.{1}--{2}\r\n",
                    i + 1,_memberVarList[i].Name, _memberVarList[i].Chinese);
            }
        }
    }

    class ConfigDataManager_Ctor : CtorFunction
    {
        protected string[] _primaryKey;
        protected List<string[]> _indexes;
        protected string _primaryKeyPoolName;
        protected string[] _indexKeyPoolNames;
        public void init(string[] v_primaryKey, List<string[]> v_indexes)
        {
            _primaryKey = v_primaryKey;
            _indexes = v_indexes;
            _primaryKeyPoolName = "self._index";
            foreach (string str in _primaryKey)
            {
                _primaryKeyPoolName = _primaryKeyPoolName + "_" + str;
            }
            _indexKeyPoolNames = new string[_indexes.Count];
            foreach (string[] idxStr in _indexes)
            {
                string idxKeyPoolName = "self._index";
                foreach (string str in idxStr)
                {
                    idxKeyPoolName = idxKeyPoolName + "_" + str;
                }
            }
        }

        protected override void _outputBody(StringBuilder v_sb, string v_className)
        {
            _Output_t(v_sb, 1);
            v_sb.AppendFormat("{0} = {}\r\n",_primaryKeyPoolName);
            foreach (string indexKey in _indexKeyPoolNames)
            {
                _Output_t(v_sb, 1);
                v_sb.AppendFormat("{0} = {}\r\n", indexKey);
            }
        }
    }

    class ConfigData_get : LuaMemberFunction
    {
        protected int _index;
        public ConfigData_get(string v_name,int v_index)
            :base("get_"+v_name)
        {
            _index = v_index;
        }

        protected override void _outputBody(StringBuilder v_sb, string v_className)
        {
            _Output_t(v_sb, 1);
            v_sb.AppendFormat("return self._data[{0}]\r\n", _index);
        }
    }

    class ConfigDataManager_ctor : CtorFunction
    {
        //protected ExcelHeader _header;
        protected string[] _primaryKey;
        protected List<string[]> _indexes;
        protected LuaArray _configData;
        protected string _configDataClassName;
        public ConfigDataManager_ctor()
        {
            
        }
        public void init(string[] v_primaryKey,
            List<string[]> v_indexes, LuaArray v_configData, string v_configDataClassName)
        {
            //_header = v_header;
            _primaryKey = v_primaryKey; 
            _indexes = v_indexes;
            _configData = v_configData;
            _configDataClassName = v_configDataClassName;
        }

        protected override void _outputBody(StringBuilder v_sb, string v_className)
        {
            _Output_t(v_sb, 1);
            _configData.outputSrc(v_sb, 1, "local configData");
            v_sb.AppendLine();
            _Output_t(v_sb, 1);

            v_sb.AppendFormat("for i=1,#configData do\r\n");
            //插入数据
            _Output_t(v_sb, 2);
            v_sb.AppendFormat("local rawData = {0}:new(configData[i])\r\n", _configDataClassName);
            _Output_t(v_sb, 2);
            v_sb.AppendFormat("table.insert(_data,rawData)\r\n");
            _OutputIndex(v_sb, _primaryKey, "pmKey");


            int indexLen = _indexes == null ? 0 : _indexes.Count;
            for (int i = 0; i < indexLen; i++)
            {
                _OutputIndex(v_sb, _indexes[i], "idxKey"+(i+1));
            }
            _Output_t(v_sb, 1);
            v_sb.AppendFormat("end\r\n");
            _Output_t(v_sb, 1);
            v_sb.Append("self._len = #configData\r\n");
        }

        protected void _OutputIndex(StringBuilder v_sb,string[] v_index,string v_keyName)
        {
            //插入主键
            string lastData = ConfigDataManager.getIndexMemoName(v_index);
            _Output_t(v_sb, 2);
            v_sb.AppendLine("--"+v_keyName);
            for (int i = 0; i < _primaryKey.Length; i++)
            {
                _Output_t(v_sb, 2);
                string keyName = string.Format("{0}_{1}", v_keyName, i);
                v_sb.AppendFormat("local {0} = configData[i].{1}\r\n", keyName, _primaryKey[i]);
                if (i < _primaryKey.Length - 1)
                {
                    _Output_t(v_sb, 2);
                    v_sb.AppendFormat("{0}[{1}] = {{}}\r\n", lastData,keyName);
                    lastData = lastData + string.Format("[{0}]", keyName);
                }
                else
                {
                    _Output_t(v_sb, 2);
                    v_sb.AppendFormat("{0}[{1}] = i\r\n", lastData, keyName);
                }
            }
        }
    }

    class ConfigDataManager_indexFun : LuaMemberFunction
    {
        protected string[] _indexKey;
        public ConfigDataManager_indexFun(string v_funName, string[] v_params = null)
            : base(v_funName, v_params)
        {

        }
        public void init(string[] v_index)
        {
            _indexKey = v_index;
            StringBuilder sb = new StringBuilder();
            sb.Append(_functionName);
            for (int i = 0; i < _indexKey.Length; i++)
            {
                sb.Append("_" + _indexKey[i]);
            }
            _functionName = sb.ToString();
        }
        protected override void _outputBody(StringBuilder v_sb, string v_className)
        {
            string indexMemoPoolName = ConfigDataManager.getIndexMemoName(_indexKey);
            for (int i = 0; i < _params.Length; i++)
            {
                _Output_t(v_sb, 1);
                string key = string.Format("idx_{0}", _indexKey[i]);
                v_sb.AppendFormat("local {0} = rawget({1},{2})\r\n", key, indexMemoPoolName,_params[i]);
                _Output_t(v_sb, 1);
                v_sb.AppendFormat("if {0} == nil then\r\n", key);
                _Output_t(v_sb, 2);
                v_sb.Append("return nil\r\n");
                _Output_t(v_sb, 1);
                v_sb.Append("end\r\n");
                indexMemoPoolName = key;
            }
            _Output_t(v_sb, 1);
            v_sb.AppendFormat("return self.data[{0}]\r\n", indexMemoPoolName);

        }


    }

}
