class TcpBufferManager
{
    constructor()
    {
        this.m_buf = Buffer.alloc(1024);
        this.m_connSockets = new Array();
        if(this.m_buf == null)
        {
            console.log("m_buf is null");
        }
        else
        {
            console.log("ok ok ok ok ok");
        }
        this.m_bufLen = 0;
        this.m_dataLen = 0;
        this.m_endMsg = true;
    }
    readData(v_buff)
    {
        var readLen = 0;
        console.log("buf len = "+v_buff.length);
        while(v_buff.length>readLen)
        {
            if(this.m_endMsg)
            {
                this.m_bufLen = v_buff.readInt16LE();
                readLen += 2;
                console.log("this.m_bufLen = "+this.m_bufLen);
            }
            this.m_endMsg = false;
            var len = v_buff.copy(this.m_buf,this.m_dataLen,readLen,readLen + this.m_bufLen - this.m_dataLen);
            readLen += len
            this.m_dataLen += len;
            if(this.m_dataLen == this.m_bufLen)
                this.handleMsg(len);
        }
    }
    handleMsg(v_len)
    {
        console.log(this.m_buf.toString());
        this.broadcase(this.m_buf.toString("utf8",0,v_len));
        this.m_bufLen = 0;
        this.m_dataLen = 0;
        this.m_endMsg = true;
    }
    addConn(v_socket)
    {
        this.m_connSockets.push(v_socket);
    }
    closeConn(v_socket)
    {
        var idx = this.m_connSockets.indexOf(v_socket);
        this.m_connSockets.splice(idx,1);
    }
    broadcase(v_data)
    {
        var sendBuf = Buffer.alloc(v_data.length+2);
        sendBuf.writeInt16BE(v_data.length);
        sendBuf.write(v_data,2);
        this.m_connSockets.forEach((v_sock,index,arr) =>
        {
            v_sock.write(sendBuf);
        })
    }
}


exports.TcpBufferManager = TcpBufferManager