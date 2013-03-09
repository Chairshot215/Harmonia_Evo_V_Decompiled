.class public Lcom/htc/syncagent/thread/HTCSyncDetectorThread;
.super Ljava/lang/Thread;
.source "HTCSyncDetectorThread.java"


# instance fields
.field private bWillClose:Z

.field private clientSocket:Ljava/net/Socket;

.field private in:Ljava/io/BufferedReader;

.field private out:Ljava/io/PrintWriter;

.field private sendList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svrSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "ID"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 23
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    .line 25
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->in:Ljava/io/BufferedReader;

    .line 26
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->out:Ljava/io/PrintWriter;

    .line 28
    iput-boolean v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->bWillClose:Z

    .line 30
    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendList:Ljava/util/LinkedList;

    .line 36
    iput-boolean v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->bWillClose:Z

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendList:Ljava/util/LinkedList;

    .line 38
    return-void
.end method

.method private getSocketMessage(Ljava/net/Socket;)V
    .locals 10
    .parameter "socket"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    .line 111
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->bWillClose:Z

    if-nez v5, :cond_1

    if-nez p1, :cond_2

    .line 205
    :cond_1
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->cleanSocket(Z)V

    .line 206
    :goto_2
    return-void

    .line 115
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 123
    const/16 v5, 0x20

    new-array v4, v5, [C

    .line 124
    .local v4, tmp:[C
    iget-object v5, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v5, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .line 126
    .local v2, readcount:I
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, cmd:Ljava/lang/String;
    const-string v5, "FDUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: read count = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "FDUI"

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: current state = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    sget v7, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    :cond_3
    const-string v5, "FDUI"

    .line 136
    const-string v6, "7990: socket error, close app!"

    .line 135
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    .line 139
    sget v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 181
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #readcount:I
    .end local v4           #tmp:[C
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 183
    .local v1, e:Ljava/net/SocketTimeoutException;
    :goto_3
    iget-object v5, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, request:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    iget-object v5, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 189
    const-string v5, "FDUI"

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: get request, send to pc, cmd = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    goto :goto_3

    .line 141
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    .end local v3           #request:Ljava/lang/String;
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #readcount:I
    .restart local v4       #tmp:[C
    :cond_4
    :try_start_1
    const-string v5, "READY_TO_SYNC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 143
    const-string v5, "FDUI"

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: get socket msg: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-eq v5, v9, :cond_5

    .line 146
    sget v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-ne v5, v8, :cond_6

    .line 148
    :cond_5
    const-string v5, "FDUI"

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: app disconnected, state = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    sget v7, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 194
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #readcount:I
    .end local v4           #tmp:[C
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 197
    .local v1, e:Ljava/io/IOException;
    const-string v5, "FDUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: #2 got an error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sput v8, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 201
    invoke-virtual {p0, v8}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    .line 202
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    goto/16 :goto_0

    .line 154
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #readcount:I
    .restart local v4       #tmp:[C
    :cond_6
    const/4 v5, 0x3

    :try_start_2
    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 155
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    goto/16 :goto_0

    .line 156
    :cond_7
    const-string v5, "SYNC_STARTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 158
    const-string v5, "FDUI"

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: get socket msg: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-eq v5, v9, :cond_8

    .line 161
    sget v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-ne v5, v8, :cond_9

    .line 163
    :cond_8
    const-string v5, "FDUI"

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: app disconnected, state = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    sget v7, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 164
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    :cond_9
    const/4 v5, 0x4

    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 170
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    goto/16 :goto_0

    .line 171
    :cond_a
    const-string v5, "STOP_APP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const-string v5, "FDUI"

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "7990: get socket msg: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-static {v5, v6}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v5, 0x6

    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 177
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    .line 178
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private startToListenPort()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 66
    const-string v1, "FDUI"

    .line 67
    const-string v2, "7990: ServerSocket accept, listen. port: 7990"

    .line 66
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    iget-boolean v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->bWillClose:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->cleanSocket(Z)V

    .line 105
    return-void

    .line 73
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 76
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 77
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    .line 78
    const-string v1, "FDUI"

    .line 79
    const-string v2, "7990: Get new connection!"

    .line 78
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 82
    iget-object v3, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->in:Ljava/io/BufferedReader;

    .line 83
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    .line 84
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 85
    iget-object v4, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 84
    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 85
    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 83
    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->out:Ljava/io/PrintWriter;

    .line 87
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->getSocketMessage(Ljava/net/Socket;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "FDUI"

    .line 91
    const-string v2, "7990: server socket  = null"

    .line 90
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FDUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "7990: #1 got an error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 100
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    .line 101
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    goto/16 :goto_0
.end method


# virtual methods
.method public addSendMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    return-void
.end method

.method public cleanSocket(Z)V
    .locals 4
    .parameter "isClient"

    .prologue
    const/4 v3, 0x5

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->in:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->in:Ljava/io/BufferedReader;

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->out:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->out:Ljava/io/PrintWriter;

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->clientSocket:Ljava/net/Socket;

    .line 283
    :cond_2
    if-nez p1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 290
    :cond_3
    const-string v1, "FDUI"

    .line 291
    const-string v2, "7990: socket closed successful!##(server and client)"

    .line 290
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_4
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 296
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FDUI"

    const-string v2, "7990: socket close error"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sput v3, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 299
    invoke-virtual {p0, v3}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    .line 300
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    goto :goto_0
.end method

.method public doClose()V
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->bWillClose:Z

    .line 307
    const-string v0, "FDUI"

    const-string v1, "7990: thread do close"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 44
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sleep(J)V

    .line 45
    const-string v1, "FDUI"

    const-string v2, "7990: thread run"

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    .line 47
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 48
    iget-object v1, p0, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->svrSocket:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    const/16 v4, 0x1f36

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 50
    const-string v1, "FDUI"

    .line 51
    const-string v2, "7990: ServerSocket create successful!"

    .line 50
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->startToListenPort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 56
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FDUI"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "7990: ServerSocket create error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sput v5, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 59
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/syncagent/thread/HTCSyncDetectorThread;->sendMsgToUI(I)Z

    .line 60
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    goto :goto_0
.end method

.method public sendMsgToUI(I)Z
    .locals 8
    .parameter "what"

    .prologue
    const/4 v7, 0x0

    .line 220
    :try_start_0
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/syncagent/util/HTCUICommon;->getCurrentActivity()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, activity:Ljava/lang/String;
    const-string v4, "FDUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "7990: current activity = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "HTCStatusActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    const-string v4, "HTCMainActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    :cond_0
    const/4 v3, 0x0

    .line 229
    .local v3, ret:Z
    sget-object v4, Lcom/htc/syncagent/util/HTCUICommon;->mainHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 231
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 232
    .local v2, msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 233
    sget-object v4, Lcom/htc/syncagent/util/HTCUICommon;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    const-string v4, "FDUI"

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "7990: send msg to Main! msg.what = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v3, 0x1

    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    move v4, v3

    .line 259
    .end local v0           #activity:Ljava/lang/String;
    .end local v3           #ret:Z
    :goto_0
    return v4

    .line 252
    .restart local v0       #activity:Ljava/lang/String;
    :cond_2
    const-string v4, "FDUI"

    .line 253
    const-string v5, "7990: no activity is actived, return false!"

    .line 252
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    .line 254
    goto :goto_0

    .line 256
    .end local v0           #activity:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 258
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "FDUI"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    .line 259
    goto :goto_0
.end method
