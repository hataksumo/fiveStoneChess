using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Main : MonoBehaviour
{
    public InputField ipAddress;
    public InputField iptPort;
    public InputField content;
    public Text dataFrmSrv;
    // Use this for initialization
    void Start ()
    {
        Debug.Log("start");
        ipAddress.text = "127.0.0.1";
        iptPort.text = "6370";
    }
	
	// Update is called once per frame
	void Update () {
		
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

}
