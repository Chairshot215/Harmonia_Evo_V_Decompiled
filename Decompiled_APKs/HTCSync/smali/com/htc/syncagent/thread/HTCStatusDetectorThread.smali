.class public Lcom/htc/syncagent/thread/HTCStatusDetectorThread;
.super Ljava/lang/Thread;
.source "HTCStatusDetectorThread.java"


# instance fields
.field private bWillClose:Z

.field private clientSocket:Ljava/net/Socket;

.field private in:Ljava/io/BufferedReader;

.field private out:Ljava/io/PrintWriter;

.field private svrSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "ID"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 22
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    .line 24
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->in:Ljava/io/BufferedReader;

    .line 25
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->out:Ljava/io/PrintWriter;

    .line 27
    iput-boolean v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->bWillClose:Z

    .line 32
    iput-boolean v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->bWillClose:Z

    .line 33
    return-void
.end method

.method private getSocketMessage(Ljava/net/Socket;)V
    .locals 9
    .parameter "socket"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x5

    .line 103
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->bWillClose:Z

    if-nez v4, :cond_1

    if-nez p1, :cond_2

    .line 164
    :cond_1
    :goto_1
    invoke-virtual {p0, v8}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->cleanSocket(Z)V

    .line 165
    return-void

    .line 107
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    const/16 v4, 0x3e8

    invoke-virtual {p1, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 114
    const/16 v4, 0x20

    new-array v3, v4, [C

    .line 115
    .local v3, tmp:[C
    iget-object v4, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v4, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .line 117
    .local v2, readcount:I
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, cmd:Ljava/lang/String;
    const-string v4, "FDUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "7890: read count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    :cond_3
    const-string v4, "FDUI"

    const-string v5, "7890: read error!"

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    .line 127
    const/4 v4, 0x5

    sput v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 130
    :cond_4
    sget v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {p0, v4}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->sendMsgToUI(I)Z

    goto :goto_1

    .line 149
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #readcount:I
    .end local v3           #tmp:[C
    :catch_0
    move-exception v4

    goto :goto_0

    .line 133
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #readcount:I
    .restart local v3       #tmp:[C
    :cond_5
    const-string v4, "AT+CGSN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 135
    const-string v4, "FDUI"

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "7890 get socket msg: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v4, 0x1

    sput v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 138
    iget-object v4, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->out:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/syncagent/util/HTCUICommon;->getIMEI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 141
    sget v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {p0, v4}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->sendMsgToUI(I)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 154
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #readcount:I
    .end local v3           #tmp:[C
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 157
    .local v1, e:Ljava/io/IOException;
    const-string v4, "FDUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "7890 @2 got an error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sput v7, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 160
    invoke-virtual {p0, v7}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->sendMsgToUI(I)Z

    .line 161
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    goto/16 :goto_0

    .line 145
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #readcount:I
    .restart local v3       #tmp:[C
    :cond_6
    :try_start_1
    const-string v4, "FDUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "7890: cmd = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method

.method private startToListenPort()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 60
    const-string v1, "FDUI"

    .line 61
    const-string v2, "7890 ServerSocket accept, listen. port: 7890"

    .line 60
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-boolean v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->bWillClose:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    if-nez v1, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->cleanSocket(Z)V

    .line 99
    return-void

    .line 67
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 70
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 71
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    .line 72
    const-string v1, "FDUI"

    .line 73
    const-string v2, "StatusThread=7890 Get new connection!"

    .line 72
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 76
    iget-object v3, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->in:Ljava/io/BufferedReader;

    .line 77
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    .line 78
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 79
    iget-object v4, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 78
    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 79
    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 77
    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->out:Ljava/io/PrintWriter;

    .line 81
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->getSocketMessage(Ljava/net/Socket;)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0

    .line 84
    :cond_2
    const-string v1, "FDUI"

    .line 85
    const-string v2, "7890 server socket  = null"

    .line 84
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 91
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FDUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "7890 @1 got an error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 94
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->sendMsgToUI(I)Z

    .line 95
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanSocket(Z)V
    .locals 4
    .parameter "isClient"

    .prologue
    const/4 v3, 0x5

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->in:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->in:Ljava/io/BufferedReader;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->out:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->out:Ljava/io/PrintWriter;

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->clientSocket:Ljava/net/Socket;

    .line 236
    :cond_2
    if-nez p1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 243
    :cond_3
    const-string v1, "FDUI"

    .line 244
    const-string v2, "7890: socket closed successful!##(server and client)"

    .line 243
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_4
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FDUI"

    const-string v2, "7890 socket close error"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sput v3, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 252
    invoke-virtual {p0, v3}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->sendMsgToUI(I)Z

    .line 253
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    goto :goto_0
.end method

.method public doClose()V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->bWillClose:Z

    .line 260
    const-string v0, "FDUI"

    const-string v1, "7890: thread do close"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 39
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->sleep(J)V

    .line 40
    const-string v1, "FDUI"

    const-string v2, "7890: thread run"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 42
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 43
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    const/16 v4, 0x1ed2

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 44
    const-string v1, "FDUI"

    .line 45
    const-string v2, "7890 ServerSocket create successful!"

    .line 44
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->startToListenPort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FDUI"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "7890 ServerSocket create error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 53
    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCStatusDetectorThread;->sendMsgToUI(I)Z

    .line 54
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    goto :goto_0
.end method

.method public sendMsgToUI(I)Z
    .locals 8
    .parameter "what"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/syncagent/util/HTCUICommon;->getCurrentActivity()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, activity:Ljava/lang/String;
    const-string v3, "FDUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "7890: current activity = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "FDUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "7890: current status = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    sget v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "FDUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "7890: what = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "HTCStatusActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    const-string v3, "HTCMainActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    :cond_0
    const-string v3, "FDUI"

    const-string v4, "7890: send msg to ui!"

    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v3, Lcom/htc/syncagent/util/HTCUICommon;->detecorHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 187
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 188
    .local v2, msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 189
    sget-object v3, Lcom/htc/syncagent/util/HTCUICommon;->detecorHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v7

    .line 212
    .end local v0           #activity:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return v3

    .line 191
    .restart local v0       #activity:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/htc/syncagent/util/HTCUICommon;->mainHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 193
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 194
    .restart local v2       #msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 195
    sget-object v3, Lcom/htc/syncagent/util/HTCUICommon;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v7

    .line 196
    goto :goto_0

    .line 199
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    const-string v3, "FDUI"

    .line 200
    const-string v4, "7890: status handler = null!"

    .line 199
    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 201
    goto :goto_0

    .line 205
    :cond_3
    const-string v3, "FDUI"

    .line 206
    const-string v4, "7890: no activity is actived, return false!"

    .line 205
    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 207
    goto :goto_0

    .line 209
    .end local v0           #activity:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 211
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "FDUI"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 212
    goto :goto_0
.end method
