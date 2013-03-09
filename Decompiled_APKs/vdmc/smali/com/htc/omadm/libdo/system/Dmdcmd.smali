.class public Lcom/htc/omadm/libdo/system/Dmdcmd;
.super Ljava/lang/Object;
.source "Dmdcmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/libdo/system/Dmdcmd$SocketThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dmdcmd"

.field private static me:Lcom/htc/omadm/libdo/system/Dmdcmd;


# instance fields
.field private Hostname:Ljava/lang/String;

.field private Port:I

.field private bConn:Z

.field private in:Ljava/io/InputStream;

.field private mSuspendLock:Ljava/lang/Object;

.field mcommand:Ljava/lang/String;

.field private out:Ljava/io/OutputStream;

.field private requestSocket:Ljava/net/Socket;

.field result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/system/Dmdcmd;->me:Lcom/htc/omadm/libdo/system/Dmdcmd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Hostname:Ljava/lang/String;

    .line 15
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Port:I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->result:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->mcommand:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "newHostname"
    .parameter "newPort"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Hostname:Ljava/lang/String;

    .line 15
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Port:I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->result:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->mcommand:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    .line 35
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Hostname:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Port:I

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/htc/omadm/libdo/system/Dmdcmd;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/omadm/libdo/system/Dmdcmd;)Ljava/net/Socket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/omadm/libdo/system/Dmdcmd;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/omadm/libdo/system/Dmdcmd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/omadm/libdo/system/Dmdcmd;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Port:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/omadm/libdo/system/Dmdcmd;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/omadm/libdo/system/Dmdcmd;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/omadm/libdo/system/Dmdcmd;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->in:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/omadm/libdo/system/Dmdcmd;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/htc/omadm/libdo/system/Dmdcmd;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/omadm/libdo/system/Dmdcmd;->me:Lcom/htc/omadm/libdo/system/Dmdcmd;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/htc/omadm/libdo/system/Dmdcmd;

    invoke-direct {v0}, Lcom/htc/omadm/libdo/system/Dmdcmd;-><init>()V

    sput-object v0, Lcom/htc/omadm/libdo/system/Dmdcmd;->me:Lcom/htc/omadm/libdo/system/Dmdcmd;

    .line 43
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/Dmdcmd;->me:Lcom/htc/omadm/libdo/system/Dmdcmd;

    return-object v0
.end method


# virtual methods
.method public Command(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "outstring"

    .prologue
    const/4 v4, 0x0

    .line 101
    const-string v2, ""

    .line 102
    .local v2, result:Ljava/lang/String;
    const/16 v5, 0x200

    new-array v1, v5, [B

    .line 104
    .local v1, respond:[B
    iget-boolean v5, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    if-nez v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v4

    .line 108
    :cond_1
    :try_start_0
    const-string v5, "dmdcmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outstring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v5, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v6

    sget-object v7, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v6, v7, p1}, Lcom/htc/omadm/util/Encrypt;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 110
    iget-object v5, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 111
    iget-object v5, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 112
    const-string v5, "dmdcmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "respond: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iget-boolean v5, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 120
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 121
    .local v3, test:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 122
    const-string v4, "dmdcmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/htc/omadm/util/Encrypt;->getInstance()Lcom/htc/omadm/util/Encrypt;

    move-result-object v4

    sget-object v5, Lcom/htc/omadm/util/Encrypt;->PrivateKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/htc/omadm/util/Encrypt;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 124
    goto :goto_0

    .line 113
    .end local v3           #test:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, ioException:Ljava/io/IOException;
    const-string v5, "dmdcmd"

    const-string v6, "IOException."

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    .line 116
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/system/Dmdcmd;->DisConn()V

    goto :goto_1
.end method

.method public Conn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    .line 68
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Hostname:Ljava/lang/String;

    iget v5, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->Port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    .line 69
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 85
    :goto_0
    return v2

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->out:Ljava/io/OutputStream;

    .line 75
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 77
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->in:Ljava/io/InputStream;

    .line 78
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_1
    iget-boolean v2, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    .local v1, unknownHost:Ljava/net/UnknownHostException;
    iput-boolean v2, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->bConn:Z

    goto :goto_1

    .line 82
    .end local v1           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, ioException:Ljava/io/IOException;
    const-string v2, "dmdcmd"

    const-string v3, "IOException."

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisConn()V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 93
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 94
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, ioException:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public SendCommandToDmagent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "command"

    .prologue
    .line 47
    new-instance v1, Lcom/htc/omadm/libdo/system/Dmdcmd$SocketThread;

    invoke-direct {v1, p0}, Lcom/htc/omadm/libdo/system/Dmdcmd$SocketThread;-><init>(Lcom/htc/omadm/libdo/system/Dmdcmd;)V

    .line 49
    .local v1, mSocketThread:Lcom/htc/omadm/libdo/system/Dmdcmd$SocketThread;
    invoke-virtual {v1, p1}, Lcom/htc/omadm/libdo/system/Dmdcmd$SocketThread;->SetCommand(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Lcom/htc/omadm/libdo/system/Dmdcmd$SocketThread;->start()V

    .line 52
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 54
    :try_start_0
    const-string v2, "dmdcmd"

    const-string v4, "Get response from dmagent."

    invoke-static {v2, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    const-string v2, "dmdcmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dmagent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Dmdcmd;->result:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 58
    const-string v2, "FALSE"

    monitor-exit v3

    goto :goto_0

    .line 60
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
