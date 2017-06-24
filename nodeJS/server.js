/*var http = require('http');

http.createServer(function (request, response) {
	// 发送 HTTP 头部 
	// HTTP 状态值: 200 : OK
	// 内容类型: text/plain
	response.writeHead(200, {'Content-Type': 'text/plain'});
	// 发送响应数据 "Hello World"
	response.end('Hello World\n');
}).listen(8888);
*/
var net = require('net');
var TcpBufferManager = require('./tcpDataManager').TcpBufferManager;
var tcpBufferManager = new TcpBufferManager();
//var GameManager = require('./gameManager').GameManager;
//var gameManager = new GameManager();


var HOST = '127.0.0.1';
var PORT = 6370;

var server = net.createServer((sock) => {
    // 为这个socket实例添加一个"data"事件处理函数
    sock.on('data', (data) => {
        console.log("recieve data "+data)
        tcpBufferManager.readData(data)
    });
    // 为这个socket实例添加一个"close"事件处理函数
    sock.on('close', (socket)=>{
        console.log('CLOSED: ' +
            socket.remoteAddress + ' ' + socket.remotePort);
        tcpBufferManager.closeConn(socket);
    });
});
server.listen(PORT, HOST)

//一个新链接进入
server.on('connection', (socket)=>{
try{
    console.log('a new client connected ' + socket.remoteAddress);
    var hello = "hello client";
    var buf = Buffer.alloc(hello.length +2);
    console.log("hello len = "+hello.length);
    buf.writeInt16BE(hello.length);
    buf.write(hello,2);
    socket.write(buf);
    tcpBufferManager.addConn(socket);
}catch(ex){console.log("ex = "+ex);}
});