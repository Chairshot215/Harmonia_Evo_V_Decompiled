.class public Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.super Landroid/app/Service;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;,
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

.field private mAirplaneModeTurnedOffTimeStamp:J

.field private mAirplaneModeTurnedOnTimeStamp:J

.field private mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

.field private mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

.field private mDeviceStorageLow:Z

.field private volatile mEnableTalkForegroundNotifications:Z

.field private mEndpointWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

.field private mHandler:Landroid/os/Handler;

.field private mIpcLock:Ljava/lang/Object;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field private mPendingGservicesChange:Z

.field private mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

.field private mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

.field private mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

.field private mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

.field private mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

.field private mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

.field private mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

.field private final mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTimeSinceServiceOnCreate:J

.field private mUserIsIdle:Z

.field private mWorkerLooper:Landroid/os/Looper;

.field private mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 910
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 141
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 146
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 147
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 152
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 1866
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 911
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleScreenOn()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleConnectivityChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleAirplaneModeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveObsoleteEndpoints()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->maybeCreateMainEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveMainEndpoint()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setTalkForegroundState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->resetOnGservicesChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    return-object p1
.end method

.method private accountsContainsUsername([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .parameter "accounts"
    .parameter "username"

    .prologue
    .line 723
    array-length v1, p1

    .line 725
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 726
    aget-object v3, p1, v2

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 728
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    const/4 v3, 0x1

    .line 732
    .end local v0           #accountName:Ljava/lang/String;
    :goto_1
    return v3

    .line 725
    .restart local v0       #accountName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
    .end local v0           #accountName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1563
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    const-string v0, "GTalkService"

    const-string v2, "blockingCreateGTalkConnection failed due to low storage!"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :goto_0
    return-object v1

    .line 1568
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1577
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1578
    const-string v0, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1579
    const-string v0, "blockingCreateGTalkConnection: no username, use first account"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1581
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object p1

    .line 1582
    if-eqz p1, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 1594
    :goto_2
    if-eqz v2, :cond_8

    .line 1595
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1596
    const-string v0, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v0, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1597
    const-string v0, "blockingCreateGTalkConnection: async fetch auth token"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1600
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;

    invoke-direct {v6, p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 1639
    if-eqz v0, :cond_4

    .line 1640
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1641
    const-string v5, "blockingCreateGTalkConnection: authToken fetched, login"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1643
    :cond_3
    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1645
    if-eqz v0, :cond_4

    .line 1646
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    .line 1651
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1663
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 1582
    goto :goto_1

    .line 1588
    :cond_6
    :try_start_1
    const-string v0, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingCreateGTalkConnection: username="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1591
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 1653
    :cond_8
    const-string v0, "GTalkService"

    const-string v2, "blockingCreateGTalkConnection: account is null!"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->reconcileGTalkAccount(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    :try_start_2
    const-string v2, "GTalkService"

    const-string v5, "blockingCreateGTalkConnection: caught "

    invoke-static {v2, v5, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1663
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 4
    .parameter "username"
    .parameter "callback"

    .prologue
    .line 823
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 824
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockingGetAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v1, 0x0

    .line 839
    :goto_0
    return-object v1

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ac2dm"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, token:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 833
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    const-string v1, "blockingGetAccount: no auth token, fetch"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 839
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    goto :goto_0
.end method

.method private createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 7
    .parameter "username"
    .parameter "token"
    .parameter "useAndroidId"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 891
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAccount: user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 893
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 894
    const-string v3, "GTalkService"

    const-string v4, "createConnection: empty username."

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_0
    return-object v2

    .line 898
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 900
    .local v0, androidId:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    .line 901
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 902
    const-string v3, "GTalkService"

    const-string v4, "createAccount: get ANDROID_ID returned 0!"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 906
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    goto :goto_0
.end method

.method private createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1468
    if-nez p1, :cond_0

    .line 1469
    const-string v1, "createEndpoint: null account, bail"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1559
    :goto_0
    return-object v0

    .line 1474
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v1

    if-gez v1, :cond_1

    .line 1475
    const-string v1, "createEndpoint: rejected: port is negative"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1480
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1481
    const-string v1, "createEndpoint: rejected: bkgnd data OFF"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1487
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 1505
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1507
    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1508
    if-eqz v0, :cond_4

    .line 1509
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "createEndpoint: endpoint exists"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1519
    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V

    .line 1520
    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-direct {v1, v3, p0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1522
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1524
    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1525
    if-eqz v0, :cond_6

    .line 1526
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1527
    const-string v1, "createEndpoint: endpoint exists, drop new conn"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1531
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->closeSettingsQueryMap()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1548
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1513
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1535
    :cond_6
    :try_start_2
    const-string v0, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEndpoint: create new gtalk conn for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1538
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1540
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    .line 1543
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1544
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 1545
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1548
    :cond_8
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1552
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1553
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->login()V

    :goto_1
    move-object v0, v1

    .line 1559
    goto/16 :goto_0

    .line 1548
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1555
    :cond_9
    const-string v0, "GTalkService"

    const-string v2, "createConnection: missing account.authToken..."

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnectionError(I)Z

    goto :goto_1
.end method

.method private createEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1414
    const-string v0, "GTalkService"

    invoke-static {v0, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEndpointAndLogin for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1418
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1421
    if-nez v0, :cond_3

    .line 1465
    :cond_1
    :goto_1
    return-void

    .line 1415
    :cond_2
    const-string v0, " null acct"

    goto :goto_0

    .line 1424
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1430
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1432
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1433
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1434
    const-string v1, "GTalkService"

    invoke-static {v1, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1435
    const-string v1, "createConnAndLogin: auth token changed, reconnect"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1439
    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 1441
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1443
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1444
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    goto :goto_1

    .line 1446
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    goto :goto_1

    .line 1451
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private deleteAccount(Ljava/lang/String;)V
    .locals 6
    .parameter "username"

    .prologue
    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 877
    .local v2, selectionArgs:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 878
    const-string v3, "username"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .end local v2           #selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 882
    .restart local v2       #selectionArgs:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, selection:Ljava/lang/String;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GTalkService] delete Talk account(s) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    .end local p1
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 888
    return-void

    .line 884
    .restart local p1
    :cond_1
    const-string p1, " because there is no account in AcctMgr"

    goto :goto_0
.end method

.method private getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 4
    .parameter "intent"

    .prologue
    .line 1136
    const-string v3, "username"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, username:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, appPackage:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1139
    .local v1, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    return-object v1
.end method

.method private getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1201
    const/4 v1, 0x0

    .line 1203
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1204
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 1205
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v4

    .line 1206
    instance-of v5, v4, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    if-eqz v5, :cond_0

    .line 1210
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1211
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found appEndpoint for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1212
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1216
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private getDeviceStorageLow()Z
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    monitor-exit v1

    return v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 3
    .parameter "user"

    .prologue
    .line 1670
    const/4 v0, 0x0

    .line 1672
    .local v0, retVal:Lcom/google/android/gtalkservice/IGTalkConnection;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1674
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1676
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1679
    return-object v0

    .line 1676
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1088
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    const-string v0, "GTalkService"

    const-string v2, "getEndpointFromIntent: missing username"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1110
    :goto_0
    return-object v0

    .line 1096
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1097
    if-nez v0, :cond_1

    .line 1098
    const-string v0, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEndpointFromIntent: cannot find endpoint for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1102
    goto :goto_0

    .line 1105
    :cond_1
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImSessionFromIntent: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1110
    goto :goto_0
.end method

.method private getIdleTimeout()J
    .locals 4

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_idle_timeout_ms"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSecurityTokenForAndroidId()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 692
    const/4 v3, 0x0

    .line 694
    .local v3, token:Ljava/lang/String;
    :try_start_0
    const-string v4, "CheckinService"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "CheckinTask_securityToken"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 696
    .local v1, securityToken:J
    cmp-long v4, v1, v8

    if-eqz v4, :cond_0

    .line 697
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 702
    .end local v1           #securityToken:J
    :cond_0
    :goto_0
    return-object v3

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "CheckinTask_securityToken is not a long."

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "GTALK_IDLE_ALARM"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Alarm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 378
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->setAction(Ljava/lang/String;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method private handleAirplaneModeChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 1780
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1781
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneModeChanged: airplaneModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1787
    :cond_0
    if-eqz v0, :cond_1

    .line 1788
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    .line 1789
    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    .line 1794
    :goto_0
    return-void

    .line 1791
    :cond_1
    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    .line 1792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    goto :goto_0
.end method

.method private handleConnectivityChanged(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1740
    const-string v1, "noConnectivity"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1743
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1746
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### handleConnectivityChanged: connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    networkInfo.type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    networkInfo.state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1753
    const-string v0, "otherNetwork"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1755
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1756
    const-string v4, "isFailover"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    networkInfo2.type="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    networkInfo2.state="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    isFailover="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1771
    :goto_5
    if-nez v1, :cond_9

    .line 1777
    :goto_6
    return-void

    :cond_0
    move v0, v2

    .line 1747
    goto/16 :goto_0

    .line 1748
    :cond_1
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 1750
    :cond_2
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 1759
    :cond_3
    const-string v2, "unknown"

    goto :goto_3

    .line 1761
    :cond_4
    const-string v0, "unknown"

    goto :goto_4

    .line 1766
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### Network broadcast (connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_6

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    const-string v0, ""

    goto :goto_8

    :cond_8
    const-string v0, ""

    goto :goto_9

    .line 1775
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->networkStateChanged(Landroid/net/NetworkInfo;JJ)V

    goto :goto_6
.end method

.method private handleCreateXmppEndpoint(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1164
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 1166
    if-nez v5, :cond_1

    .line 1167
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    const-string v0, "received a create endpoint intent with no package name. bailing."

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1173
    if-nez v1, :cond_0

    .line 1179
    const-string v1, "bind_to_session_servers"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1182
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    .line 1184
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 1187
    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1189
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    .line 1192
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1193
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 1194
    invoke-virtual {v2, v7}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1197
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->login()V

    goto :goto_0
.end method

.method private handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1300
    if-nez p1, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 1305
    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1310
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUseAndroidId()Z

    move-result v2

    .line 1311
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    .line 1313
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Account;->connectionSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1314
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1315
    const-string v2, "resetOnGservicesChange: cycle endpoint"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetOnGservicesChange: old "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetOnGservicesChange: new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1323
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v4, v0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 1324
    invoke-virtual {p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1325
    invoke-virtual {p1, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 1331
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->onGServicesChangeDelegate()V

    goto :goto_0

    .line 1329
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    goto :goto_1
.end method

.method private handlePackageInstalled()V
    .locals 2

    .prologue
    .line 1036
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handlePackageInstalled: re-init providers"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1037
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->createNewInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1038
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1041
    invoke-static {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->setDefault(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1042
    return-void
.end method

.method private handleScreenOff()V
    .locals 3

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1046
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v0

    .line 1047
    .local v0, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->initAlarm()V

    .line 1051
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTimer(J)V

    .line 1052
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->start()V

    .line 1055
    .end local v0           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    :cond_0
    return-void
.end method

.method private handleScreenOn()V
    .locals 3

    .prologue
    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isKeyguardLocked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1065
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1066
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1070
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleSendIqStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1144
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1145
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1150
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendIqStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendMessageStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1154
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1155
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1160
    :goto_0
    return-void

    .line 1159
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendMessageStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendPresenceStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1221
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1222
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1227
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPresenceStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendXmppFailed(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 1230
    const-string v0, "invalid_account"

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method private handleSendXmppIq(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1128
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1129
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendIqStanza(Landroid/content/Intent;)V

    .line 1132
    :cond_0
    return-void
.end method

.method private handleSendXmppMessage(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1115
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendMessageStanza(Landroid/content/Intent;)V

    .line 1118
    :cond_0
    return-void
.end method

.method private handleSendXmppPresence(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1122
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPresenceStanza(Landroid/content/Intent;)V

    .line 1125
    :cond_0
    return-void
.end method

.method private handleUserPresent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1076
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v0

    .line 1077
    .local v0, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections(Z)V

    .line 1083
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    .line 1085
    :cond_1
    return-void
.end method

.method private initProviders()V
    .locals 2

    .prologue
    .line 1335
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "initProviders"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1337
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1338
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1339
    return-void
.end method

.method private initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 3
    .parameter

    .prologue
    .line 1351
    const-string v0, "session"

    const-string v1, "http://www.google.com/session"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1354
    const-string v0, "query"

    const-string v1, "google:jingleinfo"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1358
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;-><init>(Landroid/content/Context;Lorg/jivesoftware/smack/provider/ProviderManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    .line 1359
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->searchProvidersFromIntent()V

    .line 1360
    return-void
.end method

.method private initializeConnection()V
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 1274
    return-void
.end method

.method private initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 0
    .parameter "providerMgr"

    .prologue
    .line 1342
    invoke-virtual {p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->initializeBuiltInProviders()V

    .line 1343
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1344
    return-void
.end method

.method private internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 6
    .parameter "user"

    .prologue
    .line 1684
    const/4 v3, 0x0

    .line 1686
    .local v3, retVal:Lcom/google/android/gtalkservice/IGTalkConnection;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1687
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 1688
    .local v4, user1:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getOriginalUsername()Ljava/lang/String;

    move-result-object v2

    .line 1689
    .local v2, originalUser1:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1690
    :cond_1
    move-object v3, v0

    .line 1695
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v2           #originalUser1:Ljava/lang/String;
    .end local v4           #user1:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private isBackgroundDataEnabled()Z
    .locals 1

    .prologue
    .line 1821
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method private isValidAccount(Ljava/lang/String;)Z
    .locals 7
    .parameter "username"

    .prologue
    .line 712
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 714
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 715
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 716
    const/4 v5, 0x1

    .line 719
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return v5

    .line 714
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 719
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1863
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2016
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    return-void
.end method

.method private logoutAllSessions()V
    .locals 2

    .prologue
    .line 1708
    const-string v0, "logoutAllSessions"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1709
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveMainEndpoint()V

    .line 1713
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1715
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1721
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1722
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->logout()V

    goto :goto_0

    .line 1717
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1724
    :cond_0
    return-void
.end method

.method private logoutAndRemoveMainEndpoint()V
    .locals 2

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1700
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logout()V

    .line 1702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 1704
    :cond_0
    monitor-exit v1

    .line 1705
    return-void

    .line 1704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logoutAndRemoveObsoleteEndpoints()V
    .locals 20

    .prologue
    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 745
    .local v8, accounts:[Landroid/accounts/Account;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v13, endpointsToBeClosed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 748
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 749
    .local v9, connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v18

    .line 750
    .local v18, username:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->accountsContainsUsername([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v14

    .line 751
    .local v14, found:Z
    if-nez v14, :cond_0

    .line 752
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 756
    .end local v9           #connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v14           #found:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #username:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 759
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v19, whereClauseSB:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 761
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 762
    .local v17, numEndpointsToClose:I
    if-lez v17, :cond_4

    .line 763
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 769
    const/4 v15, 0x0

    .line 770
    .local v15, i:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 771
    .local v12, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logout()V

    .line 773
    if-lez v15, :cond_2

    .line 774
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_2
    const-string v2, "username==?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v15

    .line 778
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 781
    .end local v12           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 785
    .local v5, whereClause:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 791
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_5

    .line 792
    const-string v2, "logoutAndRemoveObsoleteAccounts"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logEmptyCursor(Ljava/lang/String;)V

    .line 808
    .end local v5           #whereClause:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v15           #i:I
    :cond_4
    :goto_2
    return-void

    .line 796
    .restart local v5       #whereClause:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v15       #i:I
    :cond_5
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 801
    .local v11, deleted:I
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logoutAndRemoveObsoleteAccounts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " accounts deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 806
    .end local v11           #deleted:I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private maybeCreateMainEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1375
    if-nez p1, :cond_0

    .line 1376
    const-string v0, "createMainEndpoint: no account"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1411
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v0

    if-gez v0, :cond_1

    .line 1382
    const-string v0, "createMainEndpoint: port is negative"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1387
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1388
    const-string v0, "createMainEndpoint: bkgnd data OFF"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1392
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 1394
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1395
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1396
    monitor-exit v1

    goto :goto_0

    .line 1398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1400
    const-string v0, "createMainEndpoint"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    .line 1403
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setMainEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1404
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 1405
    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1409
    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setConnectionError(I)Z

    .line 1410
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->login()V

    goto :goto_0
.end method

.method private notifyServiceStarted()V
    .locals 2

    .prologue
    .line 996
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.MCS_CONNECTION_SERVICE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;)V

    .line 998
    return-void
.end method

.method private reconcileGTalkAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 850
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconcileGTalkAccount for username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 854
    :cond_0
    if-nez p1, :cond_2

    .line 856
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 861
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->deleteAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 5
    .parameter "endpoint"

    .prologue
    .line 250
    instance-of v3, p1, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v3, :cond_1

    .line 251
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "refreshAuthToken for AndroidEndpoint"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 276
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 255
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, username:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, oldToken:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 264
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private removeProviders()V
    .locals 2

    .prologue
    .line 1363
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "removeProviders"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1365
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeBuiltInProviders()V

    .line 1367
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeRawXmlIqProviders()V

    .line 1368
    return-void
.end method

.method private resetOnGservicesChange()V
    .locals 5

    .prologue
    .line 1280
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1281
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1282
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1288
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1290
    .local v2, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1294
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1295
    .local v0, connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    goto :goto_0

    .line 1282
    .end local v0           #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1290
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 1297
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    :cond_0
    return-void
.end method

.method private sendDeviceIdleStatusForConnections(Z)V
    .locals 2
    .parameter "idle"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendDeviceIdleStatus(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 436
    return-void

    .line 434
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private setDeviceStorageLow(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    .line 447
    monitor-exit v1

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setIsUserIdle(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    .line 424
    monitor-exit p0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTalkForegroundState()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    const/4 v2, 0x1

    .line 2068
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    if-nez v0, :cond_0

    .line 2096
    :goto_0
    return-void

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2072
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2075
    new-instance v1, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;-><init>(Z)V

    .line 2076
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->setAccountId(J)V

    .line 2077
    const/4 v0, 0x0

    .line 2078
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 2079
    if-eqz v2, :cond_1

    .line 2080
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 2082
    :cond_1
    if-eqz v0, :cond_2

    .line 2084
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2085
    :catch_0
    move-exception v0

    .line 2086
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send foreground state caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public blockingGetFirstAccountUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 654
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 656
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 657
    const/4 v1, 0x0

    .line 659
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public doXMPPConnectionWriteLock()V
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2032
    return-void
.end method

.method public doXMPPConnectionWriteUnlock()V
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2036
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .parameter "fd"
    .parameter "out"
    .parameter "args"

    .prologue
    .line 280
    const/4 v12, 0x1

    .line 281
    .local v12, printLog:Z
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    const-string v15, "-nolog"

    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 282
    const/4 v12, 0x0

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 286
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 287
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string v15, "----- DEVICE STORAGE IS LOW -----"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    div-long v5, v15, v17

    .line 293
    .local v5, elapsed:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "android_id"

    const-wide/16 v17, 0x0

    invoke-static/range {v15 .. v18}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 295
    .local v3, androidId:J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time since service creation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "aid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-wide/16 v17, 0x0

    cmp-long v15, v3, v17

    if-nez v15, :cond_7

    const-string v15, "(INVALID AID!!!)"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "User idle timeout: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "s"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "User idle: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Protocol version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-byte v16, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    const-string v15, "RMQ2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->getShowDebugLogs()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 303
    const-string v15, "debug logs ON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 307
    .local v11, numEndpoints:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v15, :cond_3

    .line 308
    add-int/lit8 v11, v11, 0x1

    .line 310
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "num endpoints: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v2

    .line 313
    .local v2, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    if-eqz v2, :cond_4

    .line 314
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->dump(Ljava/io/PrintWriter;)V

    .line 319
    :cond_4
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->dump(Ljava/io/PrintWriter;)V

    .line 323
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->dump(Ljava/io/PrintWriter;)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v14

    .line 328
    .local v14, xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 329
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smack/XMPPConnection;->dump(Ljava/io/PrintWriter;)V

    .line 332
    const-string v15, "GTalkService"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 333
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smack/XMPPConnection;->dumpVerbose(Ljava/io/PrintWriter;)V

    .line 337
    :cond_5
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v15, :cond_6

    .line 339
    const-string v15, "### Main Endpoint ###"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->dump(Ljava/io/PrintWriter;)V

    .line 344
    :cond_6
    const/4 v8, 0x2

    .line 345
    .local v8, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #i:I
    .local v9, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 346
    .local v13, wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v7

    .line 349
    .local v7, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "### Endpoint ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") ###"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->dump(Ljava/io/PrintWriter;)V

    move v9, v8

    .line 352
    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_1

    .line 296
    .end local v2           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v7           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #numEndpoints:I
    .end local v13           #wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v14           #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :cond_7
    const-string v15, ""

    goto/16 :goto_0

    .line 354
    .restart local v2       #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .restart local v9       #i:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #numEndpoints:I
    .restart local v14       #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :cond_8
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->dump(Ljava/io/PrintWriter;)V

    .line 357
    if-eqz v12, :cond_9

    .line 358
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const-string v15, "### Log History ###"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/gtalkservice/Log;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    return-void

    .line 364
    .end local v2           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v3           #androidId:J
    .end local v5           #elapsed:J
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #numEndpoints:I
    .end local v14           #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v15
.end method

.method public getAccountForAndroidId()Lcom/google/android/gsf/gtalkservice/Account;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 671
    .local v1, androidId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@mcs.android.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, username:Ljava/lang/String;
    cmp-long v5, v1, v7

    if-nez v5, :cond_1

    .line 674
    const/16 v5, 0x9

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 675
    const-string v5, "GTalkService"

    const-string v6, "getAccountForAndroidId: get ANDROID_ID returned 0!"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    return-object v0

    .line 679
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSecurityTokenForAndroidId()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 683
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountForAndroidId: aid username="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 686
    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v4, v3, v5, v6}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 688
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsOkToConnectToMcs()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1808
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1817
    :cond_0
    :goto_0
    return v0

    .line 1814
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1817
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMainEndpoint()Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .locals 2

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    monitor-exit v1

    return-object v0

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    return-object v0
.end method

.method public getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    return-object v0
.end method

.method public getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    return-object v0
.end method

.method public getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    return-object v0
.end method

.method public getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public handleDeviceStorageLow()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 454
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    .line 455
    return-void
.end method

.method public handleDeviceStorageOk()V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 460
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 461
    return-void
.end method

.method public handleGservicesSettingChanged()V
    .locals 4

    .prologue
    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 471
    :cond_0
    monitor-exit p0

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUserIdle()Z
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    monitor-exit p0

    return v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyActiveChatSessionsOfChange(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V
    .locals 8
    .parameter "entry"

    .prologue
    .line 1846
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1848
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1849
    .local v3, wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1850
    .local v1, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->getAccountId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v4, :cond_0

    .line 1852
    check-cast v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .end local v1           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 1854
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyActiveChatSessionsOfChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1858
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1860
    return-void
.end method

.method public notifyActiveChatSessionsOfChanges(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1840
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;

    .line 1841
    .local v0, entry:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyActiveChatSessionsOfChange(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V

    goto :goto_0

    .line 1843
    .end local v0           #entry:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 1253
    const-class v0, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 1257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 915
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->queryLoggingLevel()V

    .line 916
    const-string v0, "GTalkService"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 918
    :cond_0
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 920
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    .line 922
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_send_app_foreground_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    .line 925
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    .line 927
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 929
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 931
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 932
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdFromGservices(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setIncludeStreamId(Z)V

    .line 934
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getRmqAckIntervalFromGservices(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setAckingInterval(I)V

    .line 936
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setMessageQueueCallbacks(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;)V

    .line 938
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    .line 940
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 942
    new-instance v0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    const-string v1, "ac2dm"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    .line 944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 946
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    .line 948
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    .line 952
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 953
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;->start()V

    .line 954
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 955
    monitor-enter p0

    .line 957
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 963
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initProviders()V

    .line 965
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 966
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 967
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 972
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 976
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 979
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 983
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 984
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    .line 987
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyServiceStarted()V

    .line 989
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 990
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 991
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleScreenOff()V

    .line 993
    :cond_3
    return-void

    .line 958
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1236
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1237
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1239
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    .line 1240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 1242
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1244
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->onServiceDestroyed()V

    .line 1246
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->removeProviders()V

    .line 1248
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1249
    return-void
.end method

.method public onGotBatchPresence()V
    .locals 5

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 396
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 397
    .local v1, screenIsOn:Z
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGotBatchPresence but idle, screenIsOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    if-eqz v1, :cond_1

    .line 400
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    .line 405
    .end local v0           #pm:Landroid/os/PowerManager;
    .end local v1           #screenIsOn:Z
    :cond_0
    :goto_0
    return-void

    .line 402
    .restart local v0       #pm:Landroid/os/PowerManager;
    .restart local v1       #screenIsOn:Z
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections(Z)V

    goto :goto_0
.end method

.method public onSentBatchPresenceRequest()V
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "GTalkService"

    const-string v1, "onSentBatchPresenceRequest but user idle"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V

    .line 413
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1002
    if-eqz p1, :cond_0

    .line 1003
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1005
    const-string v1, "com.google.android.gtalkservice.intent.SEND_IQ_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendIqStanzaIntent(Landroid/content/Intent;)V

    .line 1031
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1007
    :cond_1
    const-string v1, "com.google.android.gtalkservice.intent.SEND_MESSAGE_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1008
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendMessageStanzaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1009
    :cond_2
    const-string v1, "com.google.android.gtalkservice.intent.SEND_PRESENCE_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1010
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendPresenceStanzaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1011
    :cond_3
    const-string v1, "com.google.android.gtalkservice.intent.CREATE_XMPP_ENDPOINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1012
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleCreateXmppEndpoint(Landroid/content/Intent;)V

    goto :goto_0

    .line 1013
    :cond_4
    const-string v1, "com.google.android.gtalkservice.intent.SEND_XMPP_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1014
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppMessage(Landroid/content/Intent;)V

    goto :goto_0

    .line 1015
    :cond_5
    const-string v1, "com.google.android.gtalkservice.intent.SEND_XMPP_PRESENCE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1016
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppPresence(Landroid/content/Intent;)V

    goto :goto_0

    .line 1017
    :cond_6
    const-string v1, "com.google.android.gtalkservice.intent.SEND_XMPP_IQ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1018
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppIq(Landroid/content/Intent;)V

    goto :goto_0

    .line 1019
    :cond_7
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1020
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handlePackageInstalled()V

    goto :goto_0

    .line 1021
    :cond_8
    const-string v1, "com.google.android.c2dm.intent.SEND_DATA_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isD2cmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendDataMessageStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 1262
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1263
    const/4 v0, 0x1

    return v0
.end method

.method public removeConnection(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V
    .locals 2
    .parameter "wrapper"

    .prologue
    .line 1727
    if-nez p1, :cond_0

    .line 1737
    :goto_0
    return-void

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public sendHeartbeatToServer()V
    .locals 2

    .prologue
    .line 1826
    const-string v0, "com.google.android.gtalkservice.permission.SEND_HEARTBEAT"

    const-string v1, "Need SEND_HEART_BEAT permission"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-nez v0, :cond_0

    .line 1831
    const-string v0, "GTalkService"

    const-string v1, "sendHeartbeatToServer: main endpoint is null"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :goto_0
    return-void

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendHeartbeatToServer()Z

    goto :goto_0
.end method

.method public setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 2024
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXMPPConnection: connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 2027
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 2028
    return-void
.end method
