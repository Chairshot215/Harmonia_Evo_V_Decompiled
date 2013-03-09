.class public Lcom/sprint/dsa/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/StateManager$dsaBackgroundState;,
        Lcom/sprint/dsa/StateManager$dsaUIState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DSS"

.field public static keepAliveTimer:Ljava/util/Timer; = null

.field public static final pingDelay:I = 0xfa0

.field private static pingServerCount:I

.field private static pingServerFailCount:I

.field public static timer:Ljava/util/Timer;

.field public static uiTimer:Ljava/util/Timer;


# instance fields
.field private currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

.field currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

.field private mDsaClient:Lcom/sprint/dsa/DsaClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput v0, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    .line 29
    sput v0, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/sprint/dsa/DsaClient;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sprint/dsa/StateManager;->mDsaClient:Lcom/sprint/dsa/DsaClient;

    .line 45
    sget-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_START:Lcom/sprint/dsa/StateManager$dsaUIState;

    iput-object v0, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    .line 46
    sget-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    iput-object v0, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/StateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/sprint/dsa/StateManager;->pingServer()V

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    return v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/StateManager;)Lcom/sprint/dsa/DsaClient;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sprint/dsa/StateManager;->mDsaClient:Lcom/sprint/dsa/DsaClient;

    return-object v0
.end method

.method private pingServer()V
    .locals 11

    .prologue
    const/16 v10, 0x5a

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 188
    :try_start_0
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V

    .line 190
    .local v7, udpSocket:Ljava/net/DatagramSocket;
    const-string v2, "0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 191
    .local v1, buf:[B
    const-string v2, "10.31.172.173"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 192
    .local v4, ip:Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0x50

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 193
    .local v0, dp:Ljava/net/DatagramPacket;
    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 194
    sget v2, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sprint/dsa/StateManager;->pingServerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    iget-object v2, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    sget-object v3, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-ne v2, v3, :cond_8

    .line 201
    sget v2, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    mul-int/lit16 v2, v2, 0xfa0

    if-gt v2, v10, :cond_0

    sget v2, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    if-le v2, v9, :cond_1

    .line 202
    :cond_0
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 203
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 204
    sput-object v8, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    .line 218
    .end local v0           #dp:Ljava/net/DatagramPacket;
    .end local v1           #buf:[B
    .end local v4           #ip:Ljava/net/InetAddress;
    .end local v7           #udpSocket:Ljava/net/DatagramSocket;
    :cond_1
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v6

    .line 196
    .local v6, e:Ljava/io/IOException;
    :try_start_1
    sget v2, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    if-le v2, v9, :cond_2

    .line 197
    const-string v2, "DSS"

    const-string v3, "PingServerFailed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    sget-object v3, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-ne v2, v3, :cond_4

    .line 201
    sget v2, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    mul-int/lit16 v2, v2, 0xfa0

    if-gt v2, v10, :cond_3

    sget v2, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    if-le v2, v9, :cond_1

    .line 202
    :cond_3
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 203
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 204
    sput-object v8, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    goto :goto_0

    .line 212
    :cond_4
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 213
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 214
    sput-object v8, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    goto :goto_0

    .line 199
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 200
    iget-object v3, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    sget-object v5, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-ne v3, v5, :cond_7

    .line 201
    sget v3, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    mul-int/lit16 v3, v3, 0xfa0

    if-gt v3, v10, :cond_5

    sget v3, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    if-le v3, v9, :cond_6

    .line 202
    :cond_5
    sget-object v3, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v3, :cond_6

    .line 203
    sget-object v3, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 204
    sput-object v8, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    .line 217
    :cond_6
    :goto_1
    throw v2

    .line 212
    :cond_7
    sget-object v3, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v3, :cond_6

    .line 213
    sget-object v3, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 214
    sput-object v8, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    goto :goto_1

    .line 212
    .restart local v0       #dp:Ljava/net/DatagramPacket;
    .restart local v1       #buf:[B
    .restart local v4       #ip:Ljava/net/InetAddress;
    .restart local v7       #udpSocket:Ljava/net/DatagramSocket;
    :cond_8
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 213
    sget-object v2, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 214
    sput-object v8, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private terminatePaused()V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    iput-object v0, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    .line 81
    const-string v0, "DSS"

    const-string v1, "TerminatePaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-ne v0, v1, :cond_0

    .line 83
    const-string v0, "DSS"

    const-string v1, "Shutdown and release of SLOT0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sprint/dsa/StateManager;->mDsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->close(I)V

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current BG State is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/sprint/dsa/StateManager;->mDsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    goto :goto_0
.end method


# virtual methods
.method public done()V
    .locals 4

    .prologue
    .line 224
    :try_start_0
    sget-object v1, Lcom/sprint/dsa/StateManager;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sprint/dsa/StateManager;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 225
    :cond_0
    sget-object v1, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 226
    :cond_1
    sget-object v1, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_2
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Done:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBGState()Lcom/sprint/dsa/StateManager$dsaBackgroundState;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    return-object v0
.end method

.method public getUIState()Lcom/sprint/dsa/StateManager$dsaUIState;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    return-object v0
.end method

.method public setBGState(Lcom/sprint/dsa/StateManager$dsaBackgroundState;)V
    .locals 6
    .parameter "state"

    .prologue
    const-wide/16 v2, 0xfa0

    const/4 v1, 0x0

    .line 165
    sget-object v0, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/sprint/dsa/StateManager;->currentBGState:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    .line 170
    sget-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-ne v0, p1, :cond_1

    .line 171
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    .line 172
    sput v1, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    .line 173
    sput v1, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    .line 174
    sget-object v0, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sprint/dsa/StateManager$2;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/StateManager$2;-><init>(Lcom/sprint/dsa/StateManager;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 181
    :cond_1
    return-void
.end method

.method public setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v1, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-eq v1, v2, :cond_1

    iput-object p1, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    .line 129
    :cond_1
    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-eq p1, v1, :cond_2

    .line 131
    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_RESUMED:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne v1, v2, :cond_3

    .line 134
    :try_start_0
    sget-object v1, Lcom/sprint/dsa/StateManager;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sprint/dsa/StateManager;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_2
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    const-string v2, "Cancel Pause Watch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne p1, v1, :cond_5

    .line 139
    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    iput-object v1, p0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    .line 140
    sget-object v1, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v1, :cond_4

    .line 141
    sget-object v1, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 143
    :cond_4
    sget-object v1, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 144
    sget-object v1, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 145
    sput-object v3, Lcom/sprint/dsa/StateManager;->keepAliveTimer:Ljava/util/Timer;

    goto :goto_0

    .line 148
    :cond_5
    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne p1, v1, :cond_6

    .line 150
    const v1, 0xea60

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/StateManager;->startWDEnableUI(I)V

    goto :goto_0

    .line 152
    :cond_6
    sget-object v1, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 153
    sget-object v1, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 154
    sput-object v3, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public startPauseWatch()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    const-string v1, "DSS"

    const-string v2, "Scheduled shutdown and release of SLOT0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sprint/dsa/StateManager;->terminatePaused()V

    .line 73
    const-string v1, "DSS"

    const-string v2, "PauseWatch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startWDEnableUI(I)V
    .locals 7
    .parameter "interval"

    .prologue
    const/4 v0, 0x0

    .line 95
    sput v0, Lcom/sprint/dsa/StateManager;->pingServerCount:I

    .line 96
    sput v0, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    .line 98
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    .line 99
    sget-object v0, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sprint/dsa/StateManager$1;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/StateManager$1;-><init>(Lcom/sprint/dsa/StateManager;)V

    .line 109
    int-to-long v2, p1

    int-to-long v4, p1

    .line 99
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v6

    .line 111
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "DSS"

    const-string v1, "WatchDog"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    sget v0, Lcom/sprint/dsa/StateManager;->pingServerFailCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/StateManager;->uiTimer:Ljava/util/Timer;

    goto :goto_0
.end method
