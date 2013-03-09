.class public Lcom/htc/net/usbnet/UsbnetStateTracker;
.super Ljava/lang/Object;
.source "UsbnetStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;,
        Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;
    }
.end annotation


# static fields
.field private static final DISCONNECT_DELAY_MSECS:I = 0x3a98

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0x9c58

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0x9c55

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xc

.field private static final EVENT_DHCP_START:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0xb

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0xa

.field private static final EVENT_INVALID:I = 0x0

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_POLL_INTERVAL:I = 0x6

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final NETWORKTYPE:Ljava/lang/String; = "USBNET"

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "UsbnetStateTracker"

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpTarget:Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;

.field private mDisconnectPending:Z

.field private mHaveIPAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObtainingIPAddress:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReconnectCount:I

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTornDownByConnMgr:Z

.field private mUsbnetController:Lcom/htc/net/usbnet/UsbnetController;

.field private mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

.field private mUsbnetMonitor:Lcom/htc/net/usbnet/UsbnetMonitor;

.field private mUsbnetState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "UsbnetStateTracker"

    const-string v1, "UsbnetStateTracker+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    new-instance v0, Lcom/htc/net/usbnet/UsbnetMonitor;

    invoke-direct {v0, p0}, Lcom/htc/net/usbnet/UsbnetMonitor;-><init>(Lcom/htc/net/usbnet/UsbnetStateTracker;)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetMonitor:Lcom/htc/net/usbnet/UsbnetMonitor;

    new-instance v0, Lcom/htc/net/usbnet/UsbnetInfo;

    invoke-direct {v0}, Lcom/htc/net/usbnet/UsbnetInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x12

    const-string v2, "USBNET"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "mNetworkInfo null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-direct {p0, v4}, Lcom/htc/net/usbnet/UsbnetStateTracker;->setTornDownByConnMgr(Z)V

    invoke-virtual {p0, v4}, Lcom/htc/net/usbnet/UsbnetStateTracker;->setTeardownRequested(Z)V

    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const-string/jumbo v0, "usb0"

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->sDnsPropNames:[Ljava/lang/String;

    const-string v0, "UsbnetStateTracker"

    const-string v1, "UsbnetStateTracker-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/net/usbnet/UsbnetStateTracker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/net/usbnet/UsbnetStateTracker;)Landroid/net/DhcpInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method private cancelDisconnect()V
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string v1, "cancelDisconnect +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDisconnectPending:Z

    const-string v0, "UsbnetStateTracker"

    const-string v1, "cancelDisconnect -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private configureInterface()V
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string v1, "configureInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mHaveIPAddress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mObtainingIPAddress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mObtainingIPAddress:Z

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpTarget:Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    const-string v1, "UsbnetStateTracker"

    const-string v2, "Deconfiguring usbnet interface and stopping DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDisconnectPending:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->cancelDisconnect()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->resetInterface()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.usbnet.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "networkInfo"

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static nap(I)V
    .locals 2

    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestNetworkStatus(Lcom/htc/net/usbnet/UsbnetInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->getIpAddress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/net/usbnet/UsbnetInfo;->setIpAddress(I)V

    return-void
.end method

.method private declared-synchronized requestPolledInfo(Lcom/htc/net/usbnet/UsbnetInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "requestPolledInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleDisconnect()V
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "scheduleDisconnect +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDisconnectPending:Z

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "scheduleDisconnect -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendNetworkStateChangeBroadcast()V
    .locals 4

    const-string v1, "UsbnetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendNetworkStateChange intent, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.usbnet.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "networkInfo"

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private declared-synchronized setPollTimer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "setPollTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTornDownByConnMgr(Z)V
    .locals 3

    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTornDownByConnMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTornDownByConnMgr:Z

    invoke-direct {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->updateNetworkInfo()V

    return-void
.end method

.method private updateNetworkInfo()V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    return-void
.end method


# virtual methods
.method public NetStateNotification(I)V
    .locals 13

    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetStateNotification +: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x2

    if-ne p1, v10, :cond_3

    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    :goto_0
    const/4 v10, 0x2

    if-ne p1, v10, :cond_7

    const/4 v7, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v10}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v11, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InterfaceAddress;)V

    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10, v9}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetStateNotification: UnknowHostException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 v7, -0x1

    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clearing LinkProperties. Error="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->clear()V

    :cond_1
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/net/usbnet/UsbnetStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V

    :cond_2
    :goto_3
    const-string v10, "UsbnetStateTracker"

    const-string v11, "NetStateNotification -"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    goto :goto_0

    :cond_4
    const/4 v10, 0x2

    :try_start_1
    new-array v1, v10, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_4
    const/4 v10, 0x1

    if-ge v4, v10, :cond_0

    add-int/lit8 v5, v4, 0x1

    const/4 v3, 0x0

    :goto_5
    const/4 v10, 0x4

    if-ge v3, v10, :cond_5

    sget-object v10, Lcom/htc/net/usbnet/UsbnetStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v4

    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/net/usbnet/UsbnetStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v10, v1, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    aget-object v10, v1, v4

    const-string v11, "0.0.0.0"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    aget-object v11, v1, v4

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v11, Landroid/net/RouteInfo;

    aget-object v12, v1, v4

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v10, v11}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/htc/net/usbnet/UsbnetStateTracker;->nap(I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_1
    move-exception v8

    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetStateNotification: SocketException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/net/SocketException;->printStackTrace()V

    const/4 v7, -0x2

    goto/16 :goto_2

    :cond_7
    const/4 v10, 0x1

    if-ne p1, v10, :cond_8

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/net/usbnet/UsbnetStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V

    goto/16 :goto_3

    :cond_8
    if-nez p1, :cond_2

    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->clear()V

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/net/usbnet/UsbnetStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V

    goto/16 :goto_3
.end method

.method public defaultRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string v1, "getDhcpInfo+-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getIpAddress()I
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string v1, "getTcpBufferSizesPropName +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getStateByDetailState(Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$State;
    .locals 1

    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string v1, "getTcpBufferSizesPropName +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "net.tcp.buffersize.usbnet"

    return-object v0
.end method

.method public getUsbnetEnabledState()I
    .locals 1

    iget v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "isAvailable+-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 4

    const-string v1, "UsbnetStateTracker"

    const-string/jumbo v2, "notifyStateChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reconnect()Z
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "reconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public requestConnectionInfo()Lcom/htc/net/usbnet/UsbnetInfo;
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "requestConnectionInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    invoke-direct {p0, v0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->requestPolledInfo(Lcom/htc/net/usbnet/UsbnetInfo;)V

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    return-object v0
.end method

.method public resetInterface()V
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "resetInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/net/usbnet/UsbnetInfo;->setIpAddress(I)V

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    return-void
.end method

.method public setDataEnable(Z)V
    .locals 3

    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataEnabled: IGNORING enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3

    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRadio(Z)Z
    .locals 2

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "setRadio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetController:Lcom/htc/net/usbnet/UsbnetController;

    invoke-virtual {v0, p1}, Lcom/htc/net/usbnet/UsbnetController;->setUsbnetEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3

    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    iput-object p2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mCsHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usbnet"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/usbnet/UsbnetController;

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetController:Lcom/htc/net/usbnet/UsbnetController;

    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "teardown, mTornDownByConnMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTornDownByConnMgr:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsbnetStateTracker"

    const-string v1, "DEVICE_STOP_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mHaveIPAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mObtainingIPAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateUsbnetEnabledState(I)V
    .locals 5

    iget v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    iput p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    const-string v2, "UsbnetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send broadcast UsbnetController.USBNET_ENABLED_CHANGED_ACTION, currrent state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.usbnet.USBNET_ENABLED_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "curUsbnetEnabledState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "preUsbnetEnabledState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method
