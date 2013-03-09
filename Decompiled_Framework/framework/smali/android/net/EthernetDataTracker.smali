.class public Landroid/net/EthernetDataTracker;
.super Ljava/lang/Object;
.source "EthernetDataTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetDataTracker$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final NETWORKTYPE:Ljava/lang/String; = "ETHERNET"

.field private static final TAG:Ljava/lang/String; = "Ethernet"

.field private static mIface:Ljava/lang/String;

.field private static mLinkUp:Z

.field private static sIfaceMatch:Ljava/lang/String;

.field private static sInstance:Landroid/net/EthernetDataTracker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x9

    const-string v2, "ETHERNET"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    sput-boolean v4, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-virtual {p0, v4}, Landroid/net/EthernetDataTracker;->setTeardownRequested(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    return p0
.end method

.method static synthetic access$200(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/EthernetDataTracker;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/EthernetDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/net/EthernetDataTracker;
    .locals 2

    const-class v1, Landroid/net/EthernetDataTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/EthernetDataTracker;

    invoke-direct {v0}, Landroid/net/EthernetDataTracker;-><init>()V

    sput-object v0, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;

    :cond_0
    sget-object v0, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private interfaceAdded(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "Ethernet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    sput-object p1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->runDhcp()V

    goto :goto_0
.end method

.method private interfaceRemoved(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "Ethernet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v1, ""

    sput-object v1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    goto :goto_0
.end method

.method private runDhcp()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/EthernetDataTracker$1;

    invoke-direct {v1, p0}, Landroid/net/EthernetDataTracker$1;-><init>(Landroid/net/EthernetDataTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public defaultRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public reconnect()Z
    .locals 2

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->runDhcp()V

    const/4 v0, 0x1

    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 0

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3

    const-string v0, "Ethernet"

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3

    const-string v0, "Ethernet"

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
    .locals 12

    iput-object p1, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const-string/jumbo v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    new-instance v9, Landroid/net/EthernetDataTracker$InterfaceObserver;

    invoke-direct {v9, p0}, Landroid/net/EthernetDataTracker$InterfaceObserver;-><init>(Landroid/net/EthernetDataTracker;)V

    iput-object v9, p0, Landroid/net/EthernetDataTracker;->mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    :try_start_0
    invoke-interface {v8}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    array-length v7, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v5, v0, v4

    sget-object v9, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    sput-object v5, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-interface {v8, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->isActive()Z

    move-result v9

    sput-boolean v9, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    invoke-virtual {p0}, Landroid/net/EthernetDataTracker;->reconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v9, p0, Landroid/net/EthernetDataTracker;->mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v9, "Ethernet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not get list of interfaces "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v9, "Ethernet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not register InterfaceObserver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
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
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    return v1
.end method
