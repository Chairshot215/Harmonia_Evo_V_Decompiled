.class Lcom/google/android/videochat/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Lcom/google/android/videochat/LibjingleEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/CallManager$WifiStateReceiver;,
        Lcom/google/android/videochat/CallManager$NetworkStateReceiver;,
        Lcom/google/android/videochat/CallManager$CallBoundaryCallback;,
        Lcom/google/android/videochat/CallManager$CallStatistics;,
        Lcom/google/android/videochat/CallManager$StatsUpdate;,
        Lcom/google/android/videochat/CallManager$Mode;
    }
.end annotation


# static fields
.field private static WAIT_FOR_WIFI_RETRY_INTERVAL:I

.field private static WAIT_FOR_WIFI_TIMEOUT:I

.field private static sInstance:Lcom/google/android/videochat/CallManager;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mAppCallStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

.field private mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

.field private mCallStateListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/videochat/CallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLoudestAudioSsrc:I

.field private mCurrentVideoSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;"
        }
    .end annotation
.end field

.field private mEnginePrepared:Z

.field private mInCall:Z

.field private mInCallRemoteJid:Ljava/lang/String;

.field private mIncomingCallRemoteJid:Ljava/lang/String;

.field private mInitiatingCall:Z

.field private mLastLibjingleCallStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/videochat/CallState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLibjingleCallStatisticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/videochat/CallManager$CallStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mLibjingle:Lcom/google/android/videochat/Libjingle;

.field private mLibjingleEventHandler:Lcom/google/android/videochat/LibjingleEventHandler;

.field private mLocalHandler:Landroid/os/Handler;

.field private final mLogLibjinglePackets:Z

.field private mNeedToResolveRemoteJid:Z

.field private mNetworkStateReceiver:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

.field private mPendingInitiateSessionId:Ljava/lang/String;

.field private mProcessingTerminateCallForNetworkLoss:Z

.field private mRandomGenerator:Ljava/util/Random;

.field private mRemoteJidLocalJidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReportDeclineJids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReportTerminateJids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/google/android/videochat/VideoChatService;

.field private mSessionIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartWaitForWifiTime:J

.field private mSuppressedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateReceiver:Lcom/google/android/videochat/CallManager$WifiStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/videochat/CallManager;->sInstanceLock:Ljava/lang/Object;

    .line 753
    const/16 v0, 0x2710

    sput v0, Lcom/google/android/videochat/CallManager;->WAIT_FOR_WIFI_TIMEOUT:I

    .line 754
    const/16 v0, 0x3e8

    sput v0, Lcom/google/android/videochat/CallManager;->WAIT_FOR_WIFI_RETRY_INTERVAL:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/videochat/VideoChatService;)V
    .locals 12
    .parameter "service"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mRandomGenerator:Ljava/util/Random;

    .line 171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    .line 173
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    .line 182
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mCurrentAudioSources:Ljava/util/Set;

    .line 183
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mCurrentVideoSources:Ljava/util/Set;

    .line 184
    iput v9, p0, Lcom/google/android/videochat/CallManager;->mCurrentLoudestAudioSsrc:I

    .line 755
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/google/android/videochat/CallManager;->mStartWaitForWifiTime:J

    .line 1360
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mSuppressedSessions:Ljava/util/List;

    .line 1639
    iput-boolean v9, p0, Lcom/google/android/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    .line 1655
    new-instance v6, Lcom/google/android/videochat/CallManager$3;

    invoke-direct {v6, p0}, Lcom/google/android/videochat/CallManager$3;-><init>(Lcom/google/android/videochat/CallManager;)V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

    .line 229
    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->initHandlers()V

    .line 230
    iput-object p1, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    .line 231
    iput-object p1, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    .line 232
    new-instance v6, Lcom/google/android/videochat/Libjingle;

    iget-object v7, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/videochat/LibjingleEventHandler;

    invoke-direct {v6, v7, v8}, Lcom/google/android/videochat/Libjingle;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    .line 233
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v6}, Lcom/google/android/videochat/Libjingle;->init()V

    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, ecSupported:Z
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    const-string v7, "ec_supported"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, ecKey:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 238
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, ecKeySplit:[Ljava/lang/String;
    array-length v6, v1

    if-ne v6, v10, :cond_1

    .line 240
    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, ecValue:Ljava/lang/String;
    const-string v6, "yes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "true"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 242
    :cond_0
    const/4 v2, 0x1

    .line 246
    .end local v1           #ecKeySplit:[Ljava/lang/String;
    .end local v3           #ecValue:Ljava/lang/String;
    :cond_1
    const-string v7, "vclib:CallManager"

    if-eqz v2, :cond_3

    const-string v6, "device ec supported"

    :goto_0
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v6, v2}, Lcom/google/android/videochat/Libjingle;->setDeviceHasEC(Z)V

    .line 249
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mAppCallStorageMap:Ljava/util/Map;

    .line 250
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    .line 251
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    .line 252
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    .line 253
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mRemoteJidLocalJidMap:Ljava/util/HashMap;

    .line 254
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    .line 255
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 256
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x3

    const-string v8, "VideoChatWifiLock"

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 258
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 259
    new-instance v6, Lcom/google/android/videochat/CallAudioHelper;

    iget-object v7, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/videochat/CallManager$1;

    invoke-direct {v9, p0}, Lcom/google/android/videochat/CallManager$1;-><init>(Lcom/google/android/videochat/CallManager;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/videochat/CallAudioHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    .line 267
    const-string v6, "talk.libjinglepackets"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    or-int/lit8 v6, v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/videochat/CallManager;->mLogLibjinglePackets:Z

    .line 270
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/videochat/util/WifiPolicyUtil;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 271
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .local v5, wifiStateFilter:Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    new-instance v6, Lcom/google/android/videochat/CallManager$WifiStateReceiver;

    invoke-direct {v6, p0, v11}, Lcom/google/android/videochat/CallManager$WifiStateReceiver;-><init>(Lcom/google/android/videochat/CallManager;Lcom/google/android/videochat/CallManager$1;)V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/videochat/CallManager$WifiStateReceiver;

    .line 275
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/videochat/CallManager$WifiStateReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    .end local v5           #wifiStateFilter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v4, networkStateFilter:Landroid/content/IntentFilter;
    new-instance v6, Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    invoke-direct {v6, p0, v11}, Lcom/google/android/videochat/CallManager$NetworkStateReceiver;-><init>(Lcom/google/android/videochat/CallManager;Lcom/google/android/videochat/CallManager$1;)V

    iput-object v6, p0, Lcom/google/android/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    .line 280
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    return-void

    .line 246
    .end local v4           #networkStateFilter:Landroid/content/IntentFilter;
    :cond_3
    const-string v6, "no device ec"

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/videochat/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/videochat/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->clearPendingInitiateFlag()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/google/android/videochat/CallManager;->declineDisallowedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/google/android/videochat/CallManager;->handleApprovedIncomingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/videochat/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->postFatalNetworkLoss()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/videochat/CallManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/videochat/CallManager;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->terminateCall(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/videochat/CallManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/videochat/CallManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->getMappedLocalJid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/videochat/CallManager;)Lcom/google/android/videochat/Libjingle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/videochat/CallManager;->broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/videochat/CallManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->isPendingInitiate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/videochat/CallManager;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/videochat/CallManager;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/videochat/CallManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/videochat/CallManager;->mStartWaitForWifiTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/videochat/CallManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/google/android/videochat/CallManager;->mStartWaitForWifiTime:J

    return-wide p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/google/android/videochat/CallManager;->WAIT_FOR_WIFI_TIMEOUT:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/google/android/videochat/CallManager;->WAIT_FOR_WIFI_RETRY_INTERVAL:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/videochat/CallManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallEnded(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->getOutputReceiverComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1278
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.videochat.ACTION_CALL_ENDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1280
    const-string v0, "local_bare_jid"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string v0, "remote_bare_jid"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    const-string v0, "is_video"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1283
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1284
    return-void
.end method

.method private broadcastCallInProgress(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->getOutputReceiverComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1292
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.videochat.ACTION_CALL_IN_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1294
    const-string v0, "local_bare_jid"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    const-string v0, "remote_bare_jid"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v0, "is_video"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1298
    return-void
.end method

.method private broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->getOutputReceiverComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1263
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.videochat.ACTION_END_CAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1265
    const-string v0, "local_bare_jid"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    const-string v0, "remote_bare_jid"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const-string v0, "is_video"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1268
    const-string v0, "end_cause"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1269
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1270
    return-void
.end method

.method private broadcastMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->getOutputReceiverComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.videochat.ACTION_MISSED_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1248
    const-string v0, "local_bare_jid"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const-string v0, "remote_bare_jid"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const-string v0, "is_video"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    const-string v0, "no_wifi"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1252
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1253
    return-void
.end method

.method private broadcastOutgoingStanza(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "type"
    .parameter "localBareJid"
    .parameter "stanza"

    .prologue
    .line 651
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v2}, Lcom/google/android/videochat/VideoChatService;->getOutputReceiverComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 653
    .local v1, receiverClass:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.videochat.ACTION_OUTGOING_STANZA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 655
    const-string v2, "type"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string v2, "local_bare_jid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string v2, "stanza"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 660
    return-void
.end method

.method private static calculateMedian(Ljava/util/ArrayList;)F
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 1683
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1684
    .local v2, size:I
    if-nez v2, :cond_0

    .line 1685
    const/4 v4, 0x0

    .line 1700
    :goto_0
    return v4

    .line 1688
    :cond_0
    new-array v3, v2, [F

    .line 1689
    .local v3, values:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1690
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v0

    .line 1689
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1693
    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([F)V

    .line 1694
    div-int/lit8 v1, v2, 0x2

    .line 1695
    .local v1, middle:I
    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1697
    aget v4, v3, v1

    goto :goto_0

    .line 1700
    :cond_2
    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    aget v5, v3, v1

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method private callStarting(Ljava/lang/String;)V
    .locals 5
    .parameter "remoteJid"

    .prologue
    const/4 v4, 0x1

    .line 1320
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/videochat/CallManager;->mInitiatingCall:Z

    .line 1321
    iput-boolean v4, p0, Lcom/google/android/videochat/CallManager;->mInCall:Z

    .line 1322
    const/4 v1, 0x0

    .line 1323
    .local v1, stats:Lcom/google/android/videochat/CallManager$CallStatistics;
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v3

    .line 1324
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/videochat/CallManager$CallStatistics;

    move-object v1, v0

    .line 1325
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    if-eqz v1, :cond_0

    .line 1327
    iput-boolean v4, v1, Lcom/google/android/videochat/CallManager$CallStatistics;->mCallAccepted:Z

    .line 1329
    :cond_0
    return-void

    .line 1325
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private clearPendingInitiateFlag()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CallManager;->mPendingInitiateSessionId:Ljava/lang/String;

    .line 1348
    return-void
.end method

.method private declineCall(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "remoteJid"
    .parameter "reportDecline"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const-string v0, "declineCall: not initialized!"

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 509
    const/4 v0, 0x0

    .line 518
    :goto_0
    return v0

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "declineCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/Libjingle;->declineCall(Ljava/lang/String;)V

    .line 515
    if-eqz p2, :cond_1

    .line 516
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declineDisallowedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "sessionId"
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "isVideo"
    .parameter "missingWifi"

    .prologue
    .line 875
    invoke-static {p2}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, remoteBareJid:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/google/android/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z

    .line 879
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/google/android/videochat/CallManager;->broadcastMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 883
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->suppressClientUpdates(Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method private getCurrentSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Lcom/google/android/videochat/VideoChatService;)Lcom/google/android/videochat/CallManager;
    .locals 2
    .parameter "service"

    .prologue
    .line 220
    sget-object v1, Lcom/google/android/videochat/CallManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-object v0, Lcom/google/android/videochat/CallManager;->sInstance:Lcom/google/android/videochat/CallManager;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/google/android/videochat/CallManager;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallManager;-><init>(Lcom/google/android/videochat/VideoChatService;)V

    sput-object v0, Lcom/google/android/videochat/CallManager;->sInstance:Lcom/google/android/videochat/CallManager;

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    sget-object v0, Lcom/google/android/videochat/CallManager;->sInstance:Lcom/google/android/videochat/CallManager;

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMappedLocalJid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "remoteJid"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mRemoteJidLocalJidMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getPublicLibjingleCallState(I)I
    .locals 1
    .parameter "rawLibjingleCallState"

    .prologue
    const/4 v0, -0x1

    .line 1002
    packed-switch p1, :pswitch_data_0

    .line 1017
    :goto_0
    :pswitch_0
    return v0

    .line 1004
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1005
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1006
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1007
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1010
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 1011
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 1013
    :pswitch_7
    const/16 v0, 0xa

    goto :goto_0

    .line 1014
    :pswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 1015
    :pswitch_9
    const/16 v0, 0xc

    goto :goto_0

    .line 1016
    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    .line 1002
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private handleApprovedIncomingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V
    .locals 8
    .parameter "sessionId"
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "isVideo"
    .parameter "isSecure"
    .parameter "existingCall"

    .prologue
    .line 854
    const-string v0, "vclib:CallManager"

    const-string v1, "handleApprovedIncomingCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatService;->getOutputReceiverComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 857
    .local v7, receiverComponent:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.android.videochat.ACTION_INCOMING_CALL"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 859
    const-string v0, "remote_jid"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    const-string v0, "local_bare_jid"

    invoke-virtual {v6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string v0, "is_video"

    invoke-virtual {v6, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 863
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 867
    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 870
    iput-object p2, p0, Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    .line 871
    return-void
.end method

.method private handleIncomingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .parameter "sessionId"
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "isVideo"
    .parameter "isSecure"

    .prologue
    .line 760
    invoke-static {p2}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 761
    .local v8, remoteBareJid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 764
    .local v7, existingCall:Lcom/google/android/videochat/CallState;
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->isReceivingIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/videochat/CallManager;->declineDisallowedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 768
    const-string v1, "vclib:CallManager"

    const-string v2, "Already in call. Declining new call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/videochat/util/WifiPolicyUtil;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 783
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 785
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/videochat/CallManager;->declineDisallowedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 787
    const-string v1, "vclib:CallManager"

    const-string v2, "Wifi disabled. Declining new call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :cond_2
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_4

    .line 791
    const-string v1, "vclib:CallManager"

    const-string v2, "Wi-Fi doesn\'t have a connection. Let\'s see if it can get one..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 795
    iget-wide v1, p0, Lcom/google/android/videochat/CallManager;->mStartWaitForWifiTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/videochat/CallManager;->mStartWaitForWifiTime:J

    .line 799
    :cond_3
    new-instance v0, Lcom/google/android/videochat/CallManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/videochat/CallManager$2;-><init>(Lcom/google/android/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V

    .line 840
    .local v0, retryRunnable:Ljava/lang/Runnable;
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->setPendingInitiateFlag(Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    sget v2, Lcom/google/android/videochat/CallManager;->WAIT_FOR_WIFI_RETRY_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0           #retryRunnable:Ljava/lang/Runnable;
    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 848
    invoke-direct/range {v1 .. v7}, Lcom/google/android/videochat/CallManager;->handleApprovedIncomingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/videochat/CallState;)V

    goto :goto_0
.end method

.method private initHandlers()V
    .locals 2

    .prologue
    .line 287
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Lcom/google/android/videochat/LibjingleEventHandler;

    invoke-direct {v1, v0}, Lcom/google/android/videochat/LibjingleEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/videochat/LibjingleEventHandler;

    .line 289
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/videochat/LibjingleEventHandler;

    invoke-virtual {v1, p0}, Lcom/google/android/videochat/LibjingleEventHandler;->setCallback(Lcom/google/android/videochat/LibjingleEventCallback;)V

    .line 299
    return-void

    .line 290
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    new-instance v1, Lcom/google/android/videochat/LibjingleEventHandler;

    invoke-direct {v1, v0}, Lcom/google/android/videochat/LibjingleEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/videochat/LibjingleEventHandler;

    .line 292
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    goto :goto_0

    .line 294
    :cond_1
    new-instance v1, Lcom/google/android/videochat/LibjingleEventHandler;

    invoke-direct {v1}, Lcom/google/android/videochat/LibjingleEventHandler;-><init>()V

    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/videochat/LibjingleEventHandler;

    .line 295
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private initializeStats(Ljava/lang/String;)V
    .locals 3
    .parameter "remoteJid"

    .prologue
    .line 1332
    new-instance v0, Lcom/google/android/videochat/CallManager$CallStatistics;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CallManager$CallStatistics;-><init>(Lcom/google/android/videochat/CallManager;)V

    .line 1333
    .local v0, stats:Lcom/google/android/videochat/CallManager$CallStatistics;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mCallStartTime:J

    .line 1334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mCallElapsedRealtimeAtStart:J

    .line 1335
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mSessionId:Ljava/lang/String;

    .line 1336
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v2

    .line 1337
    :try_start_0
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    monitor-exit v2

    .line 1339
    return-void

    .line 1338
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isPendingInitiate(Ljava/lang/String;)Z
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 1357
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mPendingInitiateSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReceivingIncomingCall()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuppressed(Ljava/lang/String;)Z
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mSuppressedSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1803
    const/4 v0, 0x3

    const-string v1, "vclib:CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CallManager] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/videochat/util/LogUtil;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 1804
    return-void
.end method

.method private logCallPerfStats(Ljava/lang/String;IZ)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v1

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallManager$CallStatistics;

    .line 1134
    if-nez v0, :cond_0

    .line 1135
    monitor-exit v1

    .line 1236
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1142
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1144
    iget-wide v5, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mCallElapsedRealtimeAtStart:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<sta:callPerfStats sessionId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " remoteUser=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" startTime=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mCallStartTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" callLength=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" callAccepted=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mCallAccepted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" callErrorCode=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" terminateCode=\"-1\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callType=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1162
    if-eqz p3, :cond_2

    .line 1163
    const-string v1, "video"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :goto_1
    const-string v1, "\" xmlns:sta=\"google:call-perf-stats\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    iget-object v6, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    monitor-enter v6

    .line 1169
    :try_start_1
    iget-object v1, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v1}, Lcom/google/android/videochat/util/CircularArray;->count()I

    move-result v7

    .line 1170
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v7, :cond_5

    .line 1171
    iget-object v1, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v1, v4}, Lcom/google/android/videochat/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/videochat/CallManager$StatsUpdate;

    .line 1173
    const-string v2, "unk"

    .line 1174
    iget-object v2, v1, Lcom/google/android/videochat/CallManager$StatsUpdate;->mStatsObject:Lcom/google/android/videochat/Stats;

    iget v2, v2, Lcom/google/android/videochat/Stats;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1176
    iget-object v2, v1, Lcom/google/android/videochat/CallManager$StatsUpdate;->mStatsObject:Lcom/google/android/videochat/Stats;

    check-cast v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;

    .line 1178
    iget v3, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->mediaType:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    .line 1179
    const-string v3, "rtp"

    .line 1185
    :goto_3
    const-string v8, "<sta:dataPoint timeStamp=\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/google/android/videochat/CallManager$StatsUpdate;->mSecondsSinceCallStart:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\"><sta:connection flags=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->flags:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "rtt=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->rtt:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "totalBytesSent=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->sentBytes:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "totalBytesRecv=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->receivedBytes:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bytesSecondSent=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->sentBitrate:I

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bytesSecondRecv=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->receivedBitrate:I

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\">"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    const-string v1, "<sta:candidate endpoint=\"local\" address=\""

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localAddress:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" name=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" type=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localType:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" protocol=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localProtocol:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\"/>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const-string v1, "<sta:candidate endpoint=\"remote\" address=\""

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" name=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" type=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" protocol=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    const-string v1, "</sta:connection></sta:dataPoint>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1170
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    .line 1138
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1165
    :cond_2
    const-string v1, "audio"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1180
    :cond_3
    :try_start_3
    iget v3, v2, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->mediaType:I

    if-nez v3, :cond_4

    .line 1181
    const-string v3, "video_rtp"

    goto/16 :goto_3

    .line 1183
    :cond_4
    const-string v3, "unknown"

    goto/16 :goto_3

    .line 1231
    :cond_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1233
    const-string v0, "</sta:callPerfStats>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->sendIQStanzaWithExtension(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1231
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private postFatalNetworkLoss()V
    .locals 3

    .prologue
    .line 1642
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

    monitor-enter v1

    .line 1646
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    if-nez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    .line 1652
    :goto_0
    monitor-exit v1

    .line 1653
    return-void

    .line 1650
    :cond_0
    const-string v0, "vclib:CallManager"

    const-string v2, "Already processing a fatal network loss report. Drop this one."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prepareEngine(Ljava/lang/String;)V
    .locals 1
    .parameter "localBareJid"

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mEnginePrepared:Z

    if-eqz v0, :cond_0

    .line 352
    monitor-exit p0

    .line 360
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mEnginePrepared:Z

    .line 357
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->prepareJingleInfo(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/Libjingle;->prepareEngine(Ljava/lang/String;)V

    .line 359
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prepareJingleInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "jid"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mService:Lcom/google/android/videochat/VideoChatService;

    invoke-static {v1}, Lcom/google/android/videochat/JingleInfoManager;->getJingleInfoStanza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, jingleInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    const-string v1, "vclib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### prepareJingleInfo: use stored jingle info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/google/android/videochat/CallManager;->handleJingleInfoStanza(Ljava/lang/String;)V

    .line 381
    :cond_0
    return-void
.end method

.method private recordAndReportCallStateUpdate()V
    .locals 6

    .prologue
    .line 961
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 988
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, inCallBareJid:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    monitor-enter v3

    .line 968
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallState;

    .line 969
    .local v0, callState:Lcom/google/android/videochat/CallState;
    if-nez v0, :cond_1

    .line 971
    monitor-exit v3

    goto :goto_0

    .line 987
    .end local v0           #callState:Lcom/google/android/videochat/CallState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 974
    .restart local v0       #callState:Lcom/google/android/videochat/CallState;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 975
    iput-object v1, v0, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 976
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/videochat/CallState;->video:Z

    .line 977
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->isMute()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/videochat/CallState;->mute:Z

    .line 978
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/videochat/Libjingle;->isSecure(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/videochat/CallState;->secure:Z

    .line 979
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->getAudioDeviceState()Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 980
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->getAudioDevices()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    .line 983
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {v0}, Lcom/google/android/videochat/CallState;->clone()Lcom/google/android/videochat/CallState;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/videochat/CallManager;->sendCallStateUpdate(Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    .line 987
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 916
    invoke-static {p3}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 917
    iget-object v9, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    monitor-enter v9

    .line 918
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/videochat/CallManager;->getPublicLibjingleCallState(I)I

    move-result v2

    .line 919
    if-ltz v2, :cond_0

    .line 920
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallState;

    .line 921
    if-nez v0, :cond_1

    .line 922
    new-instance v0, Lcom/google/android/videochat/CallState;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallAudioHelper;->isMute()Z

    move-result v4

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallAudioHelper;->getAudioDeviceState()Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallAudioHelper;->getAudioDevices()Ljava/util/Set;

    move-result-object v7

    move-object v1, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/videochat/CallState;-><init>(Ljava/lang/String;IZZZLcom/google/android/videochat/CallState$AudioDeviceState;Ljava/util/Set;)V

    .line 940
    :goto_0
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->isSuppressed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 944
    invoke-virtual {v0}, Lcom/google/android/videochat/CallState;->clone()Lcom/google/android/videochat/CallState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/videochat/CallManager;->sendCallStateUpdate(Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    .line 950
    :cond_0
    :goto_1
    monitor-exit v9

    .line 951
    return-void

    .line 931
    :cond_1
    iput-object p3, v0, Lcom/google/android/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 932
    iput-object v8, v0, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 933
    iput v2, v0, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    .line 934
    iput-boolean p4, v0, Lcom/google/android/videochat/CallState;->video:Z

    .line 935
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallAudioHelper;->isMute()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/videochat/CallState;->mute:Z

    .line 936
    iput-boolean p5, v0, Lcom/google/android/videochat/CallState;->secure:Z

    .line 937
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallAudioHelper;->getAudioDeviceState()Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 938
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v1}, Lcom/google/android/videochat/CallAudioHelper;->getAudioDevices()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    goto :goto_0

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 946
    :cond_2
    :try_start_1
    const-string v0, "vclib:CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suppressed call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and remoteJid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recordRemoteJidLocalJidPair(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mRemoteJidLocalJidMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    return-void
.end method

.method private releaseEngine()V
    .locals 1

    .prologue
    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mEnginePrepared:Z

    if-nez v0, :cond_0

    .line 365
    const-string v0, "releaseEngine: mEnginePrepared=false, bail..."

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 366
    monitor-exit p0

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mEnginePrepared:Z

    .line 370
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/videochat/Libjingle;->releaseEngine()V

    .line 371
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private replyToCallStateUpdateRequest(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 887
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    if-nez v0, :cond_0

    .line 912
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 896
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallState;

    .line 897
    if-eqz v0, :cond_1

    .line 899
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->isMute()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/videochat/CallState;->mute:Z

    .line 901
    invoke-virtual {v0}, Lcom/google/android/videochat/CallState;->clone()Lcom/google/android/videochat/CallState;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/videochat/CallManager;->sendCallStateUpdate(Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    .line 906
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mCurrentVideoSources:Ljava/util/Set;

    monitor-enter v1

    .line 909
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/videochat/CallManager;->sendChatRoomStateUpdate(ZLjava/lang/Object;)V

    .line 910
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 911
    invoke-direct {p0, v3, p1}, Lcom/google/android/videochat/CallManager;->sendLoudestSpeakerUpdate(ZLjava/lang/Object;)V

    goto :goto_0

    .line 904
    :cond_1
    :try_start_2
    const-string v0, "vclib:CallManager"

    const-string v2, "requestCallStateUpdate() failed: No record for inCallBareJid"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 910
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1539
    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    .line 1540
    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mInCall:Z

    .line 1541
    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mInitiatingCall:Z

    .line 1542
    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 1543
    iput-object v1, p0, Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    .line 1544
    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    .line 1545
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mAppCallStorageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1546
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/CameraManager;->reset()V

    .line 1547
    return-void
.end method

.method private sendCallPerfStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callPerfStanza"
    .parameter "remoteJid"
    .parameter "localBareJid"

    .prologue
    .line 601
    if-nez p3, :cond_0

    .line 602
    const-string v0, "vclib:CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCallPerfStanza: failed to find localJid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3, p1}, Lcom/google/android/videochat/CallManager;->broadcastOutgoingStanza(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendCallStateUpdate(Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 5
    .parameter "callState"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 1023
    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1027
    :try_start_0
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1029
    .local v2, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/videochat/CallStateListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/videochat/CallStateListener;

    .line 1030
    .local v1, listener:Lcom/google/android/videochat/CallStateListener;
    iget-object v3, p1, Lcom/google/android/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/google/android/videochat/CallStateListener;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    goto :goto_0

    .line 1033
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/videochat/CallStateListener;
    .end local v2           #listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/videochat/CallStateListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/videochat/CallStateListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    return-void
.end method

.method private sendChatRoomStateUpdate(ZLjava/lang/Object;)V
    .locals 5
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 1094
    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mCurrentAudioSources:Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 1095
    .local v2, unmodAudio:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mCurrentVideoSources:Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1096
    .local v3, unmodVideo:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/videochat/CallStateListener;

    .line 1097
    .local v1, listener:Lcom/google/android/videochat/CallStateListener;
    invoke-interface {v1, v2, v3, p1, p2}, Lcom/google/android/videochat/CallStateListener;->onChatRoomStateUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V

    goto :goto_0

    .line 1099
    .end local v1           #listener:Lcom/google/android/videochat/CallStateListener;
    :cond_0
    return-void
.end method

.method private sendIQStanzaWithExtension(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->getMappedLocalJid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<cli:iq to=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" type=\"get\" id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns:cli=\"jabber:client\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</cli:iq>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/videochat/CallManager;->sendCallPerfStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method private sendLoudestSpeakerUpdate(ZLjava/lang/Object;)V
    .locals 3
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 1108
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/videochat/CallStateListener;

    .line 1109
    .local v1, listener:Lcom/google/android/videochat/CallStateListener;
    iget v2, p0, Lcom/google/android/videochat/CallManager;->mCurrentLoudestAudioSsrc:I

    invoke-interface {v1, v2, p1, p2}, Lcom/google/android/videochat/CallStateListener;->onLoudestSpeakerUpdate(IZLjava/lang/Object;)V

    goto :goto_0

    .line 1112
    .end local v1           #listener:Lcom/google/android/videochat/CallStateListener;
    :cond_0
    return-void
.end method

.method private setPendingInitiateFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/google/android/videochat/CallManager;->mPendingInitiateSessionId:Ljava/lang/String;

    .line 1354
    return-void
.end method

.method private stripTempEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "rawRemoteJid"

    .prologue
    .line 747
    if-eqz p1, :cond_0

    const-string v0, "/videochat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 750
    .end local p1
    :cond_0
    return-object p1
.end method

.method private suppressClientUpdates(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mSuppressedSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    return-void
.end method

.method private terminateCall(Z)Z
    .locals 3
    .parameter "reportTerminate"

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 540
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/videochat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/Libjingle;->terminateCall(Ljava/lang/String;)V

    .line 546
    :goto_0
    if-eqz p1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    const/4 v0, 0x1

    .line 551
    :goto_1
    return v0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/Libjingle;->terminateCall(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private trackCallSessionId(Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1301
    iget-object v0, p1, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mId:Ljava/lang/String;

    .line 1302
    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {p1}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isTypeInitiate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string v1, "vclib:CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  for starting call with: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isTypeTerminate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string v1, "vclib:CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  for terminated call with: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unsuppressClientUpdates(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mSuppressedSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1376
    return-void
.end method

.method private updateRemoteJid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "sessionId"
    .parameter "remoteFullJid"

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIncomingMessage - resolve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 731
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v2, p2, p1}, Lcom/google/android/videochat/Libjingle;->updateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v3

    .line 734
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/videochat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, dummyJid:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallManager$CallStatistics;

    .line 736
    .local v0, callStats:Lcom/google/android/videochat/CallManager$CallStatistics;
    if-eqz v0, :cond_0

    .line 737
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    iput-object p2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 742
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    .line 744
    .end local v0           #callStats:Lcom/google/android/videochat/CallManager$CallStatistics;
    .end local v1           #dummyJid:Ljava/lang/String;
    :cond_1
    return-void

    .line 740
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public acceptCall(Ljava/lang/String;)Z
    .locals 2
    .parameter "remoteJid"

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    const-string v1, "acceptCall: not initialized!"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 492
    :goto_0
    return v0

    .line 486
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    .line 487
    iput-object p1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->callStarting(Ljava/lang/String;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/Libjingle;->acceptCall(Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addCallStateListener(Lcom/google/android/videochat/CallStateListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 570
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 571
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallStateListener;

    .line 572
    .local v0, csl:Lcom/google/android/videochat/CallStateListener;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    monitor-exit v3

    .line 579
    .end local v0           #csl:Lcom/google/android/videochat/CallStateListener;
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 578
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bindRenderer(ILcom/google/android/videochat/RemoteRenderer;)V
    .locals 2
    .parameter "ssrc"
    .parameter "renderer"

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mEnginePrepared:Z

    if-nez v0, :cond_0

    .line 315
    const-string v0, "vclib:CallManager"

    const-string v1, "Trying to bind renderer before libjingle has been prepared"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/videochat/Libjingle;->bindRenderer(ILcom/google/android/videochat/RemoteRenderer;)V

    goto :goto_0
.end method

.method public declineCall(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1709
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    const-string v0, "Stats history"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v1

    .line 1719
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallManager$CallStatistics;

    .line 1720
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    if-eqz v0, :cond_0

    .line 1727
    iget-object v7, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    monitor-enter v7

    .line 1728
    :try_start_1
    iget-object v1, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v1}, Lcom/google/android/videochat/util/CircularArray;->count()I

    move-result v8

    .line 1729
    if-lez v8, :cond_2

    .line 1730
    const-string v1, "Legend:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    const-string v1, "  Renderer -- overall fps, incoming fps, incoming rendered fps, incoming dropped fps"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    const-string v1, "  VideoMediaEngine -- received fps, w, h, sent fps, w, h"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    const-string v1, "  Connection -- local address, type, protocol, remote address, type protocol, received bitrate, sent bitrate"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    move v4, v3

    move v2, v3

    .line 1737
    :goto_1
    if-ge v4, v8, :cond_6

    .line 1738
    iget-object v1, v0, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v1, v4}, Lcom/google/android/videochat/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/videochat/CallManager$StatsUpdate;

    .line 1739
    new-instance v9, Ljava/util/Date;

    iget-wide v10, v1, Lcom/google/android/videochat/CallManager$StatsUpdate;->mTime:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 1741
    const-string v10, "unk"

    .line 1742
    iget-object v1, v1, Lcom/google/android/videochat/CallManager$StatsUpdate;->mStatsObject:Lcom/google/android/videochat/Stats;

    .line 1743
    iget v10, v1, Lcom/google/android/videochat/Stats;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    packed-switch v10, :pswitch_data_0

    move v1, v2

    .line 1737
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    .line 1720
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1745
    :pswitch_0
    :try_start_3
    check-cast v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;

    .line 1747
    iget v10, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->receivedFramerate:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    iget v10, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->sentFramerate:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -- VideoMediaEngine -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->receivedFramerate:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->receivedFrameWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->receivedFrameHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->sentFramerate:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->sentFrameWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v1, v1, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->sentFrameHeight:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    .line 1756
    goto :goto_2

    .line 1758
    :pswitch_1
    check-cast v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;

    .line 1760
    iget v2, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->mediaType:I

    if-nez v2, :cond_4

    const-string v2, "video"

    .line 1763
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -- Connection -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localAddress:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localProtocol:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteProtocol:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->receivedBitrate:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->sentBitrate:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    const-string v2, "relay"

    iget-object v9, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->localType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "relay"

    iget-object v1, v1, Lcom/google/android/videochat/Stats$ConnectionInfoStats;->remoteType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1775
    :cond_3
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1760
    :cond_4
    const-string v2, "audio"

    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 1777
    goto/16 :goto_2

    .line 1782
    :cond_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1783
    const-string v0, "Median video rates"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Receive FPS                 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/google/android/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      Send FPS                 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/google/android/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    invoke-static {p1}, Lcom/google/android/videochat/RendererManager;->dump(Ljava/io/PrintWriter;)V

    .line 1790
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    const-string v0, "Call info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "in call"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    remoteJid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "       secure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/videochat/Libjingle;->isSecure(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  using relay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1782
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1792
    :cond_7
    const-string v0, "initiating call"

    goto/16 :goto_4

    .line 1743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCallStorage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mAppCallStorageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedCallRemoteJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->stripTempEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCallStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1381
    invoke-static/range {p4 .. p4}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1382
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/google/android/videochat/Libjingle;->isSecure(Ljava/lang/String;)Z

    move-result v7

    .line 1383
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/google/android/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v6

    .line 1385
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->isPendingInitiate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1389
    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->clearPendingInitiateFlag()V

    .line 1390
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->suppressClientUpdates(Ljava/lang/String;)V

    .line 1393
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->getMappedLocalJid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1394
    if-nez v5, :cond_1

    .line 1395
    const-string v2, "vclib:CallManager"

    const-string v3, "call state change with a remoteJid from an unknown localJid"

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_1
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/Util;->isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1399
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/google/android/videochat/util/Util;->isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1403
    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    const/4 v2, 0x1

    move v3, v2

    .line 1405
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1533
    :cond_3
    :goto_1
    :pswitch_0
    return-void

    .line 1403
    :cond_4
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    .line 1409
    :pswitch_1
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->initializeStats(Ljava/lang/String;)V

    .line 1410
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    if-eqz v2, :cond_5

    .line 1411
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/videochat/CallManager$CallBoundaryCallback;->onInit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1413
    :cond_5
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->initAudio()V

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    .line 1415
    invoke-direct/range {v2 .. v7}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_1

    .line 1418
    :pswitch_2
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->initializeStats(Ljava/lang/String;)V

    .line 1419
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    if-eqz v2, :cond_6

    .line 1420
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    move-object/from16 v0, p4

    invoke-interface {v2, v0, v5, v6}, Lcom/google/android/videochat/CallManager$CallBoundaryCallback;->onInit(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1422
    :cond_6
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->initAudio()V

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    .line 1424
    invoke-direct/range {v2 .. v7}, Lcom/google/android/videochat/CallManager;->handleIncomingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1428
    :pswitch_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    .line 1429
    invoke-direct/range {v2 .. v7}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_1

    .line 1432
    :pswitch_4
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->callStarting(Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    .line 1434
    invoke-direct/range {v2 .. v7}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_1

    :pswitch_5
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    move v12, v6

    move v13, v7

    .line 1441
    invoke-direct/range {v8 .. v13}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 1442
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1444
    const/4 v2, 0x1

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/videochat/CallManager;->broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1446
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1450
    :pswitch_6
    const/4 v2, 0x0

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/videochat/CallManager;->broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    .line 1451
    invoke-direct/range {v2 .. v7}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1456
    :pswitch_7
    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/videochat/CallManager;->logCallPerfStats(Ljava/lang/String;IZ)V

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    move v12, v6

    move v13, v7

    .line 1457
    invoke-direct/range {v8 .. v13}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 1458
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1461
    const/4 v2, 0x1

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/videochat/CallManager;->broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1463
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1471
    :cond_7
    :goto_2
    if-eqz v3, :cond_3

    .line 1472
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->deinitAudio()V

    goto/16 :goto_1

    .line 1464
    :cond_8
    iget-boolean v2, p0, Lcom/google/android/videochat/CallManager;->mInitiatingCall:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1469
    const/4 v2, 0x0

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/videochat/CallManager;->broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_2

    .line 1476
    :pswitch_8
    move-object/from16 v0, p4

    move/from16 v1, p3

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/videochat/CallManager;->logCallPerfStats(Ljava/lang/String;IZ)V

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    move v12, v6

    move v13, v7

    .line 1477
    invoke-direct/range {v8 .. v13}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 1478
    const/4 v2, 0x2

    .line 1479
    iget-boolean v7, p0, Lcom/google/android/videochat/CallManager;->mInitiatingCall:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1483
    const/4 v2, 0x0

    .line 1485
    :cond_9
    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/videochat/CallManager;->broadcastEndCause(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1486
    if-eqz v3, :cond_3

    .line 1487
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->deinitAudio()V

    goto/16 :goto_1

    .line 1492
    :pswitch_9
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/videochat/util/WifiPolicyUtil;->wifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1493
    const-string v2, "Acquiring WiFi lock"

    invoke-direct {p0, v2}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1494
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1496
    :cond_a
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    if-eqz v2, :cond_b

    .line 1497
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    move-object/from16 v0, p4

    invoke-interface {v2, v0, v5, v6}, Lcom/google/android/videochat/CallManager$CallBoundaryCallback;->onConnect(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1499
    :cond_b
    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/videochat/CallManager;->broadcastCallInProgress(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p4

    .line 1501
    invoke-direct/range {v2 .. v7}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1504
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE_DEINIT remoteJid: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " mInCallRemoteJid: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1506
    if-eqz v3, :cond_c

    .line 1511
    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/videochat/CallManager;->broadcastCallEnded(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1513
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v2}, Lcom/google/android/videochat/CallAudioHelper;->deinitAudio()V

    :cond_c
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    move v12, v6

    move v13, v7

    .line 1516
    invoke-direct/range {v8 .. v13}, Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 1517
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->unsuppressClientUpdates(Ljava/lang/String;)V

    .line 1519
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    if-eqz v2, :cond_d

    .line 1520
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    move-object/from16 v0, p4

    invoke-interface {v2, v0, v5}, Lcom/google/android/videochat/CallManager$CallBoundaryCallback;->onDeinit(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :cond_d
    if-eqz v3, :cond_3

    .line 1526
    const-string v2, "Releasing WiFi lock if we had it"

    invoke-direct {p0, v2}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1527
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1528
    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->reset()V

    goto/16 :goto_1

    .line 1405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleIncomingMessage(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;)Z
    .locals 3
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "stanza"

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    const-string v0, "vclib:CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingMessage: not initialized, drop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    .line 687
    :goto_0
    return v0

    .line 671
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/CallManager;->recordRemoteJidLocalJidPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0, p3, p1}, Lcom/google/android/videochat/CallManager;->trackCallSessionId(Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p3}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isTypeInitiate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    invoke-direct {p0, p2}, Lcom/google/android/videochat/CallManager;->prepareEngine(Ljava/lang/String;)V

    .line 682
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mLogLibjinglePackets:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mInCall:Z

    if-nez v0, :cond_2

    .line 683
    const-string v0, "vclib:CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INCOMING] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    iget-object v1, p3, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/Libjingle;->processIncomingStanza(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x1

    goto :goto_0

    .line 678
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p3, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/android/videochat/CallManager;->updateRemoteJid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleJingleInfoStanza(Ljava/lang/String;)V
    .locals 3
    .parameter "stanza"

    .prologue
    .line 713
    const-string v0, "vclib:CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleJingleInfoStanza: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const-string v0, "vclib:CallManager"

    const-string v1, "##### handleJingleInfoStanza: libjingle not initialized!"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/Libjingle;->setJingleInfoStanza(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleLoudestSpeakerUpdate(I)V
    .locals 2
    .parameter "loudestAudioSsrc"

    .prologue
    .line 1103
    iput p1, p0, Lcom/google/android/videochat/CallManager;->mCurrentLoudestAudioSsrc:I

    .line 1104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/videochat/CallManager;->sendLoudestSpeakerUpdate(ZLjava/lang/Object;)V

    .line 1105
    return-void
.end method

.method public handleMediaSourcesUpdate(Lcom/google/android/videochat/MediaSources;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1060
    iget-object v2, p1, Lcom/google/android/videochat/MediaSources;->video:[Lcom/google/android/videochat/NamedSource;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got new video source:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/videochat/NamedSource;->nick:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/videochat/NamedSource;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/videochat/NamedSource;->usage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/google/android/videochat/NamedSource;->ssrc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", set="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v4, Lcom/google/android/videochat/NamedSource;->ssrcSet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", removed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, v4, Lcom/google/android/videochat/NamedSource;->removed:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1067
    :cond_0
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mCurrentVideoSources:Ljava/util/Set;

    monitor-enter v2

    .line 1070
    :try_start_0
    iget-object v3, p1, Lcom/google/android/videochat/MediaSources;->audio:[Lcom/google/android/videochat/NamedSource;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 1071
    iget-boolean v6, v5, Lcom/google/android/videochat/NamedSource;->removed:Z

    if-eqz v6, :cond_1

    .line 1072
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mCurrentAudioSources:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1070
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    :cond_1
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mCurrentAudioSources:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1077
    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/google/android/videochat/MediaSources;->video:[Lcom/google/android/videochat/NamedSource;

    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 1078
    iget-boolean v6, v5, Lcom/google/android/videochat/NamedSource;->removed:Z

    if-eqz v6, :cond_3

    .line 1079
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mCurrentVideoSources:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1077
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1081
    :cond_3
    iget-object v6, p0, Lcom/google/android/videochat/CallManager;->mCurrentVideoSources:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1084
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/videochat/CallManager;->sendChatRoomStateUpdate(ZLjava/lang/Object;)V

    .line 1087
    return-void
.end method

.method public handleMessageResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "original"
    .parameter "response"

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 692
    const-string v2, "handleMessageResponse: not initialized!"

    invoke-direct {p0, v2}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 710
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/videochat/CallManager;->mLogLibjinglePackets:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/videochat/CallManager;->mInCall:Z

    if-nez v2, :cond_1

    .line 697
    const-string v2, "vclib:CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INCOMING] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v2, :cond_2

    .line 701
    new-instance v1, Lcom/google/android/videochat/util/IqResponseParser;

    invoke-direct {v1, p2}, Lcom/google/android/videochat/util/IqResponseParser;-><init>(Ljava/lang/String;)V

    .line 702
    .local v1, responseParser:Lcom/google/android/videochat/util/IqResponseParser;
    new-instance v0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;

    invoke-direct {v0, p1}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, originalParser:Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;
    invoke-virtual {v1}, Lcom/google/android/videochat/util/IqResponseParser;->isValidIqResponse()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isValidJingleOrGingleStanza()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    iget-object v2, v0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mId:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/videochat/util/IqResponseParser;->mFrom:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/google/android/videochat/CallManager;->updateRemoteJid(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .end local v0           #originalParser:Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;
    .end local v1           #responseParser:Lcom/google/android/videochat/util/IqResponseParser;
    :cond_2
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/videochat/Libjingle;->processIqStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleOutgoingCallSignalingStanza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "stanza"
    .parameter "remoteJid"

    .prologue
    const/4 v7, 0x0

    .line 614
    invoke-direct {p0, p2}, Lcom/google/android/videochat/CallManager;->getMappedLocalJid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, localBareJid:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 616
    const-string v4, "vclib:CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleOutgoingCallSignalingStanza: failed to find localJid for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v4, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;

    invoke-direct {v4, p1}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, p2}, Lcom/google/android/videochat/CallManager;->trackCallSessionId(Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v4, :cond_1

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/videochat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, dummyJid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 631
    .local v2, pos:I
    const/4 v4, -0x1

    if-ne v4, v2, :cond_3

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Outgoing call signaling stanza missing dummy jid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 642
    .end local v0           #dummyJid:Ljava/lang/String;
    .end local v2           #pos:I
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/videochat/CallManager;->mLogLibjinglePackets:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/videochat/CallManager;->mInCall:Z

    if-nez v4, :cond_2

    .line 643
    const-string v4, "vclib:CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OUTGOING] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_2
    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v7, v1, p1}, Lcom/google/android/videochat/CallManager;->broadcastOutgoingStanza(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .restart local v0       #dummyJid:Ljava/lang/String;
    .restart local v2       #pos:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 635
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public handleStatsUpdate(Lcom/google/android/videochat/Stats;)V
    .locals 10
    .parameter "statsObject"

    .prologue
    .line 1039
    iget-object v2, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v2

    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/videochat/CallManager$CallStatistics;

    .line 1041
    .local v7, callStats:Lcom/google/android/videochat/CallManager$CallStatistics;
    monitor-exit v2

    .line 1043
    if-nez v7, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1041
    .end local v7           #callStats:Lcom/google/android/videochat/CallManager$CallStatistics;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1048
    .restart local v7       #callStats:Lcom/google/android/videochat/CallManager$CallStatistics;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v8, v7, Lcom/google/android/videochat/CallManager$CallStatistics;->mCallElapsedRealtimeAtStart:J

    sub-long/2addr v1, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v1, v8

    .line 1050
    .local v4, secondsSinceCallStart:J
    new-instance v0, Lcom/google/android/videochat/CallManager$StatsUpdate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/videochat/CallManager$StatsUpdate;-><init>(Lcom/google/android/videochat/CallManager;JJLcom/google/android/videochat/Stats;)V

    .line 1053
    .local v0, stats:Lcom/google/android/videochat/CallManager$StatsUpdate;
    iget-object v2, v7, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    monitor-enter v2

    .line 1054
    :try_start_1
    iget-object v1, v7, Lcom/google/android/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v1, v0}, Lcom/google/android/videochat/util/CircularArray;->add(Ljava/lang/Object;)V

    .line 1055
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public initiateCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/CallManager$Mode;)Z
    .locals 5
    .parameter "remoteJid"
    .parameter "localBareJid"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    const-string v1, "initiateCall: not initialized!"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 470
    :goto_0
    return v3

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 446
    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const-string v1, "initiateCall: already in a call"

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/videochat/CallManager;->mInitiatingCall:Z

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateCall for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lcom/google/android/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 458
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/CallManager;->recordRemoteJidLocalJidPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, p2}, Lcom/google/android/videochat/CallManager;->prepareEngine(Ljava/lang/String;)V

    .line 463
    iget-boolean v1, p0, Lcom/google/android/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v1, :cond_2

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/videochat"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 467
    :cond_2
    sget-object v1, Lcom/google/android/videochat/CallManager$Mode;->VOICE_ONLY:Lcom/google/android/videochat/CallManager$Mode;

    if-ne p3, v1, :cond_5

    move v1, v2

    :goto_2
    sget-object v4, Lcom/google/android/videochat/CallManager$Mode;->MUC_VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

    if-ne p3, v4, :cond_3

    const/4 v3, 0x2

    :cond_3
    or-int v0, v1, v3

    .line 469
    .local v0, callFlags:I
    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/videochat/Libjingle;->initiateCall(Ljava/lang/String;I)V

    move v3, v2

    .line 470
    goto :goto_0

    .end local v0           #callFlags:I
    :cond_4
    move v1, v3

    .line 458
    goto :goto_1

    :cond_5
    move v1, v3

    .line 467
    goto :goto_2
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mInCall:Z

    return v0
.end method

.method public isInOrInitiatingCall()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mInCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/videochat/CallManager;->mInitiatingCall:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/videochat/Libjingle;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-direct {p0}, Lcom/google/android/videochat/CallManager;->releaseEngine()V

    .line 390
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v0}, Lcom/google/android/videochat/CallAudioHelper;->deinitAudio()V

    .line 392
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mLibjingle:Lcom/google/android/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/videochat/Libjingle;->release()V

    .line 393
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/videochat/CallManager$WifiStateReceiver;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/videochat/CallManager$WifiStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    iput-object v2, p0, Lcom/google/android/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/videochat/CallManager$WifiStateReceiver;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 399
    iput-object v2, p0, Lcom/google/android/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    .line 401
    :cond_1
    sput-object v2, Lcom/google/android/videochat/CallManager;->sInstance:Lcom/google/android/videochat/CallManager;

    .line 402
    return-void
.end method

.method public removeCallStateListener(Lcom/google/android/videochat/CallStateListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 582
    const/4 v2, 0x0

    .line 583
    .local v2, target:Lcom/google/android/videochat/CallStateListener;
    iget-object v4, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    monitor-enter v4

    .line 584
    :try_start_0
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallStateListener;

    .line 585
    .local v0, csl:Lcom/google/android/videochat/CallStateListener;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    move-object v2, v0

    .line 590
    .end local v0           #csl:Lcom/google/android/videochat/CallStateListener;
    :cond_1
    if-eqz v2, :cond_2

    .line 591
    iget-object v3, p0, Lcom/google/android/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 593
    :cond_2
    monitor-exit v4

    .line 594
    return-void

    .line 593
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public requestCallStateUpdate(Ljava/lang/Object;)V
    .locals 0
    .parameter "callbackParam"

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallManager;->replyToCallStateUpdateRequest(Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method public setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallAudioHelper;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 567
    return-void
.end method

.method public setCallBoundaryCallback(Lcom/google/android/videochat/CallManager$CallBoundaryCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/videochat/CallManager$CallBoundaryCallback;

    .line 303
    return-void
.end method

.method public setCallStorage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mAppCallStorageMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/videochat/CallManager;->mCallAudioHelper:Lcom/google/android/videochat/CallAudioHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CallAudioHelper;->setMute(Z)V

    .line 563
    return-void
.end method

.method public terminateCall()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/videochat/CallManager;->terminateCall(Z)Z

    move-result v0

    return v0
.end method
