.class public Lcom/android/smith/ClientSocket;
.super Ljava/lang/Object;
.source "ClientSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/ClientSocket$ClientSocketThread;,
        Lcom/android/smith/ClientSocket$OnSocketEventListener;
    }
.end annotation


# static fields
.field public static final CMD_ENDSERVER:Ljava/lang/String; = ":endserver:"

.field public static final CMD_GETPORT:Ljava/lang/String; = ":getport:"

.field public static final CMD_GETVER:Ljava/lang/String; = ":getver:"

.field private static final MSG_SOCKET_CLOSE:I = 0x6

.field private static final MSG_SOCKET_ISCLOSED:I = 0x3

.field private static final MSG_SOCKET_ISCONNECTED:I = 0x2

.field private static final MSG_SOCKET_OPEN:I = 0x1

.field private static final MSG_SOCKET_OPEN_SERVICE:I = 0x7

.field private static final MSG_SOCKET_READ:I = 0x4

.field private static final MSG_SOCKET_WRITE:I = 0x5

.field public static final SOCKET_PORT_LAST:I = 0xfff0

.field public static final SOCKET_PORT_SERVICE:I = 0xffe7

.field private static final TAG:Ljava/lang/String; = "SM:ClientSocket"


# instance fields
.field private mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

.field private mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

.field private mResException:Ljava/lang/Exception;

.field private mSocket:Ljava/net/Socket;

.field private mStreamIn:Ljava/io/InputStream;

.field private mStreamOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 559
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    .line 58
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    .line 59
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    .line 60
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 61
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 63
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

    .line 561
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

    .line 562
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "port"

    .prologue
    .line 566
    const-string v0, "127.0.0.1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/smith/ClientSocket;-><init>(Ljava/lang/String;ILcom/android/smith/ClientSocket$OnSocketEventListener;)V

    .line 567
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 594
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/smith/ClientSocket;-><init>(Ljava/lang/String;Lcom/android/smith/ClientSocket$OnSocketEventListener;)V

    .line 595
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "address"
    .parameter "port"

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/smith/ClientSocket;-><init>(Ljava/lang/String;ILcom/android/smith/ClientSocket$OnSocketEventListener;)V

    .line 572
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/smith/ClientSocket$OnSocketEventListener;)V
    .locals 3
    .parameter "address"
    .parameter "port"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    .line 58
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    .line 59
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    .line 60
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 61
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 63
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

    .line 576
    iput-object p3, p0, Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

    .line 578
    new-instance v0, Lcom/android/smith/ClientSocket$ClientSocketThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/smith/ClientSocket$ClientSocketThread;-><init>(Lcom/android/smith/ClientSocket;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    .line 579
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->start()V

    .line 580
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0, p1, p2}, Lcom/android/smith/ClientSocket$ClientSocketThread;->open(Ljava/lang/String;I)Z

    .line 581
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/smith/ClientSocket$OnSocketEventListener;)V
    .locals 3
    .parameter "service"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    .line 58
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    .line 59
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    .line 60
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 61
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 63
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

    .line 585
    iput-object p2, p0, Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

    .line 587
    new-instance v0, Lcom/android/smith/ClientSocket$ClientSocketThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/smith/ClientSocket$ClientSocketThread;-><init>(Lcom/android/smith/ClientSocket;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    .line 588
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->start()V

    .line 589
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0, p1}, Lcom/android/smith/ClientSocket$ClientSocketThread;->open(Ljava/lang/String;)Z

    .line 590
    return-void
.end method

.method static synthetic access$000(Lcom/android/smith/ClientSocket;)Lcom/android/smith/ClientSocket$OnSocketEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mListener:Lcom/android/smith/ClientSocket$OnSocketEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/smith/ClientSocket;)Ljava/net/Socket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/smith/ClientSocket;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/smith/ClientSocket;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/smith/ClientSocket;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    return-object p1
.end method

.method public static getServerVersion()I
    .locals 3

    .prologue
    .line 767
    const/4 v1, -0x1

    .line 769
    .local v1, ver:I
    invoke-static {}, Lcom/android/smith/ClientSocket;->startServiceServer()Lcom/android/smith/ClientSocket;

    move-result-object v0

    .line 771
    .local v0, mSocket:Lcom/android/smith/ClientSocket;
    if-nez v0, :cond_0

    .line 777
    :goto_0
    return v1

    .line 774
    :cond_0
    const-string v2, ":getver:"

    invoke-virtual {v0, v2}, Lcom/android/smith/ClientSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v1

    .line 776
    invoke-virtual {v0}, Lcom/android/smith/ClientSocket;->close()V

    goto :goto_0
.end method

.method public static getServicePort(Ljava/lang/String;)I
    .locals 4
    .parameter "sername"

    .prologue
    .line 782
    const/4 v1, -0x1

    .line 784
    .local v1, port:I
    invoke-static {}, Lcom/android/smith/ClientSocket;->startServiceServer()Lcom/android/smith/ClientSocket;

    move-result-object v0

    .line 786
    .local v0, mSocket:Lcom/android/smith/ClientSocket;
    if-nez v0, :cond_0

    move v2, v1

    .line 798
    .end local v1           #port:I
    .local v2, port:I
    :goto_0
    return v2

    .line 790
    .end local v2           #port:I
    .restart local v1       #port:I
    :cond_0
    const-string v3, ":getver:"

    invoke-virtual {v0, v3}, Lcom/android/smith/ClientSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v1

    .line 795
    invoke-virtual {v0, p0}, Lcom/android/smith/ClientSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v1

    .line 797
    invoke-virtual {v0}, Lcom/android/smith/ClientSocket;->close()V

    move v2, v1

    .line 798
    .end local v1           #port:I
    .restart local v2       #port:I
    goto :goto_0
.end method

.method private static startServiceServer()Lcom/android/smith/ClientSocket;
    .locals 5

    .prologue
    const v4, 0xffe7

    .line 741
    new-instance v1, Lcom/android/smith/ClientSocket;

    invoke-direct {v1, v4}, Lcom/android/smith/ClientSocket;-><init>(I)V

    .line 743
    .local v1, mSocket:Lcom/android/smith/ClientSocket;
    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {v1}, Lcom/android/smith/ClientSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    .end local v1           #mSocket:Lcom/android/smith/ClientSocket;
    :goto_0
    return-object v1

    .line 748
    .restart local v1       #mSocket:Lcom/android/smith/ClientSocket;
    :cond_0
    invoke-virtual {v1}, Lcom/android/smith/ClientSocket;->close()V

    .line 753
    :cond_1
    :try_start_0
    const-string v2, "/data/data/com.android.smith/bin/smithd"

    invoke-static {v2}, Lcom/android/smith/Device;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 755
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_1
    new-instance v1, Lcom/android/smith/ClientSocket;

    .end local v1           #mSocket:Lcom/android/smith/ClientSocket;
    invoke-direct {v1, v4}, Lcom/android/smith/ClientSocket;-><init>(I)V

    goto :goto_0

    .line 757
    .restart local v1       #mSocket:Lcom/android/smith/ClientSocket;
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SM:ClientSocket"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->close()V

    .line 600
    return-void
.end method

.method public closeDirect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 166
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 173
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 180
    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 187
    :cond_3
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 192
    :cond_4
    :goto_4
    iput-object v1, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    .line 193
    iput-object v1, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 194
    iput-object v1, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    .line 195
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_4

    .line 182
    :catch_1
    move-exception v0

    goto :goto_3

    .line 175
    :catch_2
    move-exception v0

    goto :goto_2

    .line 168
    :catch_3
    move-exception v0

    goto :goto_1

    .line 161
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public getLastException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 686
    .local v0, r:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 687
    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosedDirect()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0}, Lcom/android/smith/ClientSocket$ClientSocketThread;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnectedDirect()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"

    .prologue
    .line 692
    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {p0, p1}, Lcom/android/smith/ClientSocket;->write(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/android/smith/ClientSocket;->readString()Ljava/lang/String;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public issueServiceCommandDirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/smith/ClientSocket;->writeDirect([BII)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/smith/ClientSocket;->readStringDirect()Ljava/lang/String;

    move-result-object v0

    .line 205
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
    .line 709
    if-eqz p1, :cond_0

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/smith/ClientSocket;->write(Ljava/lang/String;)V

    .line 715
    :cond_0
    return-void
.end method

.method public issueServiceCommandReturnInt(Ljava/lang/String;)I
    .locals 4
    .parameter "command"

    .prologue
    .line 723
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/smith/ClientSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 732
    .local v1, ret:I
    :goto_0
    return v1

    .line 725
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SM:ClientSocket"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 729
    const/4 v1, -0x1

    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public issueServiceCommandReturnIntDirect(Ljava/lang/String;)I
    .locals 4
    .parameter "command"

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/smith/ClientSocket;->issueServiceCommandDirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    .local v1, ret:I
    :goto_0
    return v1

    .line 216
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SM:ClientSocket"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 220
    const/4 v1, -0x1

    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public openDirect(Ljava/lang/String;I)Z
    .locals 3
    .parameter "address"
    .parameter "port"

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 81
    .local v1, ret:Z
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    .line 83
    iget-object v2, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    .line 86
    iget-object v2, p0, Lcom/android/smith/ClientSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 624
    new-array v0, v3, [B

    .line 626
    .local v0, data:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/smith/ClientSocket;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 628
    aget-byte v1, v0, v2

    .line 631
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
    .line 636
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 637
    :cond_0
    const/4 v0, -0x1

    .line 639
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/smith/ClientSocket;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->read([BII)I

    move-result v0

    return v0
.end method

.method public readDirect([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 111
    const/4 v0, -0x1

    .line 114
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/android/smith/ClientSocket;->mStreamIn:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, -0x1

    .line 119
    iput-object v1, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 644
    const/16 v2, 0x2000

    new-array v1, v2, [B

    .line 646
    .local v1, data:[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/smith/ClientSocket;->read([BII)I

    move-result v0

    .line 648
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 650
    const-string v2, ""

    .line 653
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public readStringDirect()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    const/16 v2, 0x2000

    new-array v1, v2, [B

    .line 129
    .local v1, data:[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/smith/ClientSocket;->readDirect([BII)I

    move-result v0

    .line 131
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 133
    const-string v2, ""

    .line 136
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

    .line 658
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 660
    .local v0, data:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 662
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/smith/ClientSocket;->write([BII)V

    .line 663
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 675
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 680
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/smith/ClientSocket;->write([BII)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 667
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/smith/ClientSocket;->write([BII)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/smith/ClientSocket;->mClientSocketThread:Lcom/android/smith/ClientSocket$ClientSocketThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/smith/ClientSocket$ClientSocketThread;->write([BII)V

    .line 620
    return-void
.end method

.method public writeDirect([BII)Z
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 144
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/smith/ClientSocket;->mStreamOut:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/android/smith/ClientSocket;->mResException:Ljava/lang/Exception;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
