.class public Lcom/htc/net/wimax/WimaxMonitor;
.super Ljava/lang/Object;
.source "WimaxMonitor.java"

# interfaces
.implements Lcom/htc/net/wimax/WimaxEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;,
        Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;
    }
.end annotation


# static fields
.field private static final LOG_DEBUG:I = 0x4

.field private static final LOG_ERROR:I = 0x2

.field private static final LOG_FATAL:I = 0x1

.field private static final LOG_WARNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WimaxMonitor"

.field private static logLevel:I


# instance fields
.field private final mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

.field private final mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/htc/net/wimax/WimaxMonitor;->logLevel:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WimaxMonitor"

    const-string v1, "WimaxMonitor init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-static {p0}, Lcom/htc/net/wimax/WimaxCustomize;->getApiInstance(Lcom/htc/net/wimax/WimaxEventObserver;)Lcom/htc/net/wimax/Wimax4GApi;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    return-void
.end method

.method private static LOG(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/htc/net/wimax/WimaxMonitor;->logLevel:I

    if-lt v0, p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "WimaxMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "WimaxMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/net/wimax/WimaxMonitor;)Lcom/htc/net/wimax/WimaxStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    return-object v0
.end method


# virtual methods
.method public AuthNaiRejected()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->AuthNaiRejected()V

    return-void
.end method

.method public AuthenticationNaiRejectedNotification()V
    .locals 0

    return-void
.end method

.method public AuthenticationState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->AuthenticationState(Z)V

    return-void
.end method

.method public AuthenticationStateNotification(Z)V
    .locals 0

    return-void
.end method

.method public BackoffStateChangeNotification(Z)V
    .locals 0

    return-void
.end method

.method public BaseMacAddrChangeNotification(J)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->BaseMacAddrChangeNotification(J)V

    return-void
.end method

.method public BsFoundNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 2

    const-string v0, "WimaxMonitor"

    invoke-virtual {p1}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public FrequencyChangeNotification(J)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->FrequencyChangeNotification(J)V

    return-void
.end method

.method public HandoverFailedNotification()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->HandoverFailedNotification()V

    return-void
.end method

.method public HandoverStartedNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->HandoverStartedNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V

    return-void
.end method

.method public HandoverSucceededNotification(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->HandoverSucceededNotification(Z)V

    return-void
.end method

.method public LinkRetentionStateChange(Lcom/sqn/dcc/LinkRetentionStateChange;)V
    .locals 3

    const-string v0, "WimaxMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkRetentionStateChange state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sqn/dcc/LinkRetentionStateChange;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->LinkRetentionStateChange(Lcom/sqn/dcc/LinkRetentionStateChange;)V

    return-void
.end method

.method public Log(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/htc/net/wimax/WimaxMonitor;->LOG(ILjava/lang/String;)V

    return-void
.end method

.method public MeetEntryCriteriaNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 0

    return-void
.end method

.method public MeetExitCriteriaNotification()V
    .locals 0

    return-void
.end method

.method public NdsAutodetectEnterCriteriaExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->NdsAutodetectEnterCriteriaExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V

    return-void
.end method

.method public NdsAutodetectExitCriteriaNotification()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->NdsAutodetectExitCriteriaNotification()V

    return-void
.end method

.method public NdsBackoffStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->NdsBackoffStarted(Z)V

    return-void
.end method

.method public NdsBsFoundExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->NdsBsFoundExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V

    return-void
.end method

.method public NdsRoundCompleteNotification()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->NdsRoundCompleteNotification()V

    return-void
.end method

.method public NdsStateNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->NdsStateNotification(I)V

    return-void
.end method

.method public ScanRoundCompleteNotification([Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 0

    return-void
.end method

.method public SsStateNotification(Lcom/sqn/dcc/swmSsState;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->SsStateNotification(Lcom/sqn/dcc/swmSsState;)V

    return-void
.end method

.method public WimaxFatalErrorNotification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public WimaxReadyNotification()V
    .locals 2

    const-string v0, "wimax.skipMsReady"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyDccConnected()V

    goto :goto_0
.end method

.method public WimaxReboot()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->WimaxReboot()V

    return-void
.end method

.method public WimaxRegisterNotification()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->registerNtfReady()V

    return-void
.end method

.method public WimaxStateChangeNotificaion(Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;)V
    .locals 0

    return-void
.end method

.method public enableLogLevel(I)V
    .locals 0

    sput p1, Lcom/htc/net/wimax/WimaxMonitor;->logLevel:I

    return-void
.end method

.method public getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    return-object v0
.end method

.method public startServerSocket()V
    .locals 3

    new-instance v1, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-direct {v1, p0, v2}, Lcom/htc/net/wimax/WimaxMonitor$WimaxServerSocket;-><init>(Lcom/htc/net/wimax/WimaxMonitor;Lcom/htc/net/wimax/WimaxStateTracker;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
