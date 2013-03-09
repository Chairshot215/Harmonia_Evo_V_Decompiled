.class public Lcom/android/mms/transport/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transport/Connection$EventHandler;
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_TIMER:I = 0x2710

.field private static final CONNECTION_EXTENSION_WAIT:I = 0x7530

.field public static final DATA_CONNECTION_CLOSED:I = 0x3

.field public static final DATA_CONNECTION_FAILED:I = 0x2

.field public static final DATA_CONNECTION_READY:I = 0x0

.field public static final DATA_CONNECTION_TIMEOUT:I = 0x1

.field private static final EVENT_APN_ALREADY_ACTIVE:I = 0x3

.field private static final EVENT_CLOSE_TIMER:I = 0x2

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x1

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x0

.field private static final SETUP_CONNECTIVITY_TIMEOUT:I = 0x9c40

.field private static final TAG:Ljava/lang/String; = "Connection"

.field private static sInstance:Lcom/android/mms/transport/Connection;


# instance fields
.field private bWiMaxEnable:Z

.field private bWifiEnable:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

.field private mIsIpv4Connected:Z

.field private mIsIpv6Connected:Z

.field private mServiceLooper:Landroid/os/Looper;

.field private mSettings:Lcom/android/mms/transport/NetworkSettings;

.field private mStatus:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v3, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    .line 62
    iput-boolean v3, p0, Lcom/android/mms/transport/Connection;->mIsIpv6Connected:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/mms/transport/Connection;->mIsIpv4Connected:Z

    .line 67
    iput-object p1, p0, Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;

    .line 69
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConnectivityEventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transport/Connection;->mServiceLooper:Landroid/os/Looper;

    .line 78
    new-instance v1, Lcom/android/mms/transport/Connection$EventHandler;

    iget-object v2, p0, Lcom/android/mms/transport/Connection;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transport/Connection$EventHandler;-><init>(Lcom/android/mms/transport/Connection;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    .line 80
    new-instance v1, Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/common/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 81
    iget-object v1, p0, Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    iget-object v2, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/common/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 82
    iget-object v1, p0, Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v1, p1}, Lcom/android/common/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public static SetMultiRABTrafficThrottling(II)V
    .locals 7
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 544
    const-string v4, "htctelephony"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    .line 545
    .local v2, ihtcPhoneInterface:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v2, :cond_0

    .line 548
    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/Class;

    .line 549
    .local v0, args:[Ljava/lang/Class;
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    .line 550
    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v4

    .line 551
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "requestSetMultiRABTrafficThrottling"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 552
    .local v3, mth:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 553
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 570
    .end local v0           #args:[Ljava/lang/Class;
    .end local v3           #mth:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 557
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 558
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 560
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 561
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 562
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 563
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 564
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 565
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 567
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/transport/Connection;)Lcom/android/common/NetworkConnectivityListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transport/Connection;Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/transport/Connection;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/transport/Connection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/Connection$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/transport/Connection;Lcom/android/mms/transport/Connection$EventHandler;)Lcom/android/mms/transport/Connection$EventHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/Connection;
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput-object p0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/mms/transport/Connection;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/transport/Connection;->getWifiInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/transport/Connection;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/transport/Connection;->getWiMaxInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/transport/Connection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/transport/Connection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/transport/Connection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/transport/Connection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/mms/transport/Connection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/mms/transport/Connection;->mIsIpv6Connected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/mms/transport/Connection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/mms/transport/Connection;->mIsIpv4Connected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/NetworkSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/transport/Connection;Lcom/android/mms/transport/NetworkSettings;)Lcom/android/mms/transport/NetworkSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/transport/Connection;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelAutoClose()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 125
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/transport/Connection$EventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/transport/Connection$EventHandler;->removeMessages(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public static declared-synchronized createConnection(Landroid/content/Context;)Lcom/android/mms/transport/Connection;
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    const-class v1, Lcom/android/mms/transport/Connection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/mms/transport/Connection;

    invoke-direct {v0, p0}, Lcom/android/mms/transport/Connection;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    .line 92
    :goto_0
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    invoke-virtual {v0}, Lcom/android/mms/transport/Connection;->requestMmsConnectivity()V

    .line 93
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    invoke-direct {v0}, Lcom/android/mms/transport/Connection;->cancelAutoClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWiMaxInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 343
    const/16 v1, 0x94

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWifiInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 328
    const/16 v1, 0x94

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/transport/HttpUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runOnIPv4()Z
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    iget-boolean v0, v0, Lcom/android/mms/transport/Connection;->mIsIpv4Connected:Z

    goto :goto_0
.end method

.method public static runOnIPv6()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    iget-boolean v0, v0, Lcom/android/mms/transport/Connection;->mIsIpv6Connected:Z

    goto :goto_0
.end method

.method public static runOnWiMax()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    iget-boolean v0, v0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    goto :goto_0
.end method

.method public static runOnWifi()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/transport/Connection;->sInstance:Lcom/android/mms/transport/Connection;

    iget-boolean v0, v0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/transport/Connection$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/mms/transport/Connection$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 137
    return-void
.end method

.method getNetworkSettings()Lcom/android/mms/transport/NetworkSettings;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    return v0
.end method

.method public requestMmsConnectivity()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 141
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 142
    .local v3, nInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 143
    const-string v6, "Connection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transport/Connection;->startMmsConnectivity()I

    move-result v4

    .line 149
    .local v4, result:I
    if-nez v4, :cond_3

    .line 150
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    if-nez v6, :cond_2

    .line 151
    const-string v6, "Connection"

    const-string v7, "mSettings is null, keep waiting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    iget-object v7, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    invoke-virtual {v7, v13}, Lcom/android/mms/transport/Connection$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/transport/Connection$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    monitor-enter p0

    .line 159
    const-wide/32 v6, 0x9c40

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 324
    :cond_1
    :goto_1
    return-void

    .line 160
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "Connection"

    const-string v7, "InterruptedException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/mms/transport/Connection;->stopMmsConnectivity()V

    .line 165
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    goto :goto_0

    .line 167
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 171
    :cond_2
    iput v10, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    .line 172
    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isIpv6Connected()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/transport/Connection;->mIsIpv6Connected:Z

    .line 176
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isIpv4Connected()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/transport/Connection;->mIsIpv4Connected:Z

    goto :goto_1

    .line 181
    :cond_3
    if-ne v4, v9, :cond_d

    .line 183
    const/4 v6, 0x3

    :try_start_2
    iput v6, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    .line 184
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    const-wide/32 v6, 0x9c40

    :try_start_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 187
    const-string v6, "Jerry"

    const-string v7, "leave wait()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v6, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    if-eqz v6, :cond_5

    .line 190
    invoke-direct {p0}, Lcom/android/mms/transport/Connection;->getWifiInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 191
    .local v1, WifiInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_b

    .line 192
    :cond_4
    const-string v6, "Jerry"

    const-string v7, "no Wifi after leave wait"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1           #WifiInfo:Landroid/net/NetworkInfo;
    :cond_5
    const-string v6, "Jerry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStatus2 >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v6, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    if-eqz v6, :cond_7

    .line 211
    const-string v6, "Jerry"

    const-string v7, "start to check WiMax after wait"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/android/mms/transport/Connection;->getWiMaxInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 213
    .local v0, WiMaxInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_c

    .line 214
    :cond_6
    const-string v6, "Jerry"

    const-string v7, "no WiMax after leave wait"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0           #WiMaxInfo:Landroid/net/NetworkInfo;
    :cond_7
    iget-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    if-eqz v6, :cond_9

    .line 232
    :cond_8
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    .line 235
    :cond_9
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    :try_start_4
    iget-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    if-eqz v6, :cond_1

    .line 239
    :cond_a
    const-string v6, "Jerry"

    const-string v7, "stopUsingNetworkFeature when wifi or wimax is enabled "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    const-string v8, "enableMMS"

    invoke-virtual {v6, v7, v8}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 243
    :catch_1
    move-exception v2

    .line 246
    .restart local v2       #e:Ljava/lang/InterruptedException;
    const-string v6, "Jerry"

    const-string v7, "InterruptedException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/mms/transport/Connection;->stopMmsConnectivity()V

    .line 248
    iput v9, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    goto/16 :goto_1

    .line 195
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v1       #WifiInfo:Landroid/net/NetworkInfo;
    :cond_b
    const/4 v6, 0x1

    :try_start_5
    iput-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    .line 196
    new-instance v6, Lcom/android/mms/transport/NetworkSettings;

    iget-object v7, p0, Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/mms/transport/NetworkSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 198
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    invoke-virtual {v6}, Lcom/android/mms/transport/NetworkSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 199
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 202
    monitor-exit p0

    goto/16 :goto_1

    .line 235
    .end local v1           #WifiInfo:Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 217
    .restart local v0       #WiMaxInfo:Landroid/net/NetworkInfo;
    :cond_c
    const/4 v6, 0x1

    :try_start_7
    iput-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    .line 218
    new-instance v6, Lcom/android/mms/transport/NetworkSettings;

    iget-object v7, p0, Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/mms/transport/NetworkSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 220
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    invoke-virtual {v6}, Lcom/android/mms/transport/NetworkSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 221
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 224
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 252
    .end local v0           #WiMaxInfo:Landroid/net/NetworkInfo;
    :cond_d
    if-ne v4, v12, :cond_1b

    .line 253
    iput v12, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    .line 254
    invoke-static {}, Lcom/android/mms/transport/HttpUtils;->enableTmoWifiIms()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 255
    invoke-direct {p0}, Lcom/android/mms/transport/Connection;->getWifiInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 256
    .local v5, wifiInfo:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_16

    .line 257
    :cond_e
    const-string v6, "Connection"

    const-string v7, "no Wifi enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v5           #wifiInfo:Landroid/net/NetworkInfo;
    :cond_f
    :goto_2
    const/16 v6, 0x94

    invoke-static {v6}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v6

    if-nez v6, :cond_10

    const/16 v6, 0xaf

    invoke-static {v6}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v6

    if-nez v6, :cond_10

    const/16 v6, 0xc

    invoke-static {v6}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    :cond_10
    iget v6, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    if-eqz v6, :cond_12

    .line 278
    invoke-direct {p0}, Lcom/android/mms/transport/Connection;->getWifiInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 279
    .restart local v1       #WifiInfo:Landroid/net/NetworkInfo;
    const-string v6, "Connection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wifiinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_19

    .line 281
    :cond_11
    const-string v6, "Connection"

    const-string v7, "no Wifi"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v1           #WifiInfo:Landroid/net/NetworkInfo;
    :cond_12
    iget v6, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    if-eqz v6, :cond_14

    .line 295
    invoke-direct {p0}, Lcom/android/mms/transport/Connection;->getWiMaxInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 296
    .restart local v0       #WiMaxInfo:Landroid/net/NetworkInfo;
    const-string v6, "Connection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WiMaxInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 298
    :cond_13
    const-string v6, "Connection"

    const-string v7, "no WiMax"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0           #WiMaxInfo:Landroid/net/NetworkInfo;
    :cond_14
    iget-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    if-nez v6, :cond_15

    iget-boolean v6, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    if-eqz v6, :cond_1

    .line 312
    :cond_15
    const-string v6, "Connection"

    const-string v7, "stopUsingNetworkFeature when wifi or wimax is enabled "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput v10, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    .line 314
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v7, "enableMMS"

    invoke-virtual {v6, v10, v7}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_1

    .line 259
    .restart local v5       #wifiInfo:Landroid/net/NetworkInfo;
    :cond_16
    const-string v6, "Connection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Wifi enabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iput-boolean v9, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    .line 261
    new-instance v6, Lcom/android/mms/transport/NetworkSettings;

    iget-object v7, p0, Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/mms/transport/NetworkSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 262
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    invoke-virtual {v6}, Lcom/android/mms/transport/NetworkSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 263
    :cond_17
    iput-object v11, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 264
    const-string v6, "Connection"

    const-string v7, "Settins null or mmsc empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 267
    :cond_18
    iput v10, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    .line 268
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v7, "enableMMS"

    invoke-virtual {v6, v10, v7}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_2

    .line 283
    .end local v5           #wifiInfo:Landroid/net/NetworkInfo;
    .restart local v1       #WifiInfo:Landroid/net/NetworkInfo;
    :cond_19
    iput-boolean v9, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    .line 284
    new-instance v6, Lcom/android/mms/transport/NetworkSettings;

    iget-object v7, p0, Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/mms/transport/NetworkSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 286
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    invoke-virtual {v6}, Lcom/android/mms/transport/NetworkSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 287
    iput-object v11, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 288
    const-string v6, "Connection"

    const-string v7, "WiMax connected but no network settings!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 300
    .end local v1           #WifiInfo:Landroid/net/NetworkInfo;
    .restart local v0       #WiMaxInfo:Landroid/net/NetworkInfo;
    :cond_1a
    iput-boolean v9, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    .line 301
    new-instance v6, Lcom/android/mms/transport/NetworkSettings;

    iget-object v7, p0, Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/mms/transport/NetworkSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 303
    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    invoke-virtual {v6}, Lcom/android/mms/transport/NetworkSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 304
    iput-object v11, p0, Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;

    .line 305
    const-string v6, "Connection"

    const-string v7, "WiMax connected but no network settings!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    .end local v0           #WiMaxInfo:Landroid/net/NetworkInfo;
    :cond_1b
    iput v12, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    goto/16 :goto_1
.end method

.method protected startMmsConnectivity()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 508
    iget-object v1, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableMMS"

    invoke-virtual {v1, v4, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 510
    .local v0, value:I
    const-string v1, "Jerry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection_startMmsConnectivity() >>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/android/mms/transport/Connection;->SetMultiRABTrafficThrottling(II)V

    .line 512
    iput-boolean v4, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    .line 513
    iput-boolean v4, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    .line 514
    iput-boolean v4, p0, Lcom/android/mms/transport/Connection;->mIsIpv6Connected:Z

    .line 515
    iput-boolean v4, p0, Lcom/android/mms/transport/Connection;->mIsIpv4Connected:Z

    .line 516
    return v0
.end method

.method protected declared-synchronized stopMmsConnectivity()V
    .locals 3

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    const-string v0, "Connection"

    const-string v1, "stopMmsConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/transport/Connection$EventHandler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 523
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/transport/Connection;->SetMultiRABTrafficThrottling(II)V

    .line 524
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/transport/Connection;->mStatus:I

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transport/Connection;->bWifiEnable:Z

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transport/Connection;->mIsIpv6Connected:Z

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transport/Connection;->mIsIpv4Connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
