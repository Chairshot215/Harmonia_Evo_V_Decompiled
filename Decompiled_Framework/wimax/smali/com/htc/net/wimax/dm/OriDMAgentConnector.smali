.class public Lcom/htc/net/wimax/dm/OriDMAgentConnector;
.super Ljava/lang/Object;
.source "OriDMAgentConnector.java"


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

.field protected static final TAG:Ljava/lang/String; = "OriDMAgentConnector"

.field public static cmdTY1:Ljava/lang/String; = null

.field public static cmdTY2:Ljava/lang/String; = null

.field public static cmdTY3:Ljava/lang/String; = null

.field public static final cmdXCMD:Ljava/lang/String; = ":XCMD"

.field private static mInstance:Lcom/htc/net/wimax/dm/OriDMAgentConnector;


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

    const-string v0, ":TY1"

    sput-object v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY1:Ljava/lang/String;

    const-string v0, ":TY2"

    sput-object v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY2:Ljava/lang/String;

    const-string v0, ":TY3"

    sput-object v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY3:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mInstance:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->PORT:I

    const-string v0, ":IDOMADM"

    iput-object v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdPWD:Ljava/lang/String;

    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdEXIT:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->DBG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    return-void
.end method

.method public static getSingleton()Lcom/htc/net/wimax/dm/OriDMAgentConnector;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mInstance:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    invoke-direct {v0}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mInstance:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    :cond_0
    sget-object v0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mInstance:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    return-object v0
.end method


# virtual methods
.method public changeTTY(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v2, ":IDOMADM"

    iput-object v2, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    const/16 v2, 0x200

    new-array v1, v2, [B

    iget-object v2, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/net/wimax/dm/Encrypt;->getInstance()Lcom/htc/net/wimax/dm/Encrypt;

    move-result-object v3

    sget-object v4, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/htc/net/wimax/dm/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    iget-object v2, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeConnection()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v4, :cond_0

    const-string v4, "OriDMAgentConnector"

    const-string v5, "closeConnection fail:requestSocket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/net/wimax/dm/Encrypt;->getInstance()Lcom/htc/net/wimax/dm/Encrypt;

    move-result-object v5

    sget-object v6, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/htc/net/wimax/dm/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    const/16 v4, 0x200

    new-array v2, v4, [B

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    const-string v4, "OriDMAgentConnector"

    const-string v5, "closeConnection success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/4 v4, 0x7

    iput v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    iput-object v8, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iput-object v8, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    iput-object v8, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "OriDMAgentConnector"

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

    const/16 v4, 0x9

    iput v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public decryptResponse([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OriDMAgentConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempres:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/dm/Encrypt;->getInstance()Lcom/htc/net/wimax/dm/Encrypt;

    move-result-object v2

    sget-object v3, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/net/wimax/dm/Encrypt;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectStatus()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    return v0
.end method

.method public openConnection()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/net/Socket;

    const-string v6, "localhost"

    const/16 v7, 0x2606

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v5, :cond_0

    const/16 v5, 0x8

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/net/wimax/dm/Encrypt;->getInstance()Lcom/htc/net/wimax/dm/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/htc/net/wimax/dm/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    const/16 v5, 0x200

    new-array v3, v5, [B

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0, v3}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->decryptResponse([B)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v9, :cond_5

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/net/wimax/dm/Encrypt;->getInstance()Lcom/htc/net/wimax/dm/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/htc/net/wimax/dm/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0, v3}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->decryptResponse([B)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v9, :cond_4

    sget-object v5, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    const/4 v5, 0x1

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    :try_start_1
    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    iput-object v10, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iput-object v10, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    iput-object v10, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    :cond_3
    move v5, v4

    goto/16 :goto_0

    :cond_4
    :try_start_4
    const-string v5, "OriDMAgentConnector"

    const-string v6, "connection fail:cmdPWD fail"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xa

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const-string v5, "OriDMAgentConnector"

    const-string v6, "connection fail:cmdID fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xa

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "OriDMAgentConnector"

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v5, 0x9

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/4 v4, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public openXCMD()Z
    .locals 10

    const/4 v4, 0x1

    const/4 v9, 0x0

    const-string v5, ":XCMD"

    iput-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/net/Socket;

    const-string v6, "localhost"

    const/16 v7, 0x2606

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v5, :cond_0

    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v5, 0x2

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/net/wimax/dm/Encrypt;->getInstance()Lcom/htc/net/wimax/dm/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/htc/net/wimax/dm/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    const/16 v5, 0x200

    new-array v2, v5, [B

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    const/4 v5, 0x1

    iput v5, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "OriDMAgentConnector"

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

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0x9

    iput v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/4 v3, 0x0

    if-nez v3, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    iput-object v9, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iput-object v9, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    iput-object v9, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    :cond_4
    move v4, v3

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public declared-synchronized sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_1

    const-string v6, "OriDMAgentConnector"

    const-string v7, "reconnect requestSocket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/net/Socket;

    const-string v7, "localhost"

    const/16 v8, 0x2606

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_1

    const/16 v6, 0x8

    iput v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const-string v6, "OriDMAgentConnector"

    const-string v7, "reconnect requestSocket fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/net/wimax/dm/Encrypt;->getInstance()Lcom/htc/net/wimax/dm/Encrypt;

    move-result-object v7

    sget-object v8, Lcom/htc/net/wimax/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v7, v8, p1}, Lcom/htc/net/wimax/dm/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const/4 v6, 0x6

    iput v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    const/16 v6, 0x200

    new-array v3, v6, [B

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    invoke-virtual {p0, v3}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->decryptResponse([B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v6, "OriDMAgentConnector"

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

    const/16 v6, 0x9

    iput v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->mConnectStatus:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    :try_start_5
    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_3
    const/4 v6, 0x0

    :try_start_6
    iput-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->out:Ljava/io/OutputStream;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->openConnection()Z

    move-object v4, v5

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_2
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method
