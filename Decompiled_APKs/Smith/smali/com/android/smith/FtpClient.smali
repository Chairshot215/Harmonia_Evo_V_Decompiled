.class public Lcom/android/smith/FtpClient;
.super Ljava/lang/Object;
.source "FtpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SM:FtpClient"

.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private final BUFFER_SIZE:I

.field public mHomeDir:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mPass:Ljava/lang/String;

.field public mPort:I

.field public mReader:Ljava/io/BufferedReader;

.field public mSocket:Ljava/net/Socket;

.field public mTryStop:Z

.field public mUser:Ljava/lang/String;

.field public mWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/smith/FtpClient;->BUFFER_SIZE:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/FtpClient;->mTryStop:Z

    .line 51
    return-void
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    const/16 v3, 0x2f

    const/4 v2, -0x1

    .line 160
    const/4 v0, -0x1

    .line 161
    .local v0, end:I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 163
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_0
    if-ne v0, v2, :cond_1

    .line 167
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 169
    :goto_1
    return-object v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    const/16 v3, 0x2f

    const/4 v2, -0x1

    .line 146
    const/4 v0, -0x1

    .line 147
    .local v0, end:I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 149
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    .line 151
    :cond_0
    if-ne v0, v2, :cond_1

    .line 153
    new-instance v1, Ljava/lang/String;

    const-string v2, "./"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 155
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public changeDir(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CWD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, response:Ljava/lang/String;
    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public connect()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->disconnect()V

    .line 98
    :cond_0
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/smith/FtpClient;->mHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/smith/FtpClient;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    .line 99
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/android/smith/FtpClient;->mReader:Ljava/io/BufferedReader;

    .line 100
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/android/smith/FtpClient;->mWriter:Ljava/io/BufferedWriter;

    .line 102
    iget-object v1, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    const-string v1, "SM:FtpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot connect to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/FtpClient;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/FtpClient;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "220"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    const-string v1, "SM:FtpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no ftp service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/FtpClient;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/FtpClient;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/FtpClient;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/FtpClient;->mPass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "230"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    const-string v1, "SM:FtpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/FtpClient;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/FtpClient;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/FtpClient;->mUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/FtpClient;->mPass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->currentDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/FtpClient;->mHomeDir:Ljava/lang/String;

    .line 126
    const-string v0, "SM:FtpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/FtpClient;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/smith/FtpClient;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/FtpClient;->mHomeDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public currentDir()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 232
    const-string v3, "PWD"

    invoke-virtual {p0, v3}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, response:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 236
    .local v2, start:I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 238
    .local v0, end:I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public disconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    :try_start_0
    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    iput-object v1, p0, Lcom/android/smith/FtpClient;->mReader:Ljava/io/BufferedReader;

    .line 140
    iput-object v1, p0, Lcom/android/smith/FtpClient;->mWriter:Ljava/io/BufferedWriter;

    .line 141
    iput-object v1, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    .line 142
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/FtpClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeDir(Ljava/lang/String;)Z
    .locals 3
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MKD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, response:Ljava/lang/String;
    const-string v1, "257"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public makePath(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, start:I
    const/4 v0, -0x1

    .line 266
    .local v0, end:I
    iget-object v2, p0, Lcom/android/smith/FtpClient;->mHomeDir:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/smith/FtpClient;->changeDir(Ljava/lang/String;)Z

    .line 267
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 269
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/smith/FtpClient;->makeDir(Ljava/lang/String;)Z

    .line 270
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/smith/FtpClient;->changeDir(Ljava/lang/String;)Z

    .line 271
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/smith/FtpClient;->makeDir(Ljava/lang/String;)Z

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/android/smith/FtpClient;->mHomeDir:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/smith/FtpClient;->changeDir(Ljava/lang/String;)Z

    .line 278
    const/4 v2, 0x1

    return v2
.end method

.method public readFtpResponse()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/smith/FtpClient;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public sendFtpCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/smith/FtpClient;->mWriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/smith/FtpClient;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 82
    return-void
.end method

.method public setBinMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v1, "TYPE I"

    invoke-virtual {p0, v1}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, response:Ljava/lang/String;
    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/smith/FtpClient;->mHost:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 1
    .parameter "pass"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/smith/FtpClient;->mPass:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/smith/FtpClient;->mPort:I

    .line 61
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/smith/FtpClient;->mUser:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public tryStop(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/smith/FtpClient;->mTryStop:Z

    .line 284
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "filepathname"
    .parameter "uploadpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct/range {p0 .. p1}, Lcom/android/smith/FtpClient;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, filepath:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/smith/FtpClient;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, filename:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_0

    .line 183
    const-string v14, "SM:FtpClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "not a file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v14, 0x0

    .line 227
    :goto_0
    return v14

    .line 187
    :cond_0
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    .local v9, filestream:Ljava/io/BufferedInputStream;
    const-string v14, "PASV"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, response:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/smith/FtpClient;->mHomeDir:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/smith/FtpClient;->changeDir(Ljava/lang/String;)Z

    .line 194
    const/16 v14, 0x28

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x29

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 196
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, ","

    invoke-direct {v13, v12, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v13, tokenizer:Ljava/util/StringTokenizer;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, addr:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit16 v14, v14, 0x100

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int v11, v14, v15

    .line 200
    .local v11, port:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/smith/FtpClient;->setBinMode()Z

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/smith/FtpClient;->makePath(Ljava/lang/String;)Z

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/smith/FtpClient;->changeDir(Ljava/lang/String;)Z

    .line 204
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "STOR "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/smith/FtpClient;->sendFtpCommand(Ljava/lang/String;)V

    .line 206
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v2, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 208
    .local v5, dataSocket:Ljava/net/Socket;
    invoke-virtual/range {p0 .. p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v12

    .line 210
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 211
    .local v10, output:Ljava/io/BufferedOutputStream;
    const/16 v14, 0x1000

    new-array v3, v14, [B

    .line 212
    .local v3, buffer:[B
    const/4 v4, 0x0

    .line 213
    .local v4, bytesRead:I
    :goto_1
    invoke-virtual {v9, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v14, -0x1

    if-eq v4, v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/smith/FtpClient;->mTryStop:Z

    if-nez v14, :cond_1

    .line 215
    const/4 v14, 0x0

    invoke-virtual {v10, v3, v14, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 218
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 219
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/smith/FtpClient;->readFtpResponse()Ljava/lang/String;

    move-result-object v12

    .line 223
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/smith/FtpClient;->mTryStop:Z

    if-eqz v14, :cond_2

    .line 225
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 227
    :cond_2
    const/4 v14, 0x1

    goto/16 :goto_0
.end method
