.class public abstract Lcom/google/android/gsf/gtalkservice/Endpoint;
.super Ljava/lang/Object;
.source "Endpoint.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/PacketSender;
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/Endpoint$1;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;,
        Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;
    }
.end annotation


# static fields
.field protected static sNonTalkAccountId:J


# instance fields
.field protected mAccount:Lcom/google/android/gsf/gtalkservice/Account;

.field protected mAccountId:J

.field private mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

.field protected mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mAsyncMessageHandler:Landroid/os/Handler;

.field protected mAsyncWakelockTag:Ljava/lang/String;

.field private mAuthExpiredCount:I

.field private mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

.field private mClearWakeLockTimerFiredCount:I

.field protected mConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mConnectionClosedLock:Ljava/lang/Object;

.field private mConnectionDurations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

.field private mConnectionHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionStartTime:J

.field protected mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

.field private mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

.field public mContext:Landroid/content/Context;

.field private mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

.field protected mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

.field protected final mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field protected mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

.field protected mIqPacketManager:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

.field private mJid:Ljava/lang/String;

.field protected mJidResource:Ljava/lang/String;

.field private mLastConnectAttemptTs:J

.field protected mLastConnectionAttemptSuccessful:Z

.field private mLastLoginAttemptTimeStamp:J

.field private mNumConnectionsAttempted:I

.field private mNumConnectionsMade:I

.field protected mOpened:Z

.field private mOriginalUserBareAddress:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field protected mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

.field private mServerAddress:Ljava/lang/String;

.field protected mServiceHandler:Landroid/os/Handler;

.field protected mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

.field protected mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserBareAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->sNonTalkAccountId:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)V
    .locals 3
    .parameter "service"
    .parameter "workerLooper"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    .line 100
    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 101
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionState;

    invoke-direct {v0, v1}, Lcom/google/android/gtalkservice/ConnectionState;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    .line 102
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError;

    invoke-direct {v0, v1}, Lcom/google/android/gtalkservice/ConnectionError;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    .line 109
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    .line 110
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    .line 111
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionClosedLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    .line 140
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    .line 162
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 163
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gsf/gtalkservice/EndpointMessageHandler;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    .line 166
    return-void
.end method

.method static synthetic access$108(Lcom/google/android/gsf/gtalkservice/Endpoint;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimerFiredCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimerFiredCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/Endpoint;)Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/Endpoint;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    return-wide v0
.end method

.method private addConnectionClosedEvent(I)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1694
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addConnectionClosedEvent: mError="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1696
    :try_start_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionClosedEvent;-><init>(I)V

    .line 1698
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 1699
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move-wide v0, v2

    .line 1702
    :goto_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    iput-wide v0, v5, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    .line 1704
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    iget-wide v5, v5, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    cmp-long v5, v5, v2

    if-gtz v5, :cond_0

    .line 1705
    const-string v5, "GTalkService/c"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "??? addConnectionClosedEvent: connection uptime is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    iget-wide v7, v7, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mConnectionStartTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_0
    new-instance v5, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V

    iput-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    .line 1712
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1715
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getMaxConnectionHistoryRecords()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 1716
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1723
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v5

    .line 1724
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 1725
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v5

    .line 1727
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1728
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logConnectionClosed(III)V

    .line 1736
    :goto_1
    monitor-exit v4

    .line 1737
    return-void

    .line 1699
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    sub-long/2addr v0, v5

    goto :goto_0

    .line 1731
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    invoke-virtual {v6}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logConnectionEvent(IIII)V

    goto :goto_1

    .line 1736
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addConnectionEvent(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1652
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    .line 1653
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 1655
    packed-switch p1, :pswitch_data_0

    .line 1680
    :pswitch_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;-><init>(I)V

    .line 1684
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1685
    :try_start_0
    const-string v2, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addConnectionEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 1687
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logConnectionEvent(IIII)V

    .line 1691
    return-void

    .line 1658
    :pswitch_1
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getLastNetworkAvailable()Z

    move-result v5

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v6

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;-><init>(IILandroid/net/NetworkInfo$State;IZJ)V

    goto :goto_0

    .line 1666
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 1668
    new-instance v1, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getHostIpAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;-><init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V

    move-object v0, v1

    .line 1671
    goto :goto_0

    .line 1668
    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 1674
    :pswitch_3
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;

    invoke-direct {v0, p1, v2, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;-><init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V

    goto :goto_0

    .line 1687
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1655
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelReconnectAlarm()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->cancelReconnectAlarm()V

    .line 670
    return-void
.end method

.method private checkConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_0
    return-void
.end method

.method private clearReconnectAlarm()V
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->cancelReconnectAlarm()V

    .line 665
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->clearReconnectAlarm()V

    .line 666
    return-void
.end method

.method private constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 3
    .parameter "message"

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    if-eqz p1, :cond_2

    .line 526
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_0
    :goto_0
    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_1

    .line 537
    const-string v1, ", mConnection.isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 541
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v1, :cond_0

    .line 528
    const-string v1, "mConnection=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getMaxConnectionHistoryRecords()I
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 428
    .local v0, acct:Lcom/google/android/gsf/gtalkservice/Account;
    if-nez v0, :cond_0

    .line 429
    const/16 v1, 0xa

    .line 432
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMaxConnectionHistoryRecords()I

    move-result v1

    goto :goto_0
.end method

.method private static getNextAvaialableNonTalkAccountId()J
    .locals 4

    .prologue
    .line 262
    sget-wide v0, Lcom/google/android/gsf/gtalkservice/Endpoint;->sNonTalkAccountId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gsf/gtalkservice/Endpoint;->sNonTalkAccountId:J

    return-wide v0
.end method

.method private handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 984
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 986
    const-string v3, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDoConnectError for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", error="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", xmppError="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    if-eqz p2, :cond_0

    .line 993
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I

    move-result p1

    .line 994
    const-string v1, "GTalkService/c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: translateXMPPError => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->reachedRetryThresholdForAuthExpiration()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1002
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 1003
    const/4 v3, 0x1

    if-nez v1, :cond_4

    const/16 v4, 0xb

    if-eq p1, v4, :cond_4

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 1011
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    if-nez v1, :cond_2

    .line 1014
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->requestToRefreshAuthToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1019
    :cond_2
    if-eqz v1, :cond_3

    .line 1020
    const-string v0, "handleDoConnectError: repeated AUTH_EXPIRED failures, stop retrying."

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1023
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 1028
    :cond_3
    const-string v0, "GTalkService/c"

    const-string v1, "handleDoConnectError: connection failed"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v0, "GTalkService/wake"

    const-string v1, "release wakelock"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1032
    return-void

    :cond_4
    move v0, v2

    .line 1003
    goto :goto_0

    .line 1019
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 1020
    const-string v1, "handleDoConnectError: repeated AUTH_EXPIRED failures, stop retrying."

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1023
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 1028
    :cond_5
    const-string v1, "GTalkService/c"

    const-string v2, "handleDoConnectError: connection failed"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v1, "GTalkService/wake"

    const-string v2, "release wakelock"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1019
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private initJid()V
    .locals 3

    .prologue
    .line 240
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, username:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, jid:Ljava/lang/StringBuilder;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getJidResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJid(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setUserBareAddress(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setOriginalUserBareAddress(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private internalSetConnectionState(I)Z
    .locals 4
    .parameter "state"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 438
    const-string v0, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalSetConnectionState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v0, p1}, Lcom/google/android/gtalkservice/ConnectionState;->setState(I)V

    .line 441
    const/4 v0, 0x1

    monitor-exit v1

    .line 445
    :goto_0
    return v0

    .line 443
    :cond_0
    monitor-exit v1

    .line 445
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendConnectionClosedMessage(II)V
    .locals 3
    .parameter "connectionId"
    .parameter "error"

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1139
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1140
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1141
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJid:Ljava/lang/String;

    .line 1219
    return-void
.end method

.method private setOriginalUserBareAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOriginalUserBareAddress:Ljava/lang/String;

    .line 1235
    return-void
.end method

.method private setServerAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServerAddress:Ljava/lang/String;

    .line 1227
    return-void
.end method

.method private setUserBareAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mUserBareAddress:Ljava/lang/String;

    .line 1231
    return-void
.end method

.method private translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I
    .locals 3
    .parameter "xmppError"

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, error:I
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v1

    .line 803
    .local v1, errorCode:I
    if-eqz v1, :cond_0

    .line 804
    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    const/16 v2, 0x196

    if-gt v1, v2, :cond_2

    .line 808
    instance-of v2, p1, Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;

    if-eqz v2, :cond_1

    .line 809
    const/4 v0, 0x4

    .line 826
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 813
    :cond_2
    const/16 v2, 0x197

    if-ne v1, v2, :cond_3

    .line 814
    const/16 v0, 0xb

    goto :goto_0

    .line 815
    :cond_3
    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1f6

    if-lt v1, v2, :cond_5

    const/16 v2, 0x1f8

    if-gt v1, v2, :cond_5

    .line 816
    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    .line 818
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 819
    const/4 v0, 0x1

    goto :goto_0

    .line 821
    :cond_6
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateAuthErrorStats(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1758
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1759
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    if-nez p1, :cond_0

    .line 1761
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    goto :goto_0
.end method


# virtual methods
.method public acquireAsyncWakeLock()V
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 288
    const-string v0, "GTalkService/wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireAsyncWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    const-wide/32 v2, 0x11170

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    return-void

    .line 289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public acquireSimpleWakeLock(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 275
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected addConnectionDuration()V
    .locals 8

    .prologue
    .line 1255
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1259
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    monitor-enter v3

    .line 1260
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 1261
    .local v0, duration:J
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1262
    monitor-exit v3

    goto :goto_0

    .end local v0           #duration:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1740
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addConnectionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1743
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 1744
    monitor-exit v1

    .line 1745
    return-void

    .line 1744
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public asyncCloseSettingsQueryMap()V
    .locals 3

    .prologue
    .line 1863
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1864
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1866
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1868
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected broadcastConnected()V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method protected broadcastDisconnected(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 783
    return-void
.end method

.method protected bumpConnectionCount()V
    .locals 4

    .prologue
    .line 1239
    monitor-enter p0

    .line 1240
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    .line 1241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connections made: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    return-void

    .line 1241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bumpConnectionsAttemptedCount()V
    .locals 4

    .prologue
    .line 1247
    monitor-enter p0

    .line 1248
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    .line 1249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connections made: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    return-void

    .line 1249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearStats()V
    .locals 2

    .prologue
    .line 1345
    monitor-enter p0

    .line 1346
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    .line 1347
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    .line 1349
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1350
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1351
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1352
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1353
    return-void

    .line 1351
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1352
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public closeConnection(ZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    .line 1043
    const-string v0, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeConnection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", xmppConn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v2

    .line 1049
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v0

    .line 1054
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionClosed(IIZZ)V

    .line 1056
    invoke-virtual {p0, v1, p3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeXmppConnection(Lorg/jivesoftware/smack/XMPPConnection;Z)V

    .line 1057
    return-void

    .line 1049
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeSettingsQueryMap()V
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->deleteObservers()V

    .line 1873
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->close()V

    .line 1875
    :cond_0
    return-void
.end method

.method protected closeXmppConnection(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 0
    .parameter "connection"
    .parameter "async"

    .prologue
    .line 1059
    return-void
.end method

.method protected computeJIDResource()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0xc

    .line 1837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getResourcePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1840
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 1841
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    .line 1842
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1843
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1845
    if-le v3, v7, :cond_1

    .line 1846
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1854
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1847
    :cond_1
    if-ge v3, v7, :cond_0

    .line 1848
    rsub-int/lit8 v3, v3, 0xc

    .line 1849
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1850
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public connect()Z
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 596
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->queryLoggingLevel()V

    .line 599
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->cancelReconnectAlarm()V

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectAttemptTs:J

    .line 603
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 604
    .local v0, connectionState:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 605
    const-string v3, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect: acct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current conn state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_0
    return v2

    .line 613
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 615
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->pollNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 616
    const-string v4, "GTalkService/c"

    const-string v5, "connect: network unavailable, set state=PENDING, err=NO_NETWORK"

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 628
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_0

    .line 632
    :cond_1
    const-string v2, "GTalkService/c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect: acct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->acquireAsyncWakeLock()V

    .line 640
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 641
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 643
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    move v2, v3

    .line 646
    goto :goto_0
.end method

.method public connectionClosed(I)V
    .locals 1
    .parameter "connectionId"

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendConnectionClosedMessage(II)V

    .line 1130
    return-void
.end method

.method public connectionClosed(IIZ)V
    .locals 1
    .parameter "connectionId"
    .parameter "error"
    .parameter "notify"

    .prologue
    .line 675
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionClosed(IIZZ)V

    .line 676
    return-void
.end method

.method public connectionClosed(IIZZ)V
    .locals 10
    .parameter "connectionId"
    .parameter "error"
    .parameter "notify"
    .parameter "allowRetry"

    .prologue
    .line 692
    new-instance v4, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v5, "connectionClosed"

    invoke-direct {v4, v5}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 698
    .local v4, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    const-string v5, "connectionClosed"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->acquireSimpleWakeLock(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, username:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 705
    const/4 v2, 0x0

    .line 707
    .local v2, retryConnection:Z
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionClosedLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 711
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 715
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-nez v0, :cond_4

    .line 716
    const-string v5, "GTalkService"

    const-string v7, "connectionClosed: no XMPPConnection - That\'s strange!"

    invoke-static {v5, v7}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_0
    const-string v5, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 729
    const-string v5, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectionClosed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountId:J

    invoke-static {v8, v9, v3}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", connId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 737
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 738
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->onConnectionClosed(I)V

    .line 740
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionDuration()V

    .line 741
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionClosedEvent(I)V

    .line 743
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p2}, Lcom/google/android/gtalkservice/ConnectionError;->isAuthenticationError(I)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p4, :cond_5

    .line 746
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 747
    const/4 v2, 0x1

    .line 752
    :goto_0
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    .line 753
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    if-eqz v2, :cond_2

    .line 767
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 770
    :cond_2
    if-eqz p3, :cond_3

    .line 771
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->broadcastDisconnected(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 774
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 775
    const-string v5, "connectionClosed"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    .line 777
    :goto_1
    return-void

    .line 718
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v1

    .line 719
    .local v1, currentConnectionId:I
    if-eq p1, v1, :cond_0

    .line 720
    const-string v5, "GTalkService/c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectionClosed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v8

    invoke-static {v8, v9, v3}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", old conn(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), curr connection id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ignore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 774
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 775
    const-string v5, "connectionClosed"

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    goto :goto_1

    .line 749
    .end local v1           #currentConnectionId:I
    :cond_5
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_0

    .line 753
    .end local v0           #connection:Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 774
    .end local v2           #retryConnection:Z
    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 775
    const-string v6, "connectionClosed"

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseSimpleWakeLock(Ljava/lang/String;)V

    throw v5
.end method

.method public connectionClosedOnError(ILjava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 1071
    const-string v1, "GTalkService"

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionClosedOnError for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v1

    .line 1080
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 1083
    instance-of v2, p2, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v2, :cond_5

    .line 1084
    check-cast p2, Lorg/jivesoftware/smack/XMPPException;

    .line 1085
    invoke-virtual {p2}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v2

    .line 1086
    invoke-virtual {p2}, Lorg/jivesoftware/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v3

    .line 1088
    const-string v4, "GTalkService/c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectionClosedOnError: xmppError = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    if-eqz v2, :cond_3

    .line 1092
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I

    move-result v0

    :cond_1
    :goto_0
    move v1, v0

    .line 1115
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendConnectionClosedMessage(II)V

    .line 1116
    return-void

    .line 1094
    :cond_3
    invoke-virtual {p2}, Lorg/jivesoftware/smack/XMPPException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v2

    .line 1095
    if-eqz v2, :cond_4

    .line 1096
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/StreamError;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 1097
    const-string v3, "host-unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 1102
    :cond_5
    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;

    if-eqz v0, :cond_7

    .line 1104
    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    .line 1107
    :cond_7
    const/16 v1, 0xa

    goto :goto_1
.end method

.method public connectionEstablished(Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1158
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    .line 1159
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionEstablished for jid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConnectionStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 1164
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->checkConnection()V

    .line 1165
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->bumpConnectionCount()V

    .line 1167
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setServerAddress(Ljava/lang/String;)V

    .line 1170
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1171
    const-string v1, "GTalkService"

    const-string v2, "connectionEstablished:got username with no domain - should not happen."

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1175
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJid(Ljava/lang/String;)V

    .line 1176
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setUserBareAddress(Ljava/lang/String;)V

    .line 1179
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    const-string v2, "GTalkService/c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionEstablished: JID resource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJidResource(Ljava/lang/String;)V

    .line 1183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    .line 1184
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->broadcastConnected()V

    .line 1190
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1191
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1193
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->checkConnection()V

    .line 1195
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    const-string v0, "GTalkService/wake"

    const-string v1, "connectionEstablished: release wakelock"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1203
    return-void

    .line 1200
    :catchall_0
    move-exception v0

    const-string v1, "GTalkService/wake"

    const-string v2, "connectionEstablished: release wakelock"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 1200
    throw v0
.end method

.method protected connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 1150
    return-void
.end method

.method protected abstract createAsyncWakelockTag()V
.end method

.method public doConnect()V
    .locals 14

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 849
    const/4 v5, 0x0

    .line 853
    const-string v1, ""

    .line 855
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 859
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 863
    const/16 v0, 0x4e20

    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->setPacketReplyTimeout(I)V

    .line 866
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->setKeepAliveInterval(I)V

    .line 870
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v8

    .line 871
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 872
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUseAndroidId()Z

    move-result v10

    .line 873
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    const-string v0, "doConnect: EMPTY AUTH-TOKEN, cannot make connection!"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 875
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    new-instance v8, Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;

    const/16 v9, 0x190

    const-string v10, "empty auth-token"

    invoke-direct {v8, p0, v9, v10}, Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;ILjava/lang/String;)V

    invoke-direct {v0, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 907
    :catch_0
    move-exception v0

    .line 909
    :try_start_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v8

    .line 910
    instance-of v9, v8, Ljava/net/UnknownHostException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_5

    .line 912
    :try_start_2
    const-string v4, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect: caught "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 946
    :goto_0
    if-nez v2, :cond_0

    if-eqz v5, :cond_b

    .line 947
    :cond_0
    invoke-direct {p0, v2, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    .line 981
    :cond_1
    :goto_1
    return-void

    .line 878
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0, v7, v8, v9, v10}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 882
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v9

    .line 883
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getDomain()Ljava/lang/String;

    move-result-object v10

    .line 885
    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    .line 887
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getJidResource()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 889
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v8, "empty JID resource"

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 924
    :catch_1
    move-exception v0

    .line 929
    :try_start_4
    const-string v2, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v8

    invoke-static {v8, v9, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") caught "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 947
    invoke-direct {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_1

    .line 893
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v11

    .line 894
    invoke-virtual {v11}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 895
    const-string v0, "GTalkService/c"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doConnect: acct="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v9

    invoke-static {v9, v10, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", current conn_state is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 939
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doConnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v2

    invoke-static {v2, v3, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cancel connect: release wakelock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    goto/16 :goto_1

    .line 903
    :cond_4
    :try_start_6
    invoke-virtual {p0, v8, v9, v10, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectDelegate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 905
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 946
    if-eqz v5, :cond_d

    .line 947
    invoke-direct {p0, v3, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_1

    .line 913
    :cond_5
    :try_start_7
    instance-of v2, v8, Ljava/io/IOException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_6

    .line 915
    :try_start_8
    const-string v2, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect: caught "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v2, v4

    goto/16 :goto_0

    .line 917
    :cond_6
    :try_start_9
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v2

    .line 918
    :try_start_a
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xmppError = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 920
    if-nez v2, :cond_f

    move-object v5, v2

    move v2, v6

    .line 921
    goto/16 :goto_0

    .line 933
    :catch_2
    move-exception v0

    .line 934
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doConnect("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v8

    invoke-static {v8, v9, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") caught "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 947
    invoke-direct {p0, v6, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_1

    .line 952
    :cond_7
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 956
    :try_start_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 957
    const-string v2, "GTalkService/c"

    const-string v3, "(WARNING) doConnect: serverJid is empty or null"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 964
    const-string v2, "GTalkService/c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doConnect: DONE. serverJid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_3

    .line 938
    :cond_9
    :goto_2
    throw v0

    :catchall_0
    move-exception v0

    move v2, v3

    move-object v4, v5

    .line 946
    :goto_3
    if-nez v2, :cond_a

    if-eqz v4, :cond_7

    .line 947
    :cond_a
    invoke-direct {p0, v2, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_1

    .line 966
    :catch_3
    move-exception v1

    .line 967
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionEstablished for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 974
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    .line 975
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 976
    const-string v1, "doConnect: reset connection state to PENDING"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0, v13}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_2

    .line 952
    :cond_b
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 956
    :try_start_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 957
    const-string v0, "GTalkService/c"

    const-string v2, "(WARNING) doConnect: serverJid is empty or null"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_c
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 964
    const-string v0, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConnect: DONE. serverJid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    .line 966
    :catch_4
    move-exception v0

    .line 967
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionEstablished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    invoke-static {v3, v4, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 974
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const-string v0, "doConnect: reset connection state to PENDING"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    .line 977
    :goto_4
    invoke-virtual {p0, v13}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto/16 :goto_1

    .line 952
    :cond_d
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->updateAuthErrorStats(I)V

    .line 956
    :try_start_e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 957
    const-string v0, "GTalkService/c"

    const-string v2, "(WARNING) doConnect: serverJid is empty or null"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_e
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connectionEstablished(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectSucceededDelegate()V

    .line 964
    const-string v0, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConnect: DONE. serverJid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    .line 966
    :catch_5
    move-exception v0

    .line 967
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionEstablished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    invoke-static {v3, v4, v7}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->doConnectFailedDelegate()V

    .line 974
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const-string v0, "doConnect: reset connection state to PENDING"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logw(Ljava/lang/String;)V

    goto :goto_4

    .line 938
    :catchall_1
    move-exception v0

    move-object v4, v5

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move v2, v4

    move-object v4, v5

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v2

    move v2, v3

    goto/16 :goto_3

    :cond_f
    move-object v5, v2

    move v2, v3

    goto/16 :goto_0
.end method

.method protected doConnectDelegate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "domain"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 832
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doConnectFailedDelegate()V
    .locals 0

    .prologue
    .line 842
    return-void
.end method

.method protected doConnectSucceededDelegate()V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method protected doLogout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOpened:Z

    .line 393
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 394
    invoke-virtual {p0, v1, v1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 397
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XmppConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "open"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connection error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    const-string v0, "Connection stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    const-string v0, "------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connections made/attempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNumberOfConnectionsMade()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNumberOfConnectionsAttempted()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1372
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection uptime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionUptime()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last server activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastActivityFromServerTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last device activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastActivityToServerTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    div-long/2addr v0, v5

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    :goto_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    const-string v0, "Wakelocks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    const-string v0, "------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async conn wakelock: tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAsyncWakelockTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTALK_CONN wakelock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClearWakeLockTimer fired count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimerFiredCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    return-void

    .line 1359
    :cond_0
    const-string v0, "closed"

    goto/16 :goto_0

    .line 1382
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last connect attempt time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectAttemptTs:J

    sub-long/2addr v0, v3

    div-long/2addr v0, v5

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected dumpConnectionHistory(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter

    .prologue
    .line 1399
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1401
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 1402
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conn #("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "):"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->dump(Ljava/io/PrintWriter;)V

    .line 1405
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .line 1407
    :cond_0
    monitor-exit v3

    .line 1408
    return-void

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ensureRouteOverMobileHipriNetworkInterface()Z
    .locals 2

    .prologue
    .line 1899
    const-string v0, "GTalkService/c"

    const-string v1, "ensureRouteOverMobileHipriNetworkInterface: not the right endpoint"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    const/4 v0, 0x0

    return v0
.end method

.method public forceCloseConnection()V
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/google/android/gsf/gtalkservice/Account;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 786
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountId:J

    return-wide v0
.end method

.method public getAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

    return-object v0
.end method

.method protected getAsyncWakelockTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncWakelockTag:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;
    .locals 2

    .prologue
    .line 481
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-exit v1

    return-object v0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;
    .locals 2

    .prologue
    .line 466
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-exit v1

    return-object v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionUptime()I
    .locals 4

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x0

    .line 1316
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method public getHeartbeatInterval()J
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getHeartbeatInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mIqPacketManager:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJid:Ljava/lang/String;

    return-object v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJidResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivityFromServerTime()J
    .locals 2

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_1

    .line 1325
    :cond_0
    const-wide/16 v0, -0x1

    .line 1327
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLastActivityFromServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastActivityToServerTime()J
    .locals 2

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_1

    .line 1336
    :cond_0
    const-wide/16 v0, -0x1

    .line 1338
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLastActivityToServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastConnectionAttemptSuccessful()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastConnectionAttemptSuccessful:Z

    return v0
.end method

.method public getNumberOfConnectionsAttempted()I
    .locals 1

    .prologue
    .line 1278
    monitor-enter p0

    .line 1279
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsAttempted:I

    monitor-exit p0

    return v0

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNumberOfConnectionsMade()I
    .locals 1

    .prologue
    .line 1272
    monitor-enter p0

    .line 1273
    :try_start_0
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mNumConnectionsMade:I

    monitor-exit p0

    return v0

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOriginalUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOriginalUserBareAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    return-object v0
.end method

.method protected getResourcePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1859
    const-string v0, ""

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mUserBareAddress:Ljava/lang/String;

    return-object v0
.end method

.method public goOnline()Z
    .locals 1

    .prologue
    .line 1878
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 7
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 185
    new-instance v0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;-><init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->initJidResource()V

    .line 194
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->initJid()V

    .line 196
    new-instance v0, Lorg/jivesoftware/smack/filter/AccountIdFilter;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lorg/jivesoftware/smack/filter/AccountIdFilter;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

    .line 197
    new-instance v0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mIqPacketManager:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    .line 198
    new-instance v0, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    .line 200
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    .line 201
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->init(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 203
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v1

    .line 204
    :try_start_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    .line 205
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionHistory:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 210
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mPowerManager:Landroid/os/PowerManager;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->createAsyncWakelockTag()V

    .line 214
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAsyncWakelockTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GTALK_CONN"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 220
    return-void

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected initJidResource()V
    .locals 4

    .prologue
    .line 1789
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->computeJIDResource()Ljava/lang/String;

    move-result-object v0

    .line 1790
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initJidResource: computeJIDResource returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for endpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJidResource(Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method protected internalSetAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    .line 236
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getNextAvaialableNonTalkAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAccountId:J

    .line 237
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 477
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOpened:Z

    return v0
.end method

.method protected logConnectionClosed(III)V
    .locals 0
    .parameter "error"
    .parameter "networkType"
    .parameter "connDuration"

    .prologue
    .line 1750
    return-void
.end method

.method protected logConnectionEvent(IIII)V
    .locals 0
    .parameter "eventType"
    .parameter "state"
    .parameter "error"
    .parameter "networkState"

    .prologue
    .line 1755
    return-void
.end method

.method protected logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1428
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1432
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1433
    return-void
.end method

.method protected logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method public login()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 329
    const-string v2, "GTalkService/c"

    const-string v3, "login"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 332
    .local v0, now:J
    new-instance v2, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 335
    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 337
    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastLoginAttemptTimeStamp:J

    .line 340
    iput-boolean v6, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mOpened:Z

    .line 342
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastLoginAttemptTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 343
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mLastLoginAttemptTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 344
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "GTalkService"

    const-string v3, "too many login attempts, delay connecting"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connect()Z

    goto :goto_0
.end method

.method public logout()V
    .locals 3

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->clearReconnectAlarm()V

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->asyncCloseSettingsQueryMap()V

    .line 361
    new-instance v1, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V

    .line 364
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 366
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncMessageHandler:Landroid/os/Handler;

    .line 385
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->removeConnection(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V

    .line 386
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->removeConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 387
    return-void

    .line 379
    :cond_0
    const-string v1, "GTalkService"

    const-string v2, "##### logout: mAsyncMessageHandler is already null!"

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1437
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    :cond_0
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1424
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    return-void
.end method

.method protected notifyConnectionListeners()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public abstract onConnectionClosed(I)V
.end method

.method public onGServicesChangeDelegate()V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method protected reachedRetryThresholdForAuthExpiration()Z
    .locals 3

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_max_retries_for_auth_expired"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1769
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAuthExpiredCount:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseAsyncWakeLock()V
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 299
    :cond_0
    const-string v0, "GTalkService/wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAsyncWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    return-void

    .line 300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseSimpleWakeLock(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public requestToRefreshAuthToken()V
    .locals 2

    .prologue
    .line 1035
    const-string v0, "GTalkService/c"

    const-string v1, "requestToRefreshAuthToken: send EVENT_REFRESH_AUTH_TOKEN msg"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1037
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1038
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1039
    return-void
.end method

.method public retryConnection(Z)V
    .locals 2
    .parameter "now"

    .prologue
    .line 650
    if-eqz p1, :cond_0

    .line 651
    const-string v0, "GTalkService/c"

    const-string v1, "retryConnection now"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->connect()Z

    .line 661
    :goto_0
    return-void

    .line 654
    :cond_0
    const-string v0, "GTalkService/c"

    const-string v1, "retryConnection later"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setReconnectAlarm()V

    .line 659
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(I)Z

    goto :goto_0
.end method

.method public sendHeartbeatToServer()Z
    .locals 2

    .prologue
    .line 1904
    const-string v0, "GTalkService/c"

    const-string v1, "sendHeartbeatToServer: not the right endpoint"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const/4 v0, 0x0

    return v0
.end method

.method public sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1887
    :try_start_0
    new-instance v0, Lorg/jivesoftware/smack/packet/HttpRequest;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/packet/HttpRequest;-><init>([B)V

    .line 1888
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mHttpResponseManager:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->addPending(Ljava/lang/String;Lcom/google/android/gtalkservice/IHttpRequestCallback;)V

    .line 1889
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 1890
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "req is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/HttpRequest;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    :goto_0
    return-void

    .line 1893
    :catch_0
    move-exception v0

    .line 1894
    const-string v1, "GTalkService"

    const-string v2, "caught exception"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract sendIqStanza(Landroid/content/Intent;)V
.end method

.method public abstract sendMessageStanza(Landroid/content/Intent;)V
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 1
    .parameter "packet"

    .prologue
    .line 545
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v0

    return v0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    .locals 4
    .parameter "packet"
    .parameter "storeInRmq"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/packet/Packet;->setAccountId(J)V

    .line 551
    if-eqz p2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v1

    .line 553
    .local v1, rmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->send(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    .line 559
    .end local v1           #rmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 556
    .end local v0           #retVal:Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    .restart local v0       #retVal:Z
    goto :goto_0
.end method

.method public sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 7
    .parameter "packet"

    .prologue
    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, retVal:Z
    const/4 v2, 0x0

    .line 574
    .local v2, exception:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 575
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_1

    .line 577
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    const/4 v3, 0x1

    .line 586
    :goto_0
    if-eqz v2, :cond_0

    .line 587
    const-string v4, "GTalkService/c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send packet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    return v3

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, ex:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v2

    .line 581
    goto :goto_0

    .line 583
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract sendPresenceStanza(Landroid/content/Intent;)V
.end method

.method public setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 258
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->initJid()V

    .line 259
    return-void
.end method

.method protected setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 419
    monitor-enter p0

    .line 420
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 421
    monitor-exit p0

    .line 423
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConnectionError(I)Z
    .locals 2
    .parameter "error"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0, p1}, Lcom/google/android/gtalkservice/ConnectionError;->setError(I)V

    .line 490
    const/4 v0, 0x1

    monitor-exit v1

    .line 494
    :goto_0
    return v0

    .line 492
    :cond_0
    monitor-exit v1

    .line 494
    const/4 v0, 0x0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConnectionState(I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 458
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionState(IZ)Z

    move-result v0

    .line 459
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->addConnectionEvent(I)V

    .line 462
    :cond_0
    return v0
.end method

.method protected setConnectionState(IZ)Z
    .locals 1
    .parameter "state"
    .parameter "notify"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetConnectionState(I)Z

    move-result v0

    .line 450
    .local v0, changed:Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->notifyConnectionListeners()V

    .line 454
    :cond_0
    return v0
.end method

.method public setConnectionStateAndError(IIZ)V
    .locals 2
    .parameter "state"
    .parameter "error"
    .parameter "forceNotify"

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->internalSetConnectionState(I)Z

    move-result v0

    .line 500
    .local v0, notify:Z
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    const/4 v0, 0x1

    .line 504
    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->notifyConnectionListeners()V

    .line 507
    :cond_2
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setHeartbeatInterval(J)V

    .line 1786
    return-void
.end method

.method protected setJidResource(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1801
    const-string v0, "GTalkService/c"

    const-string v1, "setJidResource: failed, jidResource is empty"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJidResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1808
    const-string v0, "GTalkService/c"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1809
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJidResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :cond_2
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mJidResource:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSessionWrapper(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 267
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 1
    .parameter "uploadStat"

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setUploadHeartbeatStat(Z)V

    .line 1778
    return-void
.end method

.method public updateAccountStatus()V
    .locals 0

    .prologue
    .line 836
    return-void
.end method

.method public wasLastConnectionRemainConnectedForLongEnough()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 316
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    monitor-enter v2

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    monitor-exit v2

    move v0, v1

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0xa

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
