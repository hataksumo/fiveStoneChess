using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Sockets;
using System.IO;
using UnityEngine;
using cc = CCAction;

class NetworkHelpper
{
    protected TcpClient m_tcpClient;
    protected NetworkStream m_outStream = null;
    protected MemoryStream m_memStream;
    protected BinaryReader m_reader;

    protected const int MAX_READ = 8192;
    protected byte[] m_byteBuffer = new byte[MAX_READ];

    protected static NetworkHelpper s_instence = null;

    public NetworkHelpper()
    {
        m_tcpClient = new TcpClient();
        m_memStream = new MemoryStream();
        m_reader = new BinaryReader(m_memStream);
    }

    public static NetworkHelpper getInstence()
    {
        if(s_instence == null)
        {
            s_instence = new NetworkHelpper();
        }
        return s_instence;
    }

    public void connToSrv(string v_host,int v_port)
    {
        this.close();
        m_tcpClient = new TcpClient();
        m_tcpClient.SendTimeout = 1000;
        m_tcpClient.ReceiveTimeout = 1000;
        m_tcpClient.NoDelay = true;
        //@liyy clear memStream
        m_memStream.SetLength(0);     //Clear
        try
        {
            m_tcpClient.BeginConnect(v_host, v_port, new AsyncCallback(onConnect), null);
        }
        catch (Exception e)
        {
            Debug.Log(e.Message);
        }
    }

    protected void onConnect(IAsyncResult asr)
    {
        Debug.Log("connected "+m_tcpClient.Connected);
        m_outStream = m_tcpClient.GetStream();
        m_tcpClient.GetStream().BeginRead(m_byteBuffer, 0, MAX_READ, new AsyncCallback(OnRead), null);
    }

    void OnRead(IAsyncResult asr)
    {
        int bytesRead = 0;
        try
        {
            lock (m_tcpClient.GetStream())
            {         //读取字节流到缓冲区
                bytesRead = m_tcpClient.GetStream().EndRead(asr);
            }
            onReceive(bytesRead);   //分析数据包内容，抛给逻辑层
            lock (m_tcpClient.GetStream())
            {         //分析完，再次监听服务器发过来的新消息
                Array.Clear(m_byteBuffer, 0, m_byteBuffer.Length);   //清空数组
                m_tcpClient.GetStream().BeginRead(m_byteBuffer, 0, MAX_READ, new AsyncCallback(OnRead), null);
            }
        }
        catch (Exception ex)
        {
            Debug.Log(ex.ToString());
        }
    }
    //处理粘包分包
    protected void onReceive(int length)
    {
        m_memStream.Seek(0, SeekOrigin.End);
        m_memStream.Write(m_byteBuffer, 0, length);
        //Reset to beginning
        m_memStream.Seek(0, SeekOrigin.Begin);
        while (RemainingBytes() > 2)//
        {
            //ushort messageLen = reader.ReadUInt16();
            //@liyy bigendian转化
            ushort highBit = (ushort)(m_reader.ReadByte());
            ushort lowBit = (ushort)(m_reader.ReadByte());
            ushort messageLen = 0;
            ushort ebit = (ushort)256;
            messageLen = (ushort)(highBit * ebit + lowBit);
            if (RemainingBytes() >= messageLen)
            {
                MemoryStream ms = new MemoryStream(messageLen);
                BinaryWriter writer = new BinaryWriter(ms);
                writer.Write(m_reader.ReadBytes(messageLen));
                ms.Seek(0, SeekOrigin.Begin);
                onReceivedSingleMessage(messageLen, ms);
            }
            else
            {
                //Back up the position two bytes
                m_memStream.Position = m_memStream.Position - 2;
                break;
            }
        }
        
        //Create a new stream with any leftover bytes
        byte[] leftover = m_reader.ReadBytes((int)RemainingBytes());
        m_memStream.SetLength(0);     //Clear
        m_memStream.Write(leftover, 0, leftover.Length);
    }

    protected void onReceivedSingleMessage(int len,MemoryStream v_ms)
    {
        BinaryReader r = new BinaryReader(v_ms);
        byte[] byteMsg = r.ReadBytes(len);
        string msgFrmSrv = System.Text.Encoding.UTF8.GetString(byteMsg);
        Debug.Log("msg frm srv is "+ msgFrmSrv);
        Main.GetInstence().runAction(Main.GetInstence(), cc.CallBack.Create((object v_target) => {
            ClientLog.Message("msgFrmSrv is {0}", msgFrmSrv);
            Main.GetInstence().showTxtFrmSrv(msgFrmSrv);
        }
        ));
    }


    private long RemainingBytes()
    {
        return m_memStream.Length - m_memStream.Position;
    }

    public void close()
    {
        if (m_tcpClient != null)
            m_tcpClient.Close();
        m_tcpClient = null;
    }

    public void writeData(byte[] v_data)
    {
        MemoryStream ms = null;
        using (ms = new MemoryStream(v_data.Length+2))
        {
            ms.Position = 0;
            BinaryWriter writer = new BinaryWriter(ms);
            ushort msglen = (ushort)v_data.Length;
            writer.Write(msglen);
            writer.Write(v_data);
            writer.Flush();
            if (m_tcpClient != null && m_tcpClient.Connected)
            {
                //NetworkStream stream = client.GetStream(); 
                byte[] payload = ms.ToArray();
                m_outStream.BeginWrite(payload, 0, payload.Length, new AsyncCallback(OnWrite), null);
            }
            else
            {
                Debug.Log("client.connected----->>false");
            }
        }
    }

    void OnWrite(IAsyncResult r)
    {
        try
        {
            m_outStream.EndWrite(r);
        }
        catch (Exception ex)
        {
            Debug.Log("OnWrite--->>>" + ex.Message);
        }
    }

}
