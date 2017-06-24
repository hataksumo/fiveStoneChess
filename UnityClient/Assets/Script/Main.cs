using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using cc = CCAction;

class Main : MonoBehaviour
{
    public InputField ipAddress;
    public InputField iptPort;
    public InputField content;
    public Text dataFrmSrv;
    protected string msg = "";
    protected cc.ActionManager m_actionManager;
    protected static Main Client;

    public Main()
    {
        m_actionManager = new cc.ActionManager();
    }

    public static Main GetInstence()
    {
        return Client;
    }

    // Use this for initialization
    void Start ()
    {
        Debug.Log("start");
        ipAddress.text = "127.0.0.1";
        iptPort.text = "6370";
        Client = this;
    }
	
	// Update is called once per frame
	void Update ()
    {
        m_actionManager.update(Time.deltaTime);
    }

    public void connectToServ()
    {
        NetworkHelpper nh = NetworkHelpper.getInstence();
        string ip = ipAddress.text;
        int port = int.Parse(iptPort.text);
        nh.connToSrv(ip, port);
    }

    public void sendData()
    {
        NetworkHelpper nh = NetworkHelpper.getInstence();
        nh.writeData(System.Text.Encoding.UTF8.GetBytes(content.text));
    }

    public void showTxtFrmSrv(string v_msg)
    {
        msg = msg + v_msg + "\r\n";
        dataFrmSrv.text = msg;
    }

    public void runAction(object v_target, cc.Action v_action)
    {
        m_actionManager.runAction(v_target, v_action);
    }

}
