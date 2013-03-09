.class public Lcom/htc/omadm/libdo/connection/ConnManager;
.super Ljava/lang/Object;
.source "ConnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/libdo/connection/ConnManager$WiMAXObserver;,
        Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;,
        Lcom/htc/omadm/libdo/connection/ConnManager$UMTSObserver;,
        Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;,
        Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final FLAG_NETWORK_ALL:I = 0x7

.field public static final FLAG_NETWORK_MOBILE:I = 0x1

.field public static final FLAG_NETWORK_NONE:I = 0x0

.field public static final FLAG_NETWORK_WIFI:I = 0x2

.field public static final FLAG_NETWORK_WIMAX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ConnManager"

.field private static mInstance:Lcom/htc/omadm/libdo/connection/ConnManager;

.field protected static mUninterruptTimer:Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;

.field public static staSESSION_TYPE:I


# instance fields
.field private CurrentUsingNetworkType:I

.field private mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDMChannelConnState:I

.field mDMChannelObserver:Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;

.field private mLockObject:Ljava/lang/Object;

.field private mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

.field private mTargetHost:Ljava/lang/String;

.field private mUMTSConnState:I

.field mUMTSObserver:Lcom/htc/omadm/libdo/connection/ConnManager$UMTSObserver;

.field private mWiFiConnState:I

.field mWiFiObserver:Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;

.field private mWiMAXConnState:I

.field mWiMAXObserver:Lcom/htc/omadm/libdo/connection/ConnManager$WiMAXObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mInstance:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 72
    const/4 v0, 0x1

    sput v0, Lcom/htc/omadm/libdo/connection/ConnManager;->staSESSION_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mLockObject:Ljava/lang/Object;

    .line 50
    iput v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I

    .line 54
    iput v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUMTSConnState:I

    .line 58
    iput v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiFiConnState:I

    .line 61
    iput v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiMAXConnState:I

    .line 64
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;-><init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelObserver:Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;

    .line 65
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnManager$UMTSObserver;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/connection/ConnManager$UMTSObserver;-><init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUMTSObserver:Lcom/htc/omadm/libdo/connection/ConnManager$UMTSObserver;

    .line 66
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;-><init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiFiObserver:Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;

    .line 67
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnManager$WiMAXObserver;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/connection/ConnManager$WiMAXObserver;-><init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiMAXObserver:Lcom/htc/omadm/libdo/connection/ConnManager$WiMAXObserver;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I

    .line 95
    iput-object p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateTracker;->getSingleton()Lcom/htc/omadm/libdo/status/StateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    .line 98
    new-instance v0, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    .line 100
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelObserver:Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->addDMChannelStateObserver(Ljava/util/Observer;)V

    .line 101
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUMTSObserver:Lcom/htc/omadm/libdo/connection/ConnManager$UMTSObserver;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->addUMTSStateObserver(Ljava/util/Observer;)V

    .line 102
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiFiObserver:Lcom/htc/omadm/libdo/connection/ConnManager$WiFiObserver;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->addWiFiStateObserver(Ljava/util/Observer;)V

    .line 103
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiMAXObserver:Lcom/htc/omadm/libdo/connection/ConnManager$WiMAXObserver;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->addWiMAXStateObserver(Ljava/util/Observer;)V

    .line 105
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/connection/ConnManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mInstance:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 109
    return-void
.end method

.method private StartMobileNetwork()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 453
    iget-object v3, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    const-string v4, "enableADMIN"

    invoke-virtual {v3, v1, v4}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 456
    .local v0, result:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 457
    const-string v3, "ConnManager"

    const-string v4, "-OpenConnection:mSessionCount(result=-1)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    if-nez v0, :cond_1

    .line 464
    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v1, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    :goto_1
    move v1, v2

    .line 472
    :goto_2
    return v1

    .line 460
    :cond_0
    const-string v3, "ConnManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-OpenConnection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :cond_1
    if-ne v0, v2, :cond_2

    iget v3, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I

    if-eq v3, v6, :cond_2

    .line 467
    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v1, v2}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    goto :goto_1

    .line 469
    :cond_2
    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v2, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    goto :goto_2
.end method

.method private StopMobileNetwork()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 483
    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    const-string v3, "enableADMIN"

    invoke-virtual {v2, v1, v3}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 486
    .local v0, result:I
    if-ne v0, v4, :cond_0

    .line 488
    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v2, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    .line 489
    const-string v2, "ConnManager"

    const-string v3, "Connection state: not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return v1

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v1, v4}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    .line 493
    const-string v1, "ConnManager"

    const-string v2, "Connection state: disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private StopUsingCurrentNetwork()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    .line 500
    const-string v0, "ConnManager"

    const-string v1, "close connection for verify the connection by CDMA data call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method private UsingCurrentNework()Z
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    .line 477
    const-string v0, "ConnManager"

    const-string v1, "open connection for verify the connection by CDMA data call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/htc/omadm/libdo/connection/ConnManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/omadm/libdo/connection/ConnManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/omadm/libdo/connection/ConnManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUMTSConnState:I

    return p1
.end method

.method static synthetic access$202(Lcom/htc/omadm/libdo/connection/ConnManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiFiConnState:I

    return p1
.end method

.method static synthetic access$302(Lcom/htc/omadm/libdo/connection/ConnManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mWiMAXConnState:I

    return p1
.end method

.method private applyRouteToHost(Ljava/lang/String;)Z
    .locals 4
    .parameter "host"

    .prologue
    .line 252
    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    if-eqz v2, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, iNetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z

    .line 268
    const/4 v2, 0x1

    .line 270
    .end local v1           #iNetAddr:Ljava/net/InetAddress;
    :goto_1
    return v2

    .line 257
    .restart local v1       #iNetAddr:Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iNetAddr:Ljava/net/InetAddress;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/connection/ConnManager;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mInstance:Lcom/htc/omadm/libdo/connection/ConnManager;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/libdo/connection/ConnManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mInstance:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 115
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mInstance:Lcom/htc/omadm/libdo/connection/ConnManager;

    return-object v0
.end method

.method private isNetworkConnected(I)Z
    .locals 10
    .parameter "networkType"

    .prologue
    .line 382
    const/4 v4, 0x0

    .line 384
    .local v4, mConnectedNetworkFlags:I
    new-instance v1, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    const-string v7, "connectivity"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 385
    .local v1, cm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    invoke-virtual {v1}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 386
    .local v6, nis:[Landroid/net/NetworkInfo;
    move-object v0, v6

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 387
    .local v5, ni:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 386
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 399
    :sswitch_0
    or-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 391
    :sswitch_1
    or-int/lit8 v4, v4, 0x2

    .line 392
    goto :goto_1

    .line 394
    :sswitch_2
    or-int/lit8 v4, v4, 0x4

    .line 395
    goto :goto_1

    .line 402
    .end local v5           #ni:Landroid/net/NetworkInfo;
    :cond_2
    const-string v7, "ConnManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connected Network is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    and-int v7, v4, p1

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWifiAvailable()Z
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 5

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, flag:Z
    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 418
    .local v1, mWifiMgr:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 420
    :cond_0
    const-string v2, "ConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v0
.end method

.method private isWifiEnabled()Z
    .locals 5

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, flag:Z
    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 409
    .local v1, mWifiMgr:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    const/4 v0, 0x1

    .line 411
    :cond_0
    const-string v2, "ConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v0
.end method

.method private isWimaxConnected()Z
    .locals 4

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, flag:Z
    const-string v1, "ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWimaxConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v0
.end method

.method private isWimaxEnabled()Z
    .locals 4

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, flag:Z
    const-string v1, "ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWimaxEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return v0
.end method


# virtual methods
.method public declared-synchronized CheckDataConnection()I
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public CheckNetworkCondition()Z
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/status/StateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v1}, Lcom/htc/omadm/libdo/status/StateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized CloseConnection()Z
    .locals 3

    .prologue
    .line 218
    monitor-enter p0

    const/4 v1, -0x1

    .line 219
    .local v1, result:I
    const/4 v0, 0x0

    .line 221
    .local v0, bRet:Z
    :try_start_0
    invoke-static {}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getSingleton()Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getChannelRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 234
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return v0

    .line 223
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->StopMobileNetwork()Z

    move-result v0

    .line 224
    goto :goto_0

    .line 227
    :pswitch_2
    iget v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I

    if-nez v2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->StopMobileNetwork()Z

    move-result v0

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->StopUsingCurrentNetwork()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public Destroy()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->Destroy()V

    .line 316
    return-void
.end method

.method public declared-synchronized EnableToUninterruptConnection()V
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I

    if-nez v0, :cond_1

    .line 209
    const-string v0, "ConnManager"

    const-string v1, "UninterruptConnection start..."

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUninterruptTimer:Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUninterruptTimer:Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;->cancel()V

    .line 212
    :cond_0
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;-><init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V

    sput-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUninterruptTimer:Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;

    .line 213
    sget-object v0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUninterruptTimer:Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public EnsureRouteToHost(Ljava/lang/String;)Z
    .locals 2
    .parameter "host"

    .prologue
    .line 239
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I

    if-nez v0, :cond_0

    .line 240
    const-string v0, "ConnManager"

    const-string v1, "Using Route to host."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-object p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mTargetHost:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mTargetHost:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->applyRouteToHost(Ljava/lang/String;)Z

    move-result v0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public GetAcquiredNetwork()I
    .locals 4

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, result:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/status/StateTracker;->getTelManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v2, v1

    .line 310
    .end local v1           #result:I
    .local v2, result:I
    :goto_1
    return v2

    .line 286
    .end local v2           #result:I
    .restart local v1       #result:I
    :pswitch_1
    const/4 v1, 0x0

    .line 287
    goto :goto_0

    .line 289
    :pswitch_2
    const/4 v1, 0x1

    .line 290
    goto :goto_0

    .line 292
    :pswitch_3
    const/4 v1, 0x1

    .line 293
    goto :goto_0

    .line 295
    :pswitch_4
    const/4 v1, 0x2

    .line 296
    goto :goto_0

    .line 298
    :pswitch_5
    const/4 v1, 0x2

    .line 299
    goto :goto_0

    .line 301
    :pswitch_6
    const/4 v1, 0x2

    .line 302
    goto :goto_0

    .line 304
    :pswitch_7
    const/4 v1, 0x2

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    .line 310
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized OpenConnection()Z
    .locals 4

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string v2, "ConnManager"

    const-string v3, "+OpenConnection()"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, bRet:Z
    const/4 v1, 0x1

    .line 170
    .local v1, bStartMobileNetwork:Z
    invoke-static {}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getSingleton()Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getChannelRule()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_0
    :pswitch_0
    monitor-exit p0

    return v0

    .line 172
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->StartMobileNetwork()Z

    move-result v0

    .line 173
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v0           #bRet:Z
    .end local v1           #bStartMobileNetwork:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 177
    .restart local v0       #bRet:Z
    .restart local v1       #bStartMobileNetwork:Z
    :pswitch_2
    const/4 v2, 0x2

    :try_start_2
    invoke-direct {p0, v2}, Lcom/htc/omadm/libdo/connection/ConnManager;->isNetworkConnected(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->isWifiAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 180
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I

    .line 192
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->StartMobileNetwork()Z

    move-result v0

    goto :goto_0

    .line 182
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/htc/omadm/libdo/connection/ConnManager;->isNetworkConnected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->isWimaxAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 185
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I

    goto :goto_1

    .line 187
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/omadm/libdo/connection/ConnManager;->isNetworkConnected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 189
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->CurrentUsingNetworkType:I

    goto :goto_1

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->UsingCurrentNework()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getDMChannelConnState()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDormancyState()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getIsDormancy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getCallState()I

    move-result v0

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getSingleton()Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->getConfigAwaysHomeNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getRoamingState()Z

    move-result v0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mStateTracker:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getSimState()I

    move-result v0

    return v0
.end method

.method public getUMTSConnState()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager;->mUMTSConnState:I

    return v0
.end method

.method isWimaxAvailable()Z
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->isWimaxEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnManager;->isWimaxConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
