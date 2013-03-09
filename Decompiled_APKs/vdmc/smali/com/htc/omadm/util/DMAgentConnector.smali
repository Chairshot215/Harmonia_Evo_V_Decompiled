.class public Lcom/htc/omadm/util/DMAgentConnector;
.super Ljava/lang/Object;
.source "DMAgentConnector.java"


# static fields
.field public static final RESPONSE_OK:Ljava/lang/String; = "0"

.field public static final STATE_COMMAND_IN:I = 0x5

.field public static final STATE_COMMAND_OUT:I = 0x6

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECT:I = 0x3

.field public static final STATE_DISCONNECTING:I = 0x4

.field public static final STATE_FAIL:I = 0x9

.field public static final STATE_IDLE:I = 0x7

.field public static final STATE_LOGIN_FAIL:I = 0xa

.field public static final STATE_SOCKET_ERROR:I = 0x8

.field protected static final TAG:Ljava/lang/String; = "DMAgentConnector"

.field public static cmdTY1:Ljava/lang/String; = null

.field public static cmdTY2:Ljava/lang/String; = null

.field public static cmdTY3:Ljava/lang/String; = null

.field public static final cmdXCMD:Ljava/lang/String; = ":XCMD"

.field private static mInstance:Lcom/htc/omadm/util/DMAgentConnector;


# instance fields
.field DBG:Z

.field private final PORT:I

.field private cmdEXIT:Ljava/lang/String;

.field private cmdID:Ljava/lang/String;

.field private cmdPWD:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field private mConnectStatus:I

.field out:Ljava/io/OutputStream;

.field requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ":TY1"

    sput-object v0, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    .line 19
    const-string v0, ":TY2"

    sput-object v0, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    .line 20
    const-string v0, ":TY3"

    sput-object v0, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/util/DMAgentConnector;->mInstance:Lcom/htc/omadm/util/DMAgentConnector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->PORT:I

    .line 15
    const-string v0, ":IDOMADM"

    iput-object v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdID:Ljava/lang/String;

    .line 16
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    .line 17
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->DBG:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 46
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 47
    return-void
.end method

.method public static getSingleton()Lcom/htc/omadm/util/DMAgentConnector;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/omadm/util/DMAgentConnector;->mInstance:Lcom/htc/omadm/util/DMAgentConnector;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/htc/omadm/util/DMAgentConnector;

    invoke-direct {v0}, Lcom/htc/omadm/util/DMAgentConnector;-><init>()V

    sput-object v0, Lcom/htc/omadm/util/DMAgentConnector;->mInstance:Lcom/htc/omadm/util/DMAgentConnector;

    .line 53
    :cond_0
    sget-object v0, Lcom/htc/omadm/util/DMAgentConnector;->mInstance:Lcom/htc/omadm/util/DMAgentConnector;

    return-object v0
.end method


# virtual methods
.method public changeTTY(Ljava/lang/String;)V
    .locals 5
    .parameter "cmdTTY"

    .prologue
    .line 351
    :try_start_0
    const-string v2, ":IDOMADM"

    iput-object v2, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdID:Ljava/lang/String;

    .line 352
    const/16 v2, 0x200

    new-array v1, v2, [B

    .line 353
    .local v1, respond:[B
    iget-object v2, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/htc/omadm/util/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 354
    iget-object v2, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 356
    iget-object v2, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v1           #respond:[B
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeConnection()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 217
    const/4 v3, 0x0

    .line 220
    .local v3, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v4, :cond_0

    .line 221
    const-string v4, "DMAgentConnector"

    const-string v5, "closeConnection fail:requestSocket is null"

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 225
    const/4 v4, 0x0

    .line 273
    :goto_0
    return v4

    .line 228
    :cond_0
    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 230
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 232
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v5

    sget-object v6, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/htc/omadm/util/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 233
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 236
    const/16 v4, 0x200

    new-array v2, v4, [B

    .line 237
    .local v2, respond:[B
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 238
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 240
    const-string v4, "DMAgentConnector"

    const-string v5, "closeConnection success"

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 243
    const/4 v4, 0x7

    iput v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v3, 0x1

    .line 255
    .end local v2           #respond:[B
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 269
    :goto_4
    iput-object v8, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 270
    iput-object v8, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 271
    iput-object v8, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    move v4, v3

    .line 273
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DMAgentConnector"

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

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v4, 0x9

    iput v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    const/4 v3, 0x0

    goto :goto_1

    .line 256
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 257
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 261
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 262
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 266
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 267
    .restart local v1       #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public decryptResponse([B)Ljava/lang/String;
    .locals 5
    .parameter "response"

    .prologue
    .line 363
    const-string v0, ""

    .line 364
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 365
    .local v1, tempres:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 366
    const-string v2, "DMAgentConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempres:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/omadm/util/Encrypt;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    return-object v0
.end method

.method public getConnectStatus()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    return v0
.end method

.method public openConnection()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 124
    const/4 v4, 0x0

    .line 126
    .local v4, result:Z
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    const-string v6, "localhost"

    const/16 v7, 0x2606

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 127
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v5, :cond_0

    .line 128
    const/16 v5, 0x8

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 130
    const/4 v5, 0x0

    .line 212
    :goto_0
    return v5

    .line 133
    :cond_0
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 135
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 136
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/htc/omadm/util/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 137
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 140
    const/16 v5, 0x200

    new-array v3, v5, [B

    .line 141
    .local v3, respond:[B
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 142
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 145
    invoke-virtual {p0, v3}, Lcom/htc/omadm/util/DMAgentConnector;->decryptResponse([B)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, res:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v9, :cond_3

    .line 151
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/htc/omadm/util/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 152
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 154
    invoke-virtual {p0, v3}, Lcom/htc/omadm/util/DMAgentConnector;->decryptResponse([B)Ljava/lang/String;

    move-result-object v2

    .line 161
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 162
    sget-object v5, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 164
    const/4 v5, 0x1

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v4, 0x1

    .line 191
    .end local v2           #res:Ljava/lang/String;
    .end local v3           #respond:[B
    :goto_1
    if-nez v4, :cond_1

    .line 193
    :try_start_1
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 207
    :goto_4
    iput-object v10, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 208
    iput-object v10, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 209
    iput-object v10, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    :cond_1
    move v5, v4

    .line 212
    goto/16 :goto_0

    .line 168
    .restart local v2       #res:Ljava/lang/String;
    .restart local v3       #respond:[B
    :cond_2
    :try_start_4
    const-string v5, "DMAgentConnector"

    const-string v6, "connection fail:cmdPWD fail"

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v5, 0xa

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 172
    const/4 v4, 0x0

    goto :goto_1

    .line 175
    :cond_3
    const-string v5, "DMAgentConnector"

    const-string v6, "connection fail:cmdID fail"

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v5, 0xa

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 179
    const/4 v4, 0x0

    goto :goto_1

    .line 182
    .end local v2           #res:Ljava/lang/String;
    .end local v3           #respond:[B
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DMAgentConnector"

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

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const/16 v5, 0x9

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 189
    const/4 v4, 0x0

    goto :goto_1

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 195
    .local v1, ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 199
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 200
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 204
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 205
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public openXCMD()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 62
    const-string v5, ":XCMD"

    iput-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdID:Ljava/lang/String;

    .line 64
    const/4 v3, 0x0

    .line 67
    .local v3, result:Z
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    const-string v6, "localhost"

    const/16 v7, 0x2606

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 68
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v5, :cond_0

    .line 69
    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 71
    const/4 v4, 0x0

    .line 119
    :goto_0
    return v4

    .line 74
    :cond_0
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 76
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 79
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/omadm/util/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/htc/omadm/util/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 80
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 82
    const/16 v5, 0x200

    new-array v2, v5, [B

    .line 83
    .local v2, respond:[B
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 84
    iget-object v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 86
    const/4 v5, 0x1

    iput v5, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v2           #respond:[B
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/16 v4, 0x9

    iput v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 96
    const/4 v3, 0x0

    .line 98
    if-nez v3, :cond_1

    .line 100
    :try_start_1
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 114
    :goto_3
    iput-object v9, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 115
    iput-object v9, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 116
    iput-object v9, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    :cond_1
    move v4, v3

    .line 119
    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 102
    .local v1, ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 107
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 111
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 112
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public declared-synchronized sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "request"

    .prologue
    const/4 v5, 0x0

    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_1

    .line 281
    const-string v6, "DMAgentConnector"

    const-string v7, "reconnect requestSocket"

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v6, Ljava/net/Socket;

    const-string v7, "localhost"

    const/16 v8, 0x2606

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 283
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_1

    .line 285
    const/16 v6, 0x8

    iput v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 287
    const-string v6, "DMAgentConnector"

    const-string v7, "reconnect requestSocket fail"

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 292
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 293
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v7

    sget-object v8, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v7, v8, p1}, Lcom/htc/omadm/util/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 294
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 296
    const/4 v6, 0x6

    iput v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 298
    const/16 v6, 0x200

    new-array v3, v6, [B

    .line 299
    .local v3, respond:[B
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 300
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 302
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 305
    invoke-virtual {p0, v3}, Lcom/htc/omadm/util/DMAgentConnector;->decryptResponse([B)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, result:Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 307
    .local v1, idx:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 308
    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 312
    .end local v1           #idx:I
    .end local v3           #respond:[B
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "DMAgentConnector"

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

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v6, 0x9

    iput v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->mConnectStatus:I

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    :try_start_3
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    if-eqz v6, :cond_2

    .line 320
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 326
    :cond_2
    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_3

    .line 327
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 333
    :cond_3
    :goto_2
    :try_start_5
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v6, :cond_4

    .line 334
    iget-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 339
    :cond_4
    :goto_3
    const/4 v6, 0x0

    :try_start_6
    iput-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 340
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 341
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/omadm/util/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 343
    invoke-virtual {p0}, Lcom/htc/omadm/util/DMAgentConnector;->openConnection()Z

    move-object v4, v5

    .line 344
    goto/16 :goto_0

    .line 322
    :catch_1
    move-exception v2

    .line 323
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 280
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 329
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 330
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 336
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 337
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method
