.class public Lcom/googlecode/android/wifi/tether/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;,
        Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;,
        Lcom/googlecode/android/wifi/tether/TetherService$LocalBinder;,
        Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;,
        Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;,
        Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;,
        Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;
    }
.end annotation


# static fields
.field public static final COUNTDOWNTIMER_INTENT:Ljava/lang/String; = "com.googlecode.android.wifi.tether.intent.COUNTDOWNTIMER"

.field public static final COUNTDOWN_INTENT:Ljava/lang/String; = "com.googlecode.android.wifi.tether.intent.COUNTDOWN"

.field public static final KEEPALIVE_INTENT:Ljava/lang/String; = "com.googlecode.android.wifi.tether.intent.KEEPALIVE"

.field public static final QUOTACOUNT_INTENT:Ljava/lang/String; = "com.googlecode.android.wifi.tether.intent.QUOTA"

.field public static final SERVICEMANAGE_INTENT:Ljava/lang/String; = "com.googlecode.android.wifi.tether.intent.MANAGE"

.field public static final SERVICE_START:I = 0x9

.field public static final SERVICE_STARTED:I = 0x8

.field public static final SERVICE_STOP:I = 0xa

.field public static final SERVICE_STOPPED:I = 0xb

.field public static final STATECHANGED_INTENT:Ljava/lang/String; = "com.googlecode.android.wifi.tether.intent.STATE"

.field public static final STATE_FAILURE_EXE:I = 0x7

.field public static final STATE_FAILURE_LOG:I = 0x6

.field public static final STATE_IDLE:I = 0x2

.field public static final STATE_RESTARTING:I = 0x5

.field public static final STATE_RUNNING:I = 0x1

.field public static final STATE_STARTING:I = 0x3

.field public static final STATE_STOPPING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TetherService"

.field public static final TRAFFICCOUNT_INTENT:Ljava/lang/String; = "com.googlecode.android.wifi.tether.intent.TRAFFIC"

.field private static final mSetForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStartForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStopForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static singleton:Lcom/googlecode/android/wifi/tether/TetherService;


# instance fields
.field private application:Lcom/googlecode/android/wifi/tether/TetherApplication;

.field autoShutdown:Z

.field private final binder:Landroid/os/Binder;

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private clientConnectThread:Ljava/lang/Thread;

.field private keepAliveCheckerThread:Ljava/lang/Thread;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mSetForegroundArgs:[Ljava/lang/Object;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;

.field private origBtState:Z

.field private origWifiState:Z

.field private shutdownIdleCheckerThread:Ljava/lang/Thread;

.field private shutdownQuotaCheckerThread:Ljava/lang/Thread;

.field private shutdownTimerCheckerThread:Ljava/lang/Thread;

.field private state:I

.field timestampCounterUpdate:J

.field private trafficCounterThread:Ljava/lang/Thread;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    .line 109
    new-array v0, v3, [Ljava/lang/Class;

    .line 110
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 109
    sput-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForegroundSignature:[Ljava/lang/Class;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 112
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    .line 111
    sput-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 113
    new-array v0, v3, [Ljava/lang/Class;

    .line 114
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 113
    sput-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    new-instance v0, Lcom/googlecode/android/wifi/tether/TetherService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/TetherService$LocalBinder;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->binder:Landroid/os/Binder;

    .line 72
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 76
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterThread:Ljava/lang/Thread;

    .line 78
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectThread:Ljava/lang/Thread;

    .line 80
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerThread:Ljava/lang/Thread;

    .line 81
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerThread:Ljava/lang/Thread;

    .line 82
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerThread:Ljava/lang/Thread;

    .line 83
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerThread:Ljava/lang/Thread;

    .line 88
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 95
    iput v3, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->timestampCounterUpdate:J

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    .line 105
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 106
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 107
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForegroundArgs:[Ljava/lang/Object;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/googlecode/android/wifi/tether/TetherService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterEnable(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerEnable(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerEnable(Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerEnable(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerEnable(Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->enableWifiAndBt(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->origWifiState:Z

    return-void
.end method

.method static synthetic access$3(Lcom/googlecode/android/wifi/tether/TetherService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->origBtState:Z

    return-void
.end method

.method static synthetic access$5(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->disableWifiAndBt(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherService;->enableAndDisconnectWifi()V

    return-void
.end method

.method static synthetic access$7(Lcom/googlecode/android/wifi/tether/TetherService;)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    return v0
.end method

.method static synthetic access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    return-void
.end method

.method static synthetic access$9(Lcom/googlecode/android/wifi/tether/TetherService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectEnable(Z)V

    return-void
.end method

.method private clientConnectEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 778
    if-eqz p1, :cond_2

    .line 779
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$ClientConnect;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectThread:Ljava/lang/Thread;

    .line 781
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 787
    :cond_1
    :goto_0
    return-void

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private disableWifiAndBt(Z)V
    .locals 5
    .parameter "enableAction"

    .prologue
    const/4 v4, 0x0

    .line 679
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v3, "dontdisablebtpref"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 680
    .local v1, dontdisablebt:Z
    const/4 v0, 0x0

    .line 681
    .local v0, disableAction:Z
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 686
    const/4 v0, 0x1

    .line 687
    const-string v2, "TetherService"

    const-string v3, "Wifi disabled!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 690
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 691
    const/4 v0, 0x1

    .line 692
    const-string v2, "TetherService"

    const-string v3, "BT disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_2
    if-eqz v0, :cond_3

    .line 697
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_3
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enableAndDisconnectWifi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 728
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 729
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "Tether"

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 731
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 751
    return-void

    .line 732
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enableWifiAndBt(Z)V
    .locals 4
    .parameter "enableAction"

    .prologue
    .line 705
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "dontdisablebtpref"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 706
    .local v0, dontdisablebt:Z
    iget-boolean v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->origWifiState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 709
    const/4 p1, 0x1

    .line 710
    const-string v1, "TetherService"

    const-string v2, "Wifi started!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->origBtState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 714
    const/4 p1, 0x1

    .line 715
    const-string v1, "TetherService"

    const-string v2, "BT enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1
    if-eqz p1, :cond_2

    .line 720
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_2
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initForeground()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startForeground"

    .line 194
    sget-object v3, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 193
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopForeground"

    .line 196
    sget-object v3, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 195
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 203
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setForeground"

    .line 204
    sget-object v3, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForegroundSignature:[Ljava/lang/Class;

    .line 203
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 207
    const-string v2, "OS doesn\'t have Service.startForeground OR Service.setForeground!"

    .line 206
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private keepAliveCheckerEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 790
    if-eqz p1, :cond_2

    .line 791
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$KeepAliveChecker;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerThread:Ljava/lang/Thread;

    .line 793
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 799
    :cond_1
    :goto_0
    return-void

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private shutdownIdleCheckerEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 814
    if-eqz p1, :cond_2

    .line 815
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownIdleChecker;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerThread:Ljava/lang/Thread;

    .line 817
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 823
    :cond_1
    :goto_0
    return-void

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private shutdownQuotaCheckerEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 838
    if-eqz p1, :cond_2

    .line 839
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownQuotaChecker;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerThread:Ljava/lang/Thread;

    .line 841
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private shutdownTimerCheckerEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 826
    if-eqz p1, :cond_2

    .line 827
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$ShutdownTimerChecker;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerThread:Ljava/lang/Thread;

    .line 829
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 835
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private trafficCounterEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 802
    if-eqz p1, :cond_2

    .line 803
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 804
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$TrafficCounter;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterThread:Ljava/lang/Thread;

    .line 805
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 811
    :cond_1
    :goto_0
    return-void

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    return v0
.end method

.method handleCommand(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 238
    return-void
.end method

.method invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .parameter "method"
    .parameter "args"

    .prologue
    .line 579
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 589
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "TetherService"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 584
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "TetherService"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const-string v1, "TetherService"

    const-string v2, ">>>>>>>>>>>>> Tethering-Service started! <<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherService;->initForeground()V

    .line 139
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 142
    sput-object p0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    .line 145
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->timestampCounterUpdate:J

    .line 154
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    const-string v2, "tether.status"

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, tetherStatus:Ljava/lang/String;
    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    invoke-direct {p0, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectEnable(Z)V

    .line 159
    invoke-direct {p0, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterEnable(Z)V

    .line 161
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdownidle"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdowntimer"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdownquota"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 164
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdownkeepalive"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "shutdownpref"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-direct {p0, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerEnable(Z)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "shutdowntimerpref"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-direct {p0, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerEnable(Z)V

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "quotashutdownpref"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-direct {p0, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerEnable(Z)V

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "keepalivecheckpref"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    invoke-direct {p0, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerEnable(Z)V

    .line 179
    :cond_3
    iput v4, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    .line 180
    invoke-virtual {p0, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    .line 181
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getStartNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/googlecode/android/wifi/tether/TetherService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 187
    :goto_0
    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 188
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->sendManageBroadcast(I)V

    .line 189
    :cond_4
    return-void

    .line 185
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "TetherService"

    const-string v1, ">>>>>>>>>>>>> Tethering-Service stopped! <<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 216
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherService;->handleCommand(Landroid/content/Intent;)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public reloadACRules()V
    .locals 3

    .prologue
    .line 515
    :try_start_0
    const-string v0, "TetherService"

    const-string v1, "Restarting iptables for access-control-changes!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/bin/tether restartsecwifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runRootCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 416
    const/4 v0, 0x5

    iput v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    .line 418
    iget v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    .line 419
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$3;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$3;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 510
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 511
    return-void
.end method

.method public sendCountdownBroadcast([J)V
    .locals 2
    .parameter "countdown"

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.COUNTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v1, "countdown"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    return-void
.end method

.method public sendKeepAliveBroadcast([J)V
    .locals 2
    .parameter "keepalive"

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.KEEPALIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.KEEPALIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v1, "keepalive"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 575
    return-void
.end method

.method public sendManageBroadcast(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    return-void
.end method

.method public sendQuotaBroadcast([J)V
    .locals 2
    .parameter "quota"

    .prologue
    .line 551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.QUOTA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.QUOTA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v1, "quota"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 555
    return-void
.end method

.method public sendStateBroadcast(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    return-void
.end method

.method public sendTimerBroadcast([J)V
    .locals 2
    .parameter "countdowntimer"

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.COUNTDOWNTIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.COUNTDOWNTIMER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v1, "countdowntimer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    return-void
.end method

.method public sendTrafficBroadcast([J)V
    .locals 2
    .parameter "traffic"

    .prologue
    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.TRAFFIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.TRAFFIC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v1, "traffic"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 548
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 245
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    .line 246
    iput v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    .line 248
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$1;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$1;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 340
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getStartNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 341
    return-void
.end method

.method protected startForegroundCompat(ILandroid/app/Notification;)V
    .locals 3
    .parameter "id"
    .parameter "notification"

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 603
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 604
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 635
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 610
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 343
    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    .line 344
    iput v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->state:I

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherService$2;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherService$2;-><init>(Lcom/googlecode/android/wifi/tether/TetherService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 411
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 412
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherService;->stopForegroundCompat(I)V

    .line 413
    return-void
.end method

.method protected stopForegroundCompat(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 645
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 676
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 652
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 653
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/android/wifi/tether/TetherService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method
