.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$1;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE_CHANGED:I = 0x2300a

.field private static final BASE:I = 0x23000

.field private static final DBG:Z = true

.field private static final DHCP_RANGE:[Ljava/lang/String; = null

.field private static final EMERGENCY_CALLBACK_MODE:I = 0x2300b

.field private static final GROUP_INVITATION_USER_ACCEPT:I = 0x23008

.field private static final GROUP_INVITATION_USER_REJECT:I = 0x23009

.field public static final GROUP_NEGOTIATION_TIMED_OUT:I = 0x23003

.field private static final GROUP_NEGOTIATION_USER_ACCEPT:I = 0x23006

.field private static final GROUP_NEGOTIATION_USER_REJECT:I = 0x23007

.field private static final GROUP_NEGOTIATION_WAIT_TIME_MS:I = 0x1d4c0

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field public static final P2P_ENABLE_PENDING:I = 0x23001

.field private static final P2P_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final P2P_RESTART_TRIES:I = 0x5

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final WIFI_DISABLE_USER_ACCEPT:I = 0x23004

.field private static final WIFI_DISABLE_USER_REJECT:I = 0x23005

.field public static final WIFI_ENABLE_PROCEED:I = 0x23002

.field private static final WPS_PBC:I = 0x2300c

.field private static final WPS_PIN:I = 0x2300d

.field private static mGroupNegotiationTimeoutIndex:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pRestartCount:I

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mPersistGroup:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApState:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupNegotiationTimeoutIndex:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.2"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "192.168.49.254"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    const/16 v2, 0xb

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi.interface"

    const-string/jumbo v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    new-instance v2, Landroid/net/NetworkInfo;

    const/16 v3, 0xd

    const-string v4, "WIFI_P2P"

    const-string v5, ""

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x3000001a

    const-string v3, "WifiP2pService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v3, "WifiP2pService"

    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v2, p0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return p1
.end method

.method static synthetic access$2900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    return v0
.end method

.method static synthetic access$3802(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    return p1
.end method

.method static synthetic access$3804(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    return v0
.end method

.method static synthetic access$4100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistGroup:Z

    return v0
.end method

.method static synthetic access$4902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistGroup:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$5800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$5802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7400()I
    .locals 1

    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupNegotiationTimeoutIndex:I

    return v0
.end method

.method static synthetic access$7404()I
    .locals 1

    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupNegotiationTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupNegotiationTimeoutIndex:I

    return v0
.end method

.method static synthetic access$8700()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$8900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$8902(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method private enforceAccessPermission()V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
