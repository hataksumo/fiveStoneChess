using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using EXCEL = Aspose.Cells;

namespace ExcelToLua
{
    abstract class CellValue
    {
        protected abstract bool _OnInit(string v_strCellVal);
        public abstract bool Equals(CellValue v_other);
        protected abstract LuaValue _OnGetLuaValue();
        public abstract string toKeyString();
        public bool _isNull;
        public bool _isMiss;
        protected CellValue()
        {
            _isNull = false;
            _isMiss = false;
        }
        public virtual LuaValue getLuaValue()
        {
            if (_isMiss)
            {
                LuaNil rtn = new LuaNil();
                rtn.init(false);
                return rtn;
            }
            if (_isNull)
            {
                LuaNil rtn = new LuaNil();
                rtn.init(true);
                return rtn;
            }
            return _OnGetLuaValue();
        }
        public virtual bool init(EXCEL.Cell v_cellData)
        {
            if (v_cellData.Value == null)
            {
                Debug.Info("在{{{0},{1}}} 出现空格子", v_cellData.Row, v_cellData.Column);
                _isMiss = true;
                return false;
            }
            string strVal = v_cellData.StringValue;
            if (strVal == "[invalid]")
            {
                _isMiss = true;
                return true;
            }
            if (strVal == "[nil]")
            {
                _isNull = true;
                return true;
            }
            return _OnInit(strVal);
        }

        public bool init(string v_strVal)
        {
            if (v_strVal == "[invalid]")
            {
                _isMiss = true;
                return true;
            }
            if (v_strVal == "[nil]")
            {
                _isNull = true;
                return true;
            }
            return _OnInit(v_strVal);
        }
    }

    class IntVal : CellValue
    {
        protected int _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            if (!int.TryParse(v_strCellVal, out _data))
            {
                Debug.ExcelError(v_strCellVal + "  数据格式不对");
                return false;
            }
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            IntVal obj = v_other as IntVal;
            return obj != null && obj._data == _data;
        }
        protected override LuaValue _OnGetLuaValue()
        {
            LuaInteger rtn = new LuaInteger();
            rtn.init(_data);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }

    class StringVal : CellValue
    {
        protected string _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            _data = v_strCellVal.Replace("\r\n","\\r\\n").Replace("\"","\\\"");
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            StringVal obj = v_other as StringVal;
            return obj != null && obj._data == _data;
        }
        protected override LuaValue _OnGetLuaValue()
        {
            LuaString rtn = new LuaString();
            rtn.init(_data);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }

    class IDVal : CellValue
    {
        protected string _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            _data = v_strCellVal;
            if (_data == "nil" || _data == "null" || _data == "NULL")
            {
                _isNull = true;
            }
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            IDVal obj = v_other as IDVal;
            return obj != null && obj._data == _data;
        }
        protected override LuaValue _OnGetLuaValue()
        {
            LuaString rtn = new LuaString();
            rtn.init(_data);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }

    class EnumVal : CellValue
    {
        protected int _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            if (!int.TryParse(v_strCellVal,out _data))
            {
                _isNull = true;
                return false;
            }
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            EnumVal obj = v_other as EnumVal;
            return obj != null && obj._data == _data;
        }
        protected override LuaValue _OnGetLuaValue()
        {
            LuaInteger rtn = new LuaInteger();
            rtn.init(_data);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }



    class IDListVal : CellValue
    {
        protected string m_type;
        protected bool m_successInit = false;
        public IDListVal(string v_type)
        {
            m_type = v_type;
        }

        protected string[] _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            string[] nameDatas = v_strCellVal.Split(',','，');
            _data = new string[nameDatas.Length];
            NickNameColCatchManager nickNameColCatchManager = NickNameColCatchManager.getInstence();
            for (int i = 0; i < nameDatas.Length; i++)
            {
                if (!nickNameColCatchManager.checkData(m_type, nameDatas[i], out _data[i]))
                {
                    Debug.Error("在[{0}]表中没有找到名为[{1}]的类型为{2}的ID", m_type, nameDatas[i], m_type);
                    return false;
                }
            }
            m_successInit = true;
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            IDListVal obj = v_other as IDListVal;
            return obj != null && obj._data == _data;
        }
        protected override LuaValue _OnGetLuaValue()
        {
            if (m_successInit)
            {
                LuaString rtn = new LuaString();
                rtn.init(string.Join(",", _data));
                return rtn;
            }
            else
            {
                return new LuaNil();
            }     
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }


    class BoolVal : CellValue
    {
        protected bool _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            byte val;
            if (!byte.TryParse(v_strCellVal, out val))
            {
                if (v_strCellVal == "true" || v_strCellVal == "TRUE")
                {
                    _data = true;
                    return true;
                }
                else if (v_strCellVal == "false" || v_strCellVal == "FALSE")
                {
                    _data = false;
                    return true;
                }
                Debug.ExcelError(v_strCellVal + "  数据格式不对");
                return false;
            }
            if (val == 0) _data = false;
            else _data = true;
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            BoolVal obj = v_other as BoolVal;
            return obj != null && obj._data == _data;
        }

        protected override LuaValue _OnGetLuaValue()
        {
            LuaBoolean rtn = new LuaBoolean();
            rtn.init(_data);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }

    class ProbVal : CellValue
    {
        protected short _data10k;
        protected override bool _OnInit(string v_strCellVal)
        {
            if (!short.TryParse(v_strCellVal, out _data10k))
            {
                Debug.ExcelError(v_strCellVal + "  数据格式不对");
                return false;
            }
            if (_data10k < -1 && _data10k > 10000)
            {
                Debug.ExcelError(_data10k + "必须是万分制的数");
                return false;
            }
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            ProbVal obj = v_other as ProbVal;
            return obj != null && obj._data10k == _data10k;
        }

        protected override LuaValue _OnGetLuaValue()
        {
            LuaProb10k rtn = new LuaProb10k();
            rtn.init(_data10k);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data10k.ToString();
        }
    }

    class FloatVal : CellValue
    {
        protected float _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            if (!float.TryParse(v_strCellVal, out _data))
            {
                Debug.ExcelError(v_strCellVal + "  数据格式不对");
                return false;
            }
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            FloatVal obj = v_other as FloatVal;
            return obj != null && obj._data == _data;
        }
        protected override LuaValue _OnGetLuaValue()
        {
            LuaDouble rtn = new LuaDouble();
            rtn.init(_data);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }

    class PercentVal : CellValue
    {
        protected float _data;
        protected override bool _OnInit(string v_strCellVal)
        {
            if (!float.TryParse(v_strCellVal, out _data))
            {
                Debug.ExcelError(v_strCellVal + "  数据格式不对");
                return false;
            }
            if (_data > 100 || _data < 0)
            {
                Debug.ExcelError(v_strCellVal + " percentVal必须是1~100的小数");
                return false;
            }
            _data = (float)Math.Round(_data / 100.0, 2);
            return true;
        }
        public override bool Equals(CellValue v_other)
        {
            PercentVal obj = v_other as PercentVal;
            return obj != null && obj._data == _data;
        }
        protected override LuaValue _OnGetLuaValue()
        {
            LuaPercent rtn = new LuaPercent();
            rtn.init(_data);
            return rtn;
        }
        public override string toKeyString()
        {
            return _data.ToString();
        }
    }

}
