.class public Lcom/android/smith/ClientLocalSocket;
.super Ljava/lang/Object;
.source "ClientLocalSocket.java"


# static fields
.field public static final CMD_ENDSERVER:Ljava/lang/String; = ":endserver:"

.field public static final CMD_GETPORT:Ljava/lang/String; = ":getport:"

.field public static final CMD_GETVER:Ljava/lang/String; = ":getver:"

.field public static final SOCKET_CLIENT_PATH:Ljava/lang/String; = "/data/data/com.android.smith/tmp/smsocket.c."

.field public static final SOCKET_SERVER_PATH:Ljava/lang/String; = "/data/data/com.android.smith/tmp/smsocket.s."

.field private static final TAG:Ljava/lang/String; = "SM:ClientLocalSocket"


# instance fields
.field private mClientPath:Ljava/lang/String;

.field private mResException:Ljava/lang/Exception;

.field private mServerPath:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStreamIn:Ljava/io/InputStream;

.field private mStreamOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    .line 50
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    .line 51
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 52
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 56
    const-string v0, "/data/data/com.android.smith/tmp/smsocket.s.65511"

    const-string v1, "/data/data/com.android.smith/tmp/smsocket.c.65511"

    invoke-virtual {p0, v0, v1}, Lcom/android/smith/ClientLocalSocket;->open(Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "virtualPort"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    .line 50
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    .line 51
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 52
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.android.smith/tmp/smsocket.s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.android.smith/tmp/smsocket.c."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/smith/ClientLocalSocket;->open(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "serviceName"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    .line 50
    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    .line 51
    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 52
    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 66
    invoke-static {p1}, Lcom/android/smith/ClientLocalSocket;->getServicePort(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, port:I
    if-gez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.android.smith/tmp/smsocket.s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.android.smith/tmp/smsocket.c."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/smith/ClientLocalSocket;->open(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serverPath"
    .parameter "clientPath"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    .line 50
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    .line 51
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 52
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/smith/ClientLocalSocket;->open(Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    return-void
.end method

.method public static getServerVersion()I
    .locals 3

    .prologue
    .line 362
    const/4 v1, -0x1

    .line 364
    .local v1, ver:I
    invoke-static {}, Lcom/android/smith/ClientLocalSocket;->startServiceServer()Lcom/android/smith/ClientLocalSocket;

    move-result-object v0

    .line 366
    .local v0, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-nez v0, :cond_0

    .line 372
    :goto_0
    return v1

    .line 369
    :cond_0
    const-string v2, ":getver:"

    invoke-virtual {v0, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v1

    .line 371
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    goto :goto_0
.end method

.method public static getServicePort(Ljava/lang/String;)I
    .locals 4
    .parameter "sername"

    .prologue
    .line 377
    const/4 v1, -0x1

    .line 379
    .local v1, port:I
    invoke-static {}, Lcom/android/smith/ClientLocalSocket;->startServiceServer()Lcom/android/smith/ClientLocalSocket;

    move-result-object v0

    .line 381
    .local v0, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-nez v0, :cond_0

    move v2, v1

    .line 393
    .end local v1           #port:I
    .local v2, port:I
    :goto_0
    return v2

    .line 385
    .end local v2           #port:I
    .restart local v1       #port:I
    :cond_0
    const-string v3, ":getver:"

    invoke-virtual {v0, v3}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v1

    .line 390
    invoke-virtual {v0, p0}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v1

    .line 392
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    move v2, v1

    .line 393
    .end local v1           #port:I
    .restart local v2       #port:I
    goto :goto_0
.end method

.method private static startServiceServer()Lcom/android/smith/ClientLocalSocket;
    .locals 5

    .prologue
    const v4, 0xffe7

    .line 336
    new-instance v1, Lcom/android/smith/ClientLocalSocket;

    invoke-direct {v1, v4}, Lcom/android/smith/ClientLocalSocket;-><init>(I)V

    .line 338
    .local v1, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    .end local v1           #mSocket:Lcom/android/smith/ClientLocalSocket;
    :goto_0
    return-object v1

    .line 343
    .restart local v1       #mSocket:Lcom/android/smith/ClientLocalSocket;
    :cond_0
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 348
    :cond_1
    :try_start_0
    const-string v2, "/data/data/com.android.smith/bin/smithd"

    invoke-static {v2}, Lcom/android/smith/Device;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 350
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_1
    new-instance v1, Lcom/android/smith/ClientLocalSocket;

    .end local v1           #mSocket:Lcom/android/smith/ClientLocalSocket;
    invoke-direct {v1, v4}, Lcom/android/smith/ClientLocalSocket;-><init>(I)V

    goto :goto_0

    .line 352
    .restart local v1       #mSocket:Lcom/android/smith/ClientLocalSocket;
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SM:ClientLocalSocket"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 235
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 242
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 256
    :cond_3
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 262
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 264
    const-string v0, "SM:ClientLocalSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove client ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 269
    :cond_5
    iput-object v3, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    .line 270
    iput-object v3, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    .line 271
    iput-object v3, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    .line 272
    iput-object v3, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 273
    iput-object v3, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    .line 274
    return-void

    .line 258
    :catch_0
    move-exception v0

    goto :goto_4

    .line 251
    :catch_1
    move-exception v0

    goto :goto_3

    .line 244
    :catch_2
    move-exception v0

    goto :goto_2

    .line 237
    :catch_3
    move-exception v0

    goto :goto_1

    .line 230
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public getLastException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 327
    .local v0, r:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 328
    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/smith/ClientLocalSocket;->write(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/smith/ClientLocalSocket;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public issueServiceCommandNoReturn(Ljava/lang/String;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/smith/ClientLocalSocket;->write(Ljava/lang/String;)V

    .line 322
    :cond_0
    return-void
.end method

.method public issueServiceCommandReturnInt(Ljava/lang/String;)I
    .locals 4
    .parameter "command"

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 311
    .local v1, ret:I
    :goto_0
    return v1

    .line 304
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SM:ClientLocalSocket"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 308
    const/4 v1, -0x1

    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "serverPath"
    .parameter "clientPath"

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, ret:Z
    invoke-virtual {p0}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 90
    iput-object p1, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    .line 95
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    .line 97
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "SM:ClientLocalSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect server ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from client ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 103
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mClientPath:Ljava/lang/String;

    const-string v3, "770"

    invoke-static {v2, v3}, Lcom/android/smith/Device;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcom/android/smith/ClientLocalSocket;->mServerPath:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 107
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 108
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    const/4 v1, 0x1

    .line 118
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    new-array v0, v3, [B

    .line 151
    .local v0, data:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/smith/ClientLocalSocket;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 153
    aget-byte v1, v0, v2

    .line 156
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, -0x1

    .line 164
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/smith/ClientLocalSocket;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 133
    const/4 v0, -0x1

    .line 136
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, -0x1

    .line 141
    iput-object v1, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    const/16 v2, 0x2000

    new-array v1, v2, [B

    .line 171
    .local v1, data:[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/smith/ClientLocalSocket;->read([BII)I

    move-result v0

    .line 173
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 175
    const-string v2, ""

    .line 178
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    const/4 v2, 0x0

    .line 199
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 201
    .local v0, data:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 203
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/smith/ClientLocalSocket;->write([BII)Z

    .line 204
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 221
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/smith/ClientLocalSocket;->write([BII)Z

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/smith/ClientLocalSocket;->write([BII)Z

    goto :goto_0
.end method

.method public write([BII)Z
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 186
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/smith/ClientLocalSocket;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v1, 0x1

    .line 194
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/android/smith/ClientLocalSocket;->mResException:Ljava/lang/Exception;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
