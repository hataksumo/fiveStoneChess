﻿using UnityEngine;
using System;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Collections;
using System.Collections.Generic;
using SimpleFramework.Manager;
using SimpleFramework;

public enum DisType {
    Exception,
    Disconnect,
}

public enum ClientType {
    Login,
    Normal,
    Battle,
}

public class SocketClient {
    private TcpClient client = null;
    private NetworkStream outStream = null;
    private MemoryStream memStream;
    private BinaryReader reader;

    private const int MAX_READ = 8192;
    private byte[] byteBuffer = new byte[MAX_READ];
    public static bool loggedIn = false;

    private int ProtocalConnect;
    private int ProtocalException;
    private int ProtocalDisconnect;
    private int ProtocalMessage;

    // Use this for initialization
    public SocketClient(ClientType clientType) {
            if (clientType == ClientType.Login) {
                ProtocalConnect = Protocal.LoginConnect;
                ProtocalException = Protocal.LoginException;
                ProtocalDisconnect = Protocal.LoginDisconnect;
                ProtocalMessage = Protocal.LoginMessage;
            }
            else if (clientType == ClientType.Normal){
                ProtocalConnect = Protocal.NormalConnect;
                ProtocalException = Protocal.NormalException;
                ProtocalDisconnect = Protocal.NormalDisconnect;
                ProtocalMessage = Protocal.NormalMessage;
            }
            else if (clientType == ClientType.Battle){
                ProtocalConnect = Protocal.BattleConnect;
                ProtocalException = Protocal.BattleException;
                ProtocalDisconnect = Protocal.BattleDisconnect;
                ProtocalMessage = Protocal.BattleMessage;
            }
    }

    /// <summary>
    /// 注册代理
    /// </summary>
    public void OnRegister() {
        memStream = new MemoryStream();
        reader = new BinaryReader(memStream);
    }

    /// <summary>
    /// 移除代理
    /// </summary>
    public void OnRemove() {
        this.Close();
        reader.Close();
        memStream.Close();
    }

    /// <summary>
    /// 连接服务器
    /// </summary>
	void ConnectServer(string host, int port) {
		Debuger.RecordLog("\nC#--ConnectServer Begin--");
		this.Close();
        client = null;
        client = new TcpClient();
        client.SendTimeout = 1000;
        client.ReceiveTimeout = 1000;
        client.NoDelay = true;
		//@liyy clear memStream
		memStream.SetLength(0);     //Clear
		Debuger.Log ("---ConnectServer---");
        try {
		    Debuger.RecordLog("\nC#--Try ConnectServer--");
		    Debuger.Log ("Try BeginConnect");
		    Debuger.Log (host);
		    Debuger.Log (port);
            client.BeginConnect(host, port, new AsyncCallback(OnConnect), null);
        } catch (Exception e) {
		    Debuger.RecordLog("\nC#ConnectServer Exception");
		    Debuger.RecordLog(e.Message);
		    Debuger.Log ("catch exception");
            Close(); 
            Debuger.Log(e.Message);
        }
		Debuger.RecordLog("\nC#--ConnectServer End--");
    }

    /// <summary>
    /// 连接上服务器
    /// </summary>
    void OnConnect(IAsyncResult asr) {
        outStream = client.GetStream();
        client.GetStream().BeginRead(byteBuffer, 0, MAX_READ, new AsyncCallback(OnRead), null);
		NetworkManager.AddEvent(ProtocalConnect, new ByteBuffer());
    }
	ushort ReverseBytes(ushort value)
	{
		return (ushort)((value & 0xFFU) << 8 | (value & 0xFF00U) >> 8);
	}
    /// <summary>
    /// 写数据
    /// </summary>
    void WriteMessage(byte[] message) {
        MemoryStream ms = null;
        using (ms = new MemoryStream()) {
            ms.Position = 0;
            BinaryWriter writer = new BinaryWriter(ms);
			ushort msglen = ReverseBytes((ushort)message.Length);
            writer.Write(msglen);
            writer.Write(message);
            writer.Flush();
            if (client != null && client.Connected) {
                //NetworkStream stream = client.GetStream(); 
                byte[] payload = ms.ToArray();
                outStream.BeginWrite(payload, 0, payload.Length, new AsyncCallback(OnWrite), null);
            } else {
                Debuger.Log("client.connected----->>false");
            }
        }
    }

    /// <summary>
    /// 读取消息
    /// </summary>
    void OnRead(IAsyncResult asr) {
        int bytesRead = 0;
        try {
            lock (client.GetStream()) {         //读取字节流到缓冲区
                bytesRead = client.GetStream().EndRead(asr);
            }
            if (bytesRead < 1) {                //包尺寸有问题，断线处理
                OnDisconnected(DisType.Disconnect, "bytesRead < 1");
                return;
            }
            OnReceive(byteBuffer, bytesRead);   //分析数据包内容，抛给逻辑层
            lock (client.GetStream()) {         //分析完，再次监听服务器发过来的新消息
                Array.Clear(byteBuffer, 0, byteBuffer.Length);   //清空数组
                client.GetStream().BeginRead(byteBuffer, 0, MAX_READ, new AsyncCallback(OnRead), null);
            }
        } catch (Exception ex) {
            //PrintBytes();
            OnDisconnected(DisType.Exception, ex.Message);
        }
    }

    /// <summary>
    /// 丢失链接
    /// </summary>
    void OnDisconnected(DisType dis, string msg) {
        Close();   //关掉客户端链接
        int protocal = dis == DisType.Exception ?
        ProtocalException : ProtocalDisconnect;

        ByteBuffer buffer = new ByteBuffer();
        buffer.WriteShort((ushort)protocal);
        NetworkManager.AddEvent(protocal, buffer);
        Debuger.Log("Connection was closed by the server:>" + msg + " Distype:>" + dis);
    }

    public void BeatheartTimeout() {
        OnDisconnected(DisType.Disconnect, "BeatheartTimeout");
    }

    public void CloseConnect() {
        OnDisconnected(DisType.Disconnect, "CloseConnect");
    }

    /// <summary>
    /// 打印字节
    /// </summary>
    /// <param name="bytes"></param>
    void PrintBytes() {
        string returnStr = string.Empty;
        for (int i = 0; i < byteBuffer.Length; i++) {
            returnStr += byteBuffer[i].ToString("X2");
        }
        Debuger.Log(returnStr);
    }

    /// <summary>
    /// 向链接写入数据流
    /// </summary>
    void OnWrite(IAsyncResult r) {
        try {
            outStream.EndWrite(r);
        } catch (Exception ex) {
            Debuger.Log("OnWrite--->>>" + ex.Message);
        }
    }

    /// <summary>
    /// 接收到消息
    /// </summary>
    void OnReceive(byte[] bytes, int length) {
        memStream.Seek(0, SeekOrigin.End);
        memStream.Write(bytes, 0, length);
        //Reset to beginning
        memStream.Seek(0, SeekOrigin.Begin);
        while (RemainingBytes() > 2) {
			//ushort messageLen = reader.ReadUInt16();
			//@liyy bigendian转化
			ushort highBit = (ushort)(reader.ReadByte());
			ushort lowBit = (ushort)(reader.ReadByte());
			ushort messageLen = 0;
			ushort ebit = (ushort)256;
			messageLen = (ushort)(highBit * ebit + lowBit);
            if (RemainingBytes() >= messageLen) {
                MemoryStream ms = new MemoryStream();
                BinaryWriter writer = new BinaryWriter(ms);
                writer.Write(reader.ReadBytes(messageLen));
                ms.Seek(0, SeekOrigin.Begin);
                OnReceivedMessage(ms);
            } else {
                //Back up the position two bytes
                memStream.Position = memStream.Position - 2;
                break;
            }
        }
        //Create a new stream with any leftover bytes
        byte[] leftover = reader.ReadBytes((int)RemainingBytes());
        memStream.SetLength(0);     //Clear
        memStream.Write(leftover, 0, leftover.Length);
    }

    /// <summary>
    /// 剩余的字节
    /// </summary>
    private long RemainingBytes() {
        return memStream.Length - memStream.Position;
    }


	private byte[] CopyByte(byte[] a, byte[] b)
	{
		byte[] c = new byte[a.Length + b.Length];
		a.CopyTo(c, 0); 
		b.CopyTo(c, a.Length);
		return c;
	}

    /// <summary>
    /// 接收到消息
    /// </summary>
    /// <param name="ms"></param>
    void OnReceivedMessage(MemoryStream ms) {
        BinaryReader r = new BinaryReader(ms);
        byte[] message = r.ReadBytes((int)(ms.Length - ms.Position));
		//@liyy 增加一个byte的长度
        int msglen = message.Length;
		byte[] msglenByte = System.BitConverter.GetBytes(msglen);
		byte[] dataByte = CopyByte (msglenByte, message);
		ByteBuffer buffer = new ByteBuffer(dataByte);
		NetworkManager.AddEvent(ProtocalMessage, buffer);
    }


    /// <summary>
    /// 会话发送
    /// </summary>
    void SessionSend(byte[] bytes) {
        WriteMessage(bytes);
    }

    /// <summary>
    /// 关闭链接
    /// </summary>
    public void Close() {
        if (client != null) {
            // if (client.Connected) 
            // 不论是否在Connected状态,都进行close(),防止正在尝试connect的client在=null后又连接成功(连接泄漏)
            Debuger.Log("SocketClient Close()");
            client.Close();
            client = null;
        }
        loggedIn = false;
    }

    public bool isConnected(){
        if (client != null)
            return client.Connected;
        else
            return false;
    }

    /// <summary>
    /// 发送连接请求
    /// </summary>
	public void SendConnect() {
		Debuger.Log ("---SendConnect---");
		Debuger.Log (AppConst.SocketAddress);
		Debuger.Log (AppConst.SocketPort);
        ConnectServer(AppConst.SocketAddress, AppConst.SocketPort);
    }

    /// <summary>
    /// 发送消息
    /// </summary>
    public void SendMessage(ByteBuffer buffer) {
		ByteBuffer read = new ByteBuffer (buffer.ToBytes());
		SessionSend(read.ReadBytes());
        buffer.Close();
    }
}