.class public Lcom/htc/android/dmportread/dm/OriDMAgentConnector;
.super Ljava/lang/Object;
.source "OriDMAgentConnector.java"


# static fields
.field public static cmdTY1:Ljava/lang/String;

.field public static cmdTY2:Ljava/lang/String;

.field public static cmdTY3:Ljava/lang/String;


# instance fields
.field DBG:Z

.field private final PORT:I

.field private final TAG:Ljava/lang/String;

.field private cmdEXIT:Ljava/lang/String;

.field private cmdID:Ljava/lang/String;

.field private cmdPWD:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, ":TY1"

    sput-object v0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdTY1:Ljava/lang/String;

    .line 17
    const-string v0, ":TY2"

    sput-object v0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdTY2:Ljava/lang/String;

    .line 18
    const-string v0, ":TY3"

    sput-object v0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdTY3:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->PORT:I

    .line 13
    const-string v0, ":IDOMADM"

    iput-object v0, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    .line 14
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdPWD:Ljava/lang/String;

    .line 15
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdEXIT:Ljava/lang/String;

    .line 20
    const-string v0, "DSATestClient"

    iput-object v0, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->DBG:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 29
    return-void
.end method


# virtual methods
.method public changeTTY(Ljava/lang/String;)V
    .locals 4
    .parameter "cmdTTY"

    .prologue
    .line 207
    const/16 v2, 0x200

    :try_start_0
    new-array v1, v2, [B

    .line 208
    .local v1, respond:[B
    iget-object v2, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 209
    iget-object v2, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1           #respond:[B
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeConnection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 102
    const/4 v3, 0x0

    .line 105
    .local v3, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v4, :cond_0

    .line 106
    const-string v4, "DSATestClient"

    const-string v5, "closeConnection fail:requestSocket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v4, 0x0

    .line 146
    :goto_0
    return v4

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    .line 111
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 112
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 114
    const/16 v4, 0x200

    new-array v2, v4, [B

    .line 115
    .local v2, respond:[B
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    .line 116
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 119
    const-string v4, "DSATestClient"

    const-string v5, "closeConnection success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v3, 0x1

    .line 128
    .end local v2           #respond:[B
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 142
    :goto_4
    iput-object v7, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    .line 143
    iput-object v7, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    .line 144
    iput-object v7, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    move v4, v3

    .line 146
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSATestClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeConnection fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v3, 0x0

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 130
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 135
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 140
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public openConnection()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 32
    const/4 v4, 0x0

    .line 34
    .local v4, result:Z
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    const-string v7, "localhost"

    const/16 v8, 0x2606

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 35
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_0

    .line 96
    :goto_0
    return v5

    .line 37
    :cond_0
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    .line 39
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 40
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 42
    const/16 v5, 0x200

    new-array v3, v5, [B

    .line 43
    .local v3, respond:[B
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    .line 44
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 45
    invoke-static {v3}, Lcom/htc/android/dmportread/dm/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, hex:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "DSATestClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Res cmdID["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 48
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 49
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 50
    invoke-static {v3}, Lcom/htc/android/dmportread/dm/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-boolean v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "DSATestClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Res cmdPWD["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 54
    sget-object v5, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v4, 0x1

    .line 75
    .end local v1           #hex:Ljava/lang/String;
    .end local v3           #respond:[B
    :goto_1
    if-nez v4, :cond_3

    .line 77
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 91
    :goto_4
    iput-object v9, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    .line 92
    iput-object v9, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    .line 93
    iput-object v9, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    :cond_3
    move v5, v4

    .line 96
    goto/16 :goto_0

    .line 58
    .restart local v1       #hex:Ljava/lang/String;
    .restart local v3       #respond:[B
    :cond_4
    :try_start_4
    const-string v5, "DSATestClient"

    const-string v6, "connection fail:cmdPWD fail"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v4, 0x0

    goto :goto_1

    .line 64
    :cond_5
    const-string v5, "DSATestClient"

    const-string v6, "connection fail:cmdID fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    const/4 v4, 0x0

    goto :goto_1

    .line 69
    .end local v1           #hex:Ljava/lang/String;
    .end local v3           #respond:[B
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DSATestClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connection fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v4, 0x0

    goto :goto_1

    .line 78
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 79
    .local v2, ioe:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 83
    .end local v2           #ioe:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 84
    .restart local v2       #ioe:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 88
    .end local v2           #ioe:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 89
    .restart local v2       #ioe:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "request"

    .prologue
    const/4 v5, 0x0

    .line 153
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_1

    .line 154
    const-string v6, "DSATestClient"

    const-string v7, "reconnect requestSocket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v6, Ljava/net/Socket;

    const-string v7, "localhost"

    const/16 v8, 0x2606

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 156
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_1

    .line 157
    const-string v6, "DSATestClient"

    const-string v7, "reconnect requestSocket fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v4, ""

    .line 200
    :cond_0
    :goto_0
    return-object v4

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    .line 164
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 165
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 167
    const/16 v6, 0x200

    new-array v3, v6, [B

    .line 168
    .local v3, respond:[B
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    .line 169
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 170
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, result:Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, idx:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 173
    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 177
    .end local v1           #idx:I
    .end local v3           #respond:[B
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "DSATestClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendCommand fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :try_start_1
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 195
    :goto_3
    iput-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    .line 196
    iput-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    .line 197
    iput-object v5, p0, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 199
    invoke-virtual {p0}, Lcom/htc/android/dmportread/dm/OriDMAgentConnector;->openConnection()Z

    move-object v4, v5

    .line 200
    goto :goto_0

    .line 182
    :catch_1
    move-exception v2

    .line 183
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 188
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 192
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 193
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
