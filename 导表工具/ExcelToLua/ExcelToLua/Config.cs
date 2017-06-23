using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.IO;

namespace ExcelToLua
{
    struct ExcelPathConfig
    {
        public string path;
        public string[] sheets;
    }
    static class Config
    {
        public static ExcelPathConfig card_designer_Path = new ExcelPathConfig();
        public static ExcelPathConfig card_data_path = new ExcelPathConfig();
        public static ExcelPathConfig skill_data_path = new ExcelPathConfig();
        public static ExcelPathConfig buff_data_path = new ExcelPathConfig();
        public static ExcelPathConfig progress_data_path = new ExcelPathConfig();
        public static ExcelPathConfig elo_data_path = new ExcelPathConfig();
        public static string cliPath = "";
        public static string servPath = "";
        public static string excelPath = "";
        public static void load()
        {
            XmlDocument xmlPathDoc = new XmlDocument();
            if (!File.Exists("config.xml"))
            {
                Debug.Info("配置文件config.xml缺失");
                return;
            }
            xmlPathDoc.Load("config.xml");
            XmlNode xmlroot = xmlPathDoc.SelectSingleNode("root");
            //设置策划表路径
            XmlNode xmlPathNode = xmlroot.SelectSingleNode("path");
            cliPath = xmlPathNode.Attributes["cli"].Value;
            servPath = xmlPathNode.Attributes["serv"].Value;
            excelPath = xmlPathNode.Attributes["excelPath"].Value;
            if (!Directory.Exists(cliPath))
            {
                Directory.CreateDirectory(cliPath);
                Debug.Info("客户端文件夹 {0} 不存在，我创建了他", cliPath);
            }
            if (!Directory.Exists(servPath))
            {
                Directory.CreateDirectory(servPath);
                Debug.Info("服务端文件夹 {0} 不存在，我创建了他", servPath);
            }
            //设置设计表相关路径
            XmlNode xml_card_design_node = xmlroot.SelectSingleNode("cardDesigner");
            card_designer_Path.path = xml_card_design_node.Attributes["path"].Value;
            string strSheets = xml_card_design_node.Attributes["sheets"].Value;
            card_designer_Path.sheets = strSheets.Split(';');

            XmlNode xml_card_data_node = xmlroot.SelectSingleNode("card_data");
            card_data_path.path = xml_card_data_node.Attributes["path"].Value;
            strSheets = xml_card_data_node.Attributes["sheets"].Value;
            card_data_path.sheets = strSheets.Split(';');

            XmlNode xml_skill_data_node = xmlroot.SelectSingleNode("skill_data");
            skill_data_path.path = xml_skill_data_node.Attributes["path"].Value;
            skill_data_path.sheets = xml_skill_data_node.Attributes["sheets"].Value.Split(';');

            XmlNode xml_buff_data_node = xmlroot.SelectSingleNode("buff_data");
            buff_data_path.path = xml_buff_data_node.Attributes["path"].Value;
            buff_data_path.sheets = xml_buff_data_node.Attributes["sheets"].Value.Split(';');

            XmlNode xml_progress_data_node = xmlroot.SelectSingleNode("progress_data");
            progress_data_path.path = xml_progress_data_node.Attributes["path"].Value;
            progress_data_path.sheets = xml_progress_data_node.Attributes["sheets"].Value.Split(';');


            XmlNode xml_elo_data_node = xmlroot.SelectSingleNode("elo_data");
            elo_data_path.path = xml_elo_data_node.Attributes["path"].Value;
            elo_data_path.sheets = xml_elo_data_node.Attributes["sheets"].Value.Split(';');

        }
        private static string __rectify_folder_path(string v_path)
        {
            if (v_path.Last<char>() != '\\' || v_path.Last<char>() != '/')
                return v_path + "\\";
            return v_path;
        }
    }
}
