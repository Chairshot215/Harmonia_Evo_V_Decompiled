.class public Lcom/htc/android/worldclock/DmdCmd;
.super Ljava/lang/Object;
.source "DmdCmd.java"


# static fields
.field private static final FLASH_READ:Ljava/lang/String; = ":XCMD:ALARM:READ:0132:"

.field private static final FLASH_WRITE:Ljava/lang/String; = ":XCMD:ALARM:WRITE:0132:"


# instance fields
.field private Hostname:Ljava/lang/String;

.field private mConn:Z

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mPort:I

.field private mRequestSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, "127.0.0.1"

    iput-object v1, p0, Lcom/htc/android/worldclock/DmdCmd;->Hostname:Ljava/lang/String;

    .line 14
    const/16 v1, 0x2606

    iput v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mPort:I

    .line 21
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    .line 24
    sget-boolean v1, Lcom/htc/android/worldclock/Global;->QUALCOMM_DEVICE:Z

    if-eqz v1, :cond_0

    .line 25
    const/16 v1, 0x2676

    iput v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mPort:I

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/DmdCmd;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 28
    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, deviceCid:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device CID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

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

    .line 13
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/htc/android/worldclock/DmdCmd;->Hostname:Ljava/lang/String;

    .line 14
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/android/worldclock/DmdCmd;->mPort:I

    .line 33
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    .line 36
    iput-object p1, p0, Lcom/htc/android/worldclock/DmdCmd;->Hostname:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/htc/android/worldclock/DmdCmd;->mPort:I

    .line 38
    return-void
.end method

.method private Command(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "outstring"

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 86
    const/16 v3, 0x200

    new-array v1, v3, [B

    .line 88
    .local v1, respond:[B
    iget-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 94
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 95
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    iget-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 103
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, result:Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v2           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 97
    .local v0, ioException:Ljava/io/IOException;
    const-string v3, "IOException."

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 98
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    .line 99
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DmdCmd;->DisConn()V

    goto :goto_1
.end method

.method private Command([B)Ljava/lang/String;
    .locals 5
    .parameter "output"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 113
    const/16 v3, 0x200

    new-array v1, v3, [B

    .line 115
    .local v1, respond:[B
    iget-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    if-nez v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 120
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 121
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 122
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    iget-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 130
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, result:Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v2           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, ioException:Ljava/io/IOException;
    const-string v3, "IOException."

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 125
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    .line 126
    invoke-virtual {p0}, Lcom/htc/android/worldclock/DmdCmd;->DisConn()V

    goto :goto_1
.end method


# virtual methods
.method public BinToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 139
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 141
    aget-byte v3, p1, v0

    if-ltz v3, :cond_1

    aget-byte v3, p1, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public Conn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 42
    const-string v3, "connect to server"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    .line 47
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/htc/android/worldclock/DmdCmd;->Hostname:Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/worldclock/DmdCmd;->mPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    .line 48
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 64
    :goto_0
    return v2

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mOut:Ljava/io/OutputStream;

    .line 54
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 56
    iget-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mIn:Ljava/io/InputStream;

    .line 57
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_1
    iget-boolean v2, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, unknownHost:Ljava/net/UnknownHostException;
    iput-boolean v2, p0, Lcom/htc/android/worldclock/DmdCmd;->mConn:Z

    goto :goto_1

    .line 61
    .end local v1           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, ioException:Ljava/io/IOException;
    const-string v2, "IOException."

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public DisConn()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 69
    const-string v1, "disconnect from server"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 76
    iget-object v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 77
    iget-object v1, p0, Lcom/htc/android/worldclock/DmdCmd;->mRequestSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ioException:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public HextoBin(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    .line 152
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 153
    const-string v2, "0123456789ABCDEF"

    .line 154
    .local v2, digital:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 155
    .local v3, hex2char:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v1, v6, [B

    .line 157
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_0

    .line 158
    mul-int/lit8 v6, v4, 0x2

    aget-char v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    mul-int/lit8 v5, v6, 0x10

    .line 159
    .local v5, temp:I
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v6, v3, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 160
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v5           #temp:I
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 163
    .local v0, Ret:Ljava/lang/String;
    return-object v0
.end method

.method public readData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 201
    const-string v2, ":XCMD:ALARM:READ:0132:"

    invoke-direct {p0, v2}, Lcom/htc/android/worldclock/DmdCmd;->Command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, buffer:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/DmdCmd;->HextoBin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, data:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readData, data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 204
    return-object v1
.end method

.method public writeData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 167
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":XCMD:ALARM:WRITE:0132:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/DmdCmd;->BinToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/DmdCmd;->Command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeData([B)Ljava/lang/String;
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x0

    .line 173
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 174
    const-string v9, "write byte data"

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 176
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Long;

    const-wide/32 v9, 0x55aa55aa

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v12

    const/4 v9, 0x1

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-wide/16 v10, 0x78

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    .line 177
    .local v7, longHeader:[Ljava/lang/Long;
    invoke-static {v7}, Lcom/htc/android/worldclock/Alarms;->convertLongToByte([Ljava/lang/Long;)[B

    move-result-object v0

    .line 179
    .local v0, byteHeader:[B
    const-string v9, ":XCMD:ALARM:WRITE:0132:"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v1, v9

    .line 180
    .local v1, cmdLength:I
    array-length v4, v0

    .line 181
    .local v4, headerLength:I
    array-length v2, p1

    .line 183
    .local v2, dataLength:I
    add-int v9, v1, v4

    add-int/2addr v9, v2

    new-array v3, v9, [B

    .line 184
    .local v3, dst:[B
    const-string v9, ":XCMD:ALARM:WRITE:0132:"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9, v12, v3, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    invoke-static {v0, v12, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    add-int v9, v1, v4

    invoke-static {p1, v12, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    const-string v6, ""

    .line 189
    .local v6, logData:Ljava/lang/String;
    move v5, v1

    .local v5, i:I
    :goto_0
    array-length v9, v3

    if-ge v5, v9, :cond_0

    .line 190
    aget-byte v9, v3, v5

    and-int/lit16 v8, v9, 0xff

    .line 192
    .local v8, res:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "res["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-long v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "> ,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    .end local v8           #res:I
    :cond_0
    invoke-static {v6}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v3}, Lcom/htc/android/worldclock/DmdCmd;->Command([B)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
