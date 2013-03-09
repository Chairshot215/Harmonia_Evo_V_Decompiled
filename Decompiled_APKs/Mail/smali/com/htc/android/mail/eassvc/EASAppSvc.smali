.class public Lcom/htc/android/mail/eassvc/EASAppSvc;
.super Landroid/app/Service;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;,
        Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;,
        Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;,
        Lcom/htc/android/mail/eassvc/EASAppSvc$EasAuthenticator;
    }
.end annotation


# static fields
.field private static final ACTION_KEEP_EAS_AS_SERVICE:Ljava/lang/String; = "android.intent.action.eas.setService"

.field private static final ACTION_KEEP_EAS_AS_SERVICE_ID:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static DeleteAccountSynchObject:Ljava/lang/Object; = null

.field public static final EAS_CFG_FILE_ENCODING:Ljava/lang/String; = "utf-8"

.field public static final EAS_CFG_FILE_XML_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "extra.htc.eas.account_id"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "extra.htc.eas.result"

.field private static final EXTRA_SYNC_MANUALLY:Ljava/lang/String; = "com.htc.eas.extra.sync_manually"

.field private static final EXTRA_SYNC_TASKS:Ljava/lang/String; = "com.htc.task.ACTION_REQUEST_SYNC"

.field private static final EXTRA_SYNC_TASKS_ACCOUNT:Ljava/lang/String; = "com.htc.extra.task.account"

.field private static final EXTRA_SYNC_TASKS_MANUALLY:Ljava/lang/String; = "com.htc.extra.task.sync_manually"

.field private static final EXTRA_SYNC_WHEN_OPEN:Ljava/lang/String; = "com.htc.eas.extra.sync_when_open"

.field private static final EXTRA_WIFI_ACTIVE:Ljava/lang/String; = "extra.com.htc.eas.wifi_active"

.field private static final HTC_ACTION_FAVORITE_CHANGE:Ljava/lang/String; = "android.intent.action.FAVORITE_CHANGE"

#the value of this static final field might be set in the static constructor
.field private static final MAIL_DEBUG:Z = false

.field private static final MSG_INIT_EAS_SERVICE:I = 0x1

.field private static final MSG_NETWORK_STATE_CHANGED:I = 0x32

.field private static final MSG_PAUSE_SYNC:I = 0x21

.field private static final MSG_RESUME_SYNC:I = 0x22

.field private static final MSG_SERVICE_ON_START:I = 0x1e

.field private static final MSG_UNINIT_EAS_SERVICE:I = 0x2

.field private static final MSG_WAIT_3G:I = 0x15

.field private static final MSG_WAIT_RESUME:I = 0x16

.field private static final MSG_WAIT_WIFI:I = 0x14

.field public static final OPTIONS_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final OPTIONS_DOMAIN:Ljava/lang/String; = "domain"

.field public static final OPTIONS_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddr"

.field public static final OPTIONS_PASSWORD:Ljava/lang/String; = "password"

.field public static final OPTIONS_SERVER_ADDR:Ljava/lang/String; = "serverAddr"

.field public static final OPTIONS_SYNC_CALENDAR:Ljava/lang/String; = "syncCalendar"

.field public static final OPTIONS_SYNC_CONTACTS:Ljava/lang/String; = "syncContacts"

.field public static final OPTIONS_SYNC_MAIL:Ljava/lang/String; = "syncMail"

.field public static final OPTIONS_SYNC_SCHEDULE:Ljava/lang/String; = "syncSchedule"

.field public static final OPTIONS_SYNC_TASKS:Ljava/lang/String; = "syncTasks"

.field public static final OPTIONS_USERNAME:Ljava/lang/String; = "username"

.field public static final OPTIONS_USE_SSL:Ljava/lang/String; = "useSSL"

.field public static final TAG:Ljava/lang/String; = "EASAppSvc"

.field public static final TAG_TASK:Ljava/lang/String; = "TaskEASAppSvc"

.field private static final m3GWaitTime:I = 0x1388

.field private static mContext:Landroid/content/Context; = null

.field private static mPauseSvcList:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mStatusChangeListenerHandle:Ljava/lang/Object; = null

.field private static mSyncStatusObserver:Landroid/content/SyncStatusObserver; = null

.field private static final mWifiWaitTime:I = 0x3a98

.field private static sDelAccountList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;


# instance fields
.field autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

.field isUpgradeFrom2to3:Z

.field private final mBinder:Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;

.field private mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

.field private mGlobalResumeDelayTime:J

.field private mInited:Z

.field private mIsScreenOff:Z

.field private mIsServiceDestroy:Z

.field private mIsSmartWifi:Z

.field private mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

.field private mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

.field private final mPublicBinder:Lcom/htc/android/pim/eas/IEASSvc$Stub;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mStartIdList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

.field private final mTaskBinder:Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;

.field private mWasWakeupWifi:Z

.field private syncCallback:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

.field testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    .line 121
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->MAIL_DEBUG:Z

    .line 160
    sput-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    .line 161
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    .line 162
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    .line 163
    sput-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DeleteAccountSynchObject:Ljava/lang/Object;

    .line 185
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 167
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    .line 168
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z

    .line 169
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 170
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 171
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    .line 172
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mWasWakeupWifi:Z

    .line 173
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsScreenOff:Z

    .line 174
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsSmartWifi:Z

    .line 175
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsServiceDestroy:Z

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mGlobalResumeDelayTime:J

    .line 177
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    .line 178
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    .line 180
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    .line 181
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    .line 183
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->isUpgradeFrom2to3:Z

    .line 194
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$2;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncCallback:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    .line 795
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$3;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPublicBinder:Lcom/htc/android/pim/eas/IEASSvc$Stub;

    .line 818
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$4;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mTaskBinder:Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;

    .line 890
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$5;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mBinder:Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;

    .line 2362
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$7;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mWasWakeupWifi:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/pim/eas/EASGalSearchResult;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->transferResult(Lcom/htc/android/pim/eas/EASGalSearchResult;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/eassvc/EASAppSvc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mWasWakeupWifi:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->initEASService()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->uninitEASService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->doScheduledSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->startSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsSmartWifi:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/android/mail/eassvc/EASAppSvc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsSmartWifi:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsScreenOff:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->checkAutosyncWhenNetworkReady()V

    return-void
.end method

.method static synthetic access$2100()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->resume()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->createExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsServiceDestroy:Z

    return v0
.end method

.method static synthetic access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->sendScheduleChangeBroadcast()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z

    return v0
.end method

.method private broadcastContactsFavoriteChange()V
    .locals 2

    .prologue
    .line 3329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3330
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3331
    return-void
.end method

.method private checkAutosyncWhenNetworkReady()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2960
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2961
    .local v3, syncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 2962
    .local v2, syncSrc:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncResult()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncErrorCode()I

    move-result v4

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2964
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v4

    invoke-direct {p0, v3, v4, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    goto :goto_1

    .line 2965
    :cond_2
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v4, v2}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->isSyncBreak(Lcom/htc/android/mail/eassvc/core/SyncSource;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2966
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v4

    invoke-direct {p0, v3, v4, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    goto :goto_1

    .line 2969
    .end local v2           #syncSrc:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_3
    iget-boolean v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->bScheduleInDisconnect:Z

    if-eqz v4, :cond_0

    .line 2970
    iput-boolean v6, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->bScheduleInDisconnect:Z

    .line 2971
    invoke-direct {p0, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->doScheduledSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_0

    .line 2974
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #syncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_4
    return-void
.end method

.method private copyAccountInfo(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Z
    .locals 3
    .parameter "fromAccount"
    .parameter "destAccount"

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, change:Z
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    .line 555
    const/4 v0, 0x1

    .line 557
    :cond_0
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 559
    const/4 v0, 0x1

    .line 561
    :cond_1
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 562
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 563
    const/4 v0, 0x1

    .line 565
    :cond_2
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 566
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 567
    const/4 v0, 0x1

    .line 569
    :cond_3
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 570
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 571
    const/4 v0, 0x1

    .line 573
    :cond_4
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 574
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 575
    const/4 v0, 0x1

    .line 577
    :cond_5
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 578
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 579
    const/4 v0, 0x1

    .line 581
    :cond_6
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 582
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 583
    const/4 v0, 0x1

    .line 585
    :cond_7
    iget-boolean v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    iget-boolean v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-eq v1, v2, :cond_8

    .line 586
    iget-boolean v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    iput-boolean v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 587
    const/4 v0, 0x1

    .line 589
    :cond_8
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 590
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    .line 591
    const/4 v0, 0x1

    .line 593
    :cond_9
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 594
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    .line 595
    const/4 v0, 0x1

    .line 597
    :cond_a
    iget-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 598
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    iput-object v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    .line 599
    const/4 v0, 0x1

    .line 601
    :cond_b
    iget v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    iget v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    if-eq v1, v2, :cond_c

    .line 602
    const/4 v1, 0x1

    iput v1, p2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    .line 603
    const/4 v0, 0x1

    .line 605
    :cond_c
    return v0
.end method

.method private createAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)I
    .locals 14
    .parameter "exAccount"

    .prologue
    .line 2504
    const-string v10, "EASAppSvc"

    const-string v11, "> createAccount: "

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    const v10, 0xf42a4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Create exchange account, account id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2506
    const/4 v6, -0x1

    .line 2508
    .local v6, ret:I
    const/4 v7, 0x0

    .line 2511
    .local v7, retryCount:I
    :cond_0
    const/4 v0, 0x0

    .line 2512
    .local v0, bNeedRetry:Z
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const-string v11, "MAIL_BLK"

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v5

    .line 2513
    .local v5, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const-string v11, "MAIL_BLK"

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v9

    .line 2515
    .local v9, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    const/4 v4, 0x0

    .line 2517
    .local v4, httpClient:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/android/mail/eassvc/EASAppSvc;->removeRemainDatabase(Ljava/lang/String;)V

    .line 2518
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 2519
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-virtual {v10, p1, v4}, Lcom/htc/android/mail/eassvc/core/SyncManager;->chooseProtocol(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Landroid/net/http/AndroidHttpClient;)Z

    .line 2521
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-virtual {v10, p1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->createAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Z

    move-result v1

    .line 2522
    .local v1, createSucc:Z
    if-eqz v1, :cond_3

    .line 2524
    iget-wide v10, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/eassvc/EASAppSvc;->removeDeviceConfig(J)V

    .line 2526
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const-wide/16 v11, -0x1

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isPassAllCertificate(Landroid/content/Context;J)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2527
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setPassAllCertificate(Landroid/content/Context;JLjava/lang/String;)V

    .line 2528
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iget-object v13, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v10, v11, v12, v13}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setPassAllCertificate(Landroid/content/Context;JLjava/lang/String;)V

    .line 2530
    :cond_1
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2531
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;JZ)V

    .line 2532
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2534
    :cond_2
    const/4 v6, 0x1

    .line 2577
    :cond_3
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2578
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2579
    if-eqz v4, :cond_4

    .line 2580
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2581
    .end local v1           #createSucc:Z
    :goto_0
    const/4 v4, 0x0

    .line 2584
    :cond_4
    if-nez v0, :cond_0

    .line 2586
    const-string v10, "EASAppSvc"

    const-string v11, "< createAccount: "

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v6

    .line 2587
    :cond_5
    :goto_1
    return v10

    .line 2536
    :catch_0
    move-exception v2

    .line 2537
    .local v2, e:Ljava/lang/Exception;
    const v10, 0xf42a4

    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createAccount fail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2538
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2539
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v8

    .line 2540
    .local v8, syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual {v8}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v3

    .line 2542
    .local v3, errorCode:I
    const/16 v10, 0x204

    if-eq v3, v10, :cond_6

    const/16 v10, 0x205

    if-eq v3, v10, :cond_6

    const/16 v10, 0x207

    if-eq v3, v10, :cond_6

    const/16 v10, 0x206

    if-ne v3, v10, :cond_7

    .line 2546
    :cond_6
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-static {v4, v10, v11, v3, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2547
    const/4 v10, -0x6

    .line 2577
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2578
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2579
    if-eqz v4, :cond_5

    .line 2580
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2581
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 2549
    :cond_7
    const/16 v10, 0x32b

    if-ne v3, v10, :cond_8

    .line 2550
    const/4 v10, -0x7

    .line 2577
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2578
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2579
    if-eqz v4, :cond_5

    .line 2580
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 2552
    :cond_8
    const/16 v10, 0x44c

    if-ne v3, v10, :cond_9

    .line 2553
    :try_start_2
    const-string v10, "EASAppSvc"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Download policy failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    const/4 v0, 0x0

    .line 2558
    :cond_9
    const/4 v10, 0x1

    if-ge v7, v10, :cond_c

    .line 2559
    add-int/lit8 v7, v7, 0x1

    .line 2560
    invoke-virtual {v8}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v10

    invoke-static {v10}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2561
    sget-boolean v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "EASAppSvc"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception happen, do retry createAccount("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2562
    :cond_a
    const/4 v0, 0x1

    .line 2577
    :cond_b
    :goto_3
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2578
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2579
    if-eqz v4, :cond_4

    .line 2580
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 2565
    :cond_c
    :try_start_3
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isDeviceSetProxy(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_d

    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2567
    const-string v10, "EASAppSvc"

    const-string v11, "Device had set Proxy, try to use proxy to createAccount again."

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    const/4 v0, 0x1

    .line 2569
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V

    .line 2570
    const/4 v7, 0x0

    goto :goto_3

    .line 2572
    :cond_d
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V

    .line 2573
    sget-boolean v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string v10, "EASAppSvc"

    const-string v11, "Exception happen, createAccount out of retry times, quit."

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2577
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #errorCode:I
    .end local v8           #syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    :catchall_0
    move-exception v10

    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2578
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2579
    if-eqz v4, :cond_e

    .line 2580
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2581
    const/4 v4, 0x0

    .line 2577
    :cond_e
    throw v10
.end method

.method private createExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Z)V
    .locals 12
    .parameter "exList"
    .parameter "isDeleted"

    .prologue
    .line 2436
    const-string v1, "EASAppSvc"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createExchangeSources(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_3

    const-string v0, "Deleted"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    const/4 v8, 0x0

    .line 2439
    .local v8, curAccount:Landroid/database/Cursor;
    const/16 v0, 0xd

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_emailaddress"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_inserver"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_easDomain"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_username"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_password"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "_easSvrProtocol"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "_useSSLin"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "_easHeartBeatInternal"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "_easDeviceID"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "_easDeviceType"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "_del"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "_desc"

    aput-object v1, v2, v0

    .line 2443
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_protocol=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_4

    const-string v0, "\' AND _del = 1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2444
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2445
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2448
    :cond_0
    new-instance v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v6}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;-><init>()V

    .line 2449
    .local v6, account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 2450
    const-string v0, "_desc"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 2451
    const-string v0, "_emailaddress"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 2452
    const-string v0, "_inserver"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 2453
    const-string v0, "_easDomain"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 2454
    const-string v0, "_username"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 2455
    const-string v0, "_password"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2456
    .local v11, password:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/android/mail/Account;->decodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 2457
    const-string v0, "_easSvrProtocol"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    .line 2458
    const-string v0, "_useSSLin"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 2459
    const-string v0, "_easHeartBeatInternal"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    .line 2460
    const-string v0, "_easDeviceID"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    .line 2461
    const-string v0, "_easDeviceType"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    .line 2462
    const-string v0, "_del"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    .line 2463
    iget-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    .line 2464
    iget-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    .line 2465
    iget-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2466
    iget-object v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    .line 2470
    :goto_3
    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createExchangeSources(): get account "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    new-instance v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, v6}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 2472
    .local v10, exSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setSyncProxy(Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;)V

    .line 2473
    invoke-virtual {p1, v10}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->addExchangeSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 2474
    invoke-virtual {v10}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    .line 2475
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 2480
    .end local v6           #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v10           #exSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v11           #password:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2481
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2483
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getProvisionDocList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->aggregatePolicy(Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v7

    .line 2484
    .local v7, aggrProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    invoke-virtual {p1, v7}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->setAggregateProvisionDoc(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 2485
    return-void

    .line 2436
    .end local v7           #aggrProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v8           #curAccount:Landroid/database/Cursor;
    :cond_3
    const-string v0, "not Deleted"

    goto/16 :goto_0

    .line 2443
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v8       #curAccount:Landroid/database/Cursor;
    :cond_4
    :try_start_1
    const-string v0, "\' AND _del != 1"

    goto/16 :goto_1

    .line 2458
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .restart local v11       #password:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2468
    :cond_6
    const-wide/high16 v0, -0x4010

    iput-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2477
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v11           #password:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2478
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2480
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2481
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2480
    :cond_7
    throw v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 2735
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2736
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2737
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 2738
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 2739
    .local v2, success:Z
    if-nez v2, :cond_0

    .line 2740
    const/4 v3, 0x0

    .line 2744
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :goto_1
    return v3

    .line 2737
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #success:Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2744
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method private doScheduledSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 2
    .parameter "exSyncSources"

    .prologue
    .line 2882
    if-nez p1, :cond_1

    .line 2883
    const-string v0, "EASAppSvc"

    const-string v1, "doServiceStartSync(): Error, cannot find account"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2885
    :cond_1
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2886
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->bScheduleInDisconnect:Z

    .line 2887
    const-string v0, "EASAppSvc"

    const-string v1, "Scheduler: network is disconnected."

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0

    .line 2891
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isScheduleingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2892
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    const-string v1, "Scheduler: not enabled."

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0

    .line 2896
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->doServiceStartSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_0
.end method

.method private doServiceStartSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 2
    .parameter "exSyncSources"

    .prologue
    const/4 v0, 0x0

    .line 2901
    if-nez p1, :cond_0

    .line 2902
    const-string v0, "EASAppSvc"

    const-string v1, "doServiceStartSync(): Error, cannot find account"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2906
    :goto_0
    return-void

    .line 2904
    :cond_0
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->startSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V

    goto :goto_0
.end method

.method private exeUpgrade()V
    .locals 2

    .prologue
    .line 2221
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->isUpgradeFrom2to3:Z

    if-eqz v0, :cond_0

    .line 2222
    const-string v0, "EASAppSvc"

    const-string v1, "- exeUpgrade(): from 2 to 3"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->resetAdminPolicy()V

    .line 2225
    :cond_0
    return-void
.end method

.method private getFolderHierarchy(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    .locals 3
    .parameter "exSyncSources"

    .prologue
    .line 541
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 542
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-object p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 543
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 544
    const/4 v1, -0x2

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 545
    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 546
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 547
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 548
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;

    return-object v1
.end method

.method private initEASService()V
    .locals 8

    .prologue
    .line 2247
    monitor-enter p0

    .line 2248
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z

    if-eqz v4, :cond_0

    .line 2249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2305
    :goto_0
    return-void

    .line 2253
    :cond_0
    :try_start_1
    invoke-direct {p0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->onUpgrade(Landroid/content/Context;)V

    .line 2255
    sget-boolean v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "EASAppSvc"

    const-string v5, "> initEASService()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    :cond_1
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->setUserAgent(Landroid/content/Context;)V

    .line 2258
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    if-nez v4, :cond_6

    .line 2259
    new-instance v4, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;-><init>()V

    sput-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    .line 2260
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-direct {p0, v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->initExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V

    .line 2265
    :goto_1
    new-instance v4, Lcom/htc/android/mail/eassvc/core/SyncManager;

    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/android/mail/eassvc/core/SyncManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 2266
    new-instance v4, Lcom/htc/android/mail/eassvc/core/EASRequestController;

    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    sget-object v7, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/core/EASRequestController;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/SyncManager;Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 2267
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncCallback:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->registerEventCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 2269
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2270
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.eas.intent.pauseSync"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2271
    const-string v4, "com.htc.eas.intent.resumeSync"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2272
    const-string v4, "intent.eas.mail.priority.high"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2273
    const-string v4, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2274
    const-string v4, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2275
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2276
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2278
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 2279
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->addStatusChangeListener()V

    .line 2280
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setServicesEnabled()V

    .line 2283
    :cond_2
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 2284
    .local v3, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getSmartWifiState()I

    move-result v2

    .line 2285
    .local v2, state:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 2286
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsSmartWifi:Z

    .line 2289
    :cond_3
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2290
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->checkAutosyncWhenNetworkReady()V

    .line 2292
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->manageDelFailEASAcc()V

    .line 2293
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->exeUpgrade()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2298
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .end local v2           #state:I
    .end local v3           #wm:Landroid/net/wifi/WifiManager;
    :goto_2
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z

    .line 2303
    sget-boolean v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "EASAppSvc"

    const-string v5, "< initEASService()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2262
    :cond_6
    :try_start_3
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-direct {p0, v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->updateExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2294
    :catch_0
    move-exception v0

    .line 2295
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "EASAppSvc"

    const-string v5, "Error!!! EASAppSvc init fail!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const-string v4, "EASAppSvc"

    invoke-static {v4, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private initExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V
    .locals 2
    .parameter "exList"

    .prologue
    .line 2425
    const-string v0, "EASAppSvc"

    const-string v1, "initExchangeSources()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->createExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Z)V

    .line 2427
    return-void
.end method

.method private manageDelFailEASAcc()V
    .locals 1

    .prologue
    .line 2231
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$6;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$6;->start()V

    .line 2244
    return-void
.end method

.method private manageULog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4000
    new-instance v0, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v0}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 4001
    .local v0, uloger:Lcom/htc/android/mail/ulog/MULogMgr;
    invoke-virtual {v0}, Lcom/htc/android/mail/ulog/MULogMgr;->addEASULog()V

    .line 4002
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/android/mail/MailProvider;->getAccountCount(Z)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 4003
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ulog/MULogMgr;->setAlarm(Landroid/content/Context;Z)V

    .line 4006
    :cond_0
    return-void
.end method

.method private onUpgrade(Landroid/content/Context;)V
    .locals 30
    .parameter "context"

    .prologue
    .line 2067
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/util/VersionUtil;->getCurrentVersion(Landroid/content/Context;)I

    move-result v28

    .line 2068
    .local v28, version:I
    move/from16 v25, v28

    .line 2069
    .local v25, oldVersion:I
    const/4 v2, 0x3

    move/from16 v0, v28

    if-ne v0, v2, :cond_1

    .line 2218
    :cond_0
    :goto_0
    return-void

    .line 2073
    :cond_1
    if-gtz v28, :cond_a

    .line 2074
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onUpgrade(): from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-wide/16 v8, -0x1

    .line 2076
    .local v8, accountId:J
    const/16 v20, 0x0

    .line 2077
    .local v20, emailAddress:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2079
    .local v17, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_emailaddress"

    aput-object v6, v4, v5

    const-string v5, " _provider=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v29, "Exchange"

    aput-object v29, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2085
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2086
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2087
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2089
    :cond_2
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2090
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2091
    const/16 v17, 0x0

    .line 2093
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_8

    .line 2095
    const/16 v2, 0x9

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "eas_cal.prefs"

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "eas_con.prefs"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "eas_mail.prefs"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    const-string v3, "eas_provision.prefs"

    aput-object v3, v16, v2

    const/4 v2, 0x4

    const-string v3, "eas_globalInfo.prefs"

    aput-object v3, v16, v2

    const/4 v2, 0x5

    const-string v3, "eas_opt.prefs"

    aput-object v3, v16, v2

    const/4 v2, 0x6

    const-string v3, "eas_pass_certificate"

    aput-object v3, v16, v2

    const/4 v2, 0x7

    const-string v3, "pass_change"

    aput-object v3, v16, v2

    const/16 v2, 0x8

    const-string v3, "eas_collIdBackup.prefs"

    aput-object v3, v16, v2

    .line 2100
    .local v16, configMoveList:[Ljava/lang/String;
    move-object/from16 v11, v16

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    aget-object v21, v11, v22

    .line 2101
    .local v21, filename:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8, v9}, Lcom/htc/android/mail/eassvc/util/VersionUtil;->moveFile(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2100
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 2105
    .end local v21           #filename:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dp_config.prefs"

    aput-object v3, v15, v2

    .line 2108
    .local v15, configDelList:[Ljava/lang/String;
    move-object v11, v15

    array-length v0, v11

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v21, v11, v22

    .line 2109
    .restart local v21       #filename:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/VersionUtil;->delFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 2108
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 2113
    .end local v21           #filename:Ljava/lang/String;
    :cond_5
    new-instance v23, Ljava/io/File;

    const-string v2, "/data/data/com.htc.android.mail/eas_keystore"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2114
    .local v23, keyStoreFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_6

    .line 2116
    :try_start_1
    const-string v2, "upgrade@upgrade"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setPassAllCertificate(Landroid/content/Context;JLjava/lang/String;)V

    .line 2117
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2124
    :cond_6
    :goto_3
    const-wide/16 v13, -0x1

    .line 2125
    .local v13, calendarId:J
    :try_start_2
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2126
    .local v12, builder:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v12, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2127
    const-string v2, "account_name"

    move-object/from16 v0, v20

    invoke-virtual {v12, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2129
    const-string v2, "account_type"

    const-string v3, "com.htc.android.mail.eas"

    invoke-virtual {v12, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2131
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2132
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2133
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 2134
    .local v27, values:Landroid/content/ContentValues;
    const-string v2, "account_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const-string v2, "account_type"

    const-string v3, "com.htc.android.mail.eas"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2139
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2140
    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v12, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2141
    const-string v2, "account_name"

    move-object/from16 v0, v20

    invoke-virtual {v12, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2142
    const-string v2, "account_type"

    const-string v3, "com.htc.android.mail.eas"

    invoke-virtual {v12, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "(_sync_account is null OR _sync_account_type is null) AND calendar_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2154
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_7
    sget-object v26, Landroid/provider/Contacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    .line 2155
    .local v26, trackeingUri:Landroid/net/Uri;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2156
    .local v18, cv:Landroid/content/ContentValues;
    const-string v2, "accountName"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accountName=\'new\' AND length(CollId) >0"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2158
    sget-object v26, Landroid/provider/HtcExCalendar;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    .line 2159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accountName=\'Exchange\' AND length(CollId) >0"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2166
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v12           #builder:Landroid/net/Uri$Builder;
    .end local v13           #calendarId:J
    .end local v15           #configDelList:[Ljava/lang/String;
    .end local v16           #configMoveList:[Ljava/lang/String;
    .end local v18           #cv:Landroid/content/ContentValues;
    .end local v22           #i$:I
    .end local v23           #keyStoreFile:Ljava/io/File;
    .end local v24           #len$:I
    .end local v26           #trackeingUri:Landroid/net/Uri;
    :cond_8
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2167
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2169
    :cond_9
    :goto_4
    const/16 v17, 0x0

    .line 2171
    const/16 v28, 0x1

    .line 2174
    .end local v8           #accountId:J
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v20           #emailAddress:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_f

    .line 2175
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onUpgrade(): from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const/4 v10, 0x0

    .line 2178
    .local v10, accountIdList:Ljava/lang/String;
    const/16 v17, 0x0

    .line 2180
    .restart local v17       #cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, " _provider=? AND _easSvrProtocol=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v29, "Exchange"

    aput-object v29, v6, v7

    const/4 v7, 0x1

    const-string v29, "14.0"

    aput-object v29, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2186
    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2187
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 2188
    :goto_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v10

    goto :goto_5

    .line 2118
    .end local v10           #accountIdList:Ljava/lang/String;
    .restart local v8       #accountId:J
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #configDelList:[Ljava/lang/String;
    .restart local v16       #configMoveList:[Ljava/lang/String;
    .restart local v20       #emailAddress:Ljava/lang/String;
    .restart local v22       #i$:I
    .restart local v23       #keyStoreFile:Ljava/io/File;
    .restart local v24       #len$:I
    :catch_0
    move-exception v19

    .line 2119
    .local v19, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 2162
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #configDelList:[Ljava/lang/String;
    .end local v16           #configMoveList:[Ljava/lang/String;
    .end local v19           #e:Ljava/lang/Exception;
    .end local v22           #i$:I
    .end local v23           #keyStoreFile:Ljava/io/File;
    .end local v24           #len$:I
    :catch_1
    move-exception v19

    .line 2163
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "EASAppSvc"

    const-string v3, "onUpgrade() Fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2166
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2167
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 2166
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2167
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2169
    :cond_b
    const/16 v17, 0x0

    .line 2166
    throw v2

    .line 2192
    .end local v8           #accountId:J
    .end local v20           #emailAddress:Ljava/lang/String;
    .restart local v10       #accountIdList:Ljava/lang/String;
    :cond_c
    :try_start_6
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgrade accounts protocol : {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2194
    .restart local v18       #cv:Landroid/content/ContentValues;
    const-string v2, "_easSvrProtocol"

    const-string v3, "12.1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2201
    .end local v18           #cv:Landroid/content/ContentValues;
    :cond_d
    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2202
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2203
    :goto_6
    const/16 v17, 0x0

    .line 2207
    :cond_e
    const/16 v28, 0x2

    .line 2209
    .end local v10           #accountIdList:Ljava/lang/String;
    .end local v17           #cursor:Landroid/database/Cursor;
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_10

    .line 2210
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onUpgrade(): from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to 3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->isUpgradeFrom2to3:Z

    .line 2212
    const/16 v28, 0x3

    .line 2215
    :cond_10
    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 2216
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/VersionUtil;->setVersion(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 2197
    .restart local v10       #accountIdList:Ljava/lang/String;
    .restart local v17       #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v19

    .line 2198
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "EASAppSvc"

    const-string v3, "onUpgrade() Fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2201
    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2202
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 2201
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v17, :cond_11

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2202
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2203
    const/16 v17, 0x0

    .line 2201
    :cond_11
    throw v2
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendEmptyMessage(I)V

    .line 2809
    :cond_0
    return-void
.end method

.method private queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V
    .locals 6
    .parameter "exSyncSources"
    .parameter "syncType"
    .parameter "bIsManual"

    .prologue
    .line 2977
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZLandroid/os/ConditionVariable;Z)V

    .line 2978
    return-void
.end method

.method private queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZLandroid/os/ConditionVariable;Z)V
    .locals 8
    .parameter "exSyncSources"
    .parameter "syncType"
    .parameter "bIsManual"
    .parameter "condition"
    .parameter "isFromDirectpush"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v5, 0x4

    .line 2985
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queueDoSync("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 2987
    :cond_0
    if-ne p2, v7, :cond_2

    .line 2988
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V

    .line 3019
    :cond_1
    :goto_0
    return-void

    .line 2991
    :cond_2
    if-ne p2, v5, :cond_3

    invoke-virtual {p1, v5}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncSource(I)Lcom/htc/android/mail/eassvc/core/SyncSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getColID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v5}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncSource(I)Lcom/htc/android/mail/eassvc/core/SyncSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getColID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InvalidTaskID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2996
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lcom/htc/tasklib/source/TaskAppHelper;->onSyncCompleted(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    .line 2998
    if-eqz p4, :cond_1

    .line 2999
    invoke-virtual {p4}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 3004
    :cond_3
    new-instance v6, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v6}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3005
    .local v6, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v0, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3006
    iput-object p1, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3007
    iput p2, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3008
    const/16 v0, 0xa

    iput v0, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3009
    if-eqz p3, :cond_4

    .line 3010
    iput v7, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3014
    :goto_1
    iput-object p4, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    .line 3015
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3016
    iget-object v0, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v1, "extra.isDirectpush"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3017
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 3012
    :cond_4
    const/4 v0, -0x3

    iput v0, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    goto :goto_1
.end method

.method private queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZZ)V
    .locals 6
    .parameter "exSyncSources"
    .parameter "syncType"
    .parameter "bIsManual"
    .parameter "isFromDirectpush"

    .prologue
    .line 2981
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZLandroid/os/ConditionVariable;Z)V

    .line 2982
    return-void
.end method

.method private queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V
    .locals 6
    .parameter "exSyncSources"
    .parameter "collId"
    .parameter "bIsManual"
    .parameter "isDirectpush"
    .parameter "condition"

    .prologue
    const/4 v5, 0x3

    .line 3027
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASAppSvc"

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queueMailSync("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 3028
    :cond_0
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3029
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3030
    iput-object p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3031
    iput v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3032
    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3033
    if-eqz p3, :cond_1

    .line 3034
    iput v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3038
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3039
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.collection_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "extra.isDirectpush"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3041
    iput-object p5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    .line 3042
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3043
    return-void

    .line 3036
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    goto :goto_0
.end method

.method private queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Z)V
    .locals 6
    .parameter "exSyncSources"
    .parameter "bIsManual"

    .prologue
    const/4 v2, 0x0

    .line 3021
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V

    .line 3022
    return-void
.end method

.method private queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZLandroid/os/ConditionVariable;)V
    .locals 6
    .parameter "exSyncSources"
    .parameter "bIsManual"
    .parameter "condition"

    .prologue
    .line 3024
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V

    .line 3025
    return-void
.end method

.method private removeDeviceConfig(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 2730
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 2731
    .local v0, dir:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->deleteDir(Ljava/io/File;)Z

    move-result v1

    .line 2732
    .local v1, ret:Z
    return-void
.end method

.method private removeRemainDatabase(Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 2771
    const/4 v0, 0x0

    .line 2772
    .local v0, count:I
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->removeAllSyncPeople(Landroid/content/ContentResolver;Ljava/lang/String;Z)I

    move-result v0

    .line 2773
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2774
    if-lez v0, :cond_0

    .line 2775
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->broadcastContactsFavoriteChange()V

    .line 2778
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeAllEvents(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 2779
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2781
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->removeSyncinfo(Landroid/content/ContentResolver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2787
    :goto_0
    return-void

    .line 2782
    :catch_0
    move-exception v1

    .line 2783
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    throw v1

    .line 2784
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 2785
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeSyncdDatabase(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 8
    .parameter "exSyncSources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2750
    iget-object v3, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 2753
    .local v2, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2758
    :goto_1
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v4

    invoke-static {v3, v4, v7}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastProgressMessage(Landroid/content/Context;II)V

    .line 2759
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->deleteAccount()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2760
    const-string v3, "EASAppSvc"

    iget-object v4, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "! delete data failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 2754
    :catch_0
    move-exception v0

    .line 2755
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2761
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 2762
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->broadcastContactsFavoriteChange()V

    goto :goto_0

    .line 2766
    .end local v2           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_2
    return-void
.end method

.method private resume()V
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendEmptyMessage(I)V

    .line 2815
    :cond_0
    return-void
.end method

.method private sendScheduleChangeBroadcast()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3981
    const/4 v0, 0x0

    .line 3982
    .local v0, directpush:Z
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3983
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v2

    .line 3984
    .local v2, schedule:I
    if-ne v2, v4, :cond_1

    move v0, v4

    .line 3987
    .end local v2           #schedule:I
    :cond_0
    :goto_0
    const-string v3, "EASAppSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- sendScheduleChangeBroadcast(), com.htc.cs.ExScheduleChange, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.cs.ExScheduleChange"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3989
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "directpush"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3990
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3991
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #schedule:I
    :cond_1
    move v0, v5

    .line 3984
    goto :goto_0
.end method

.method private setServicesDisabled()V
    .locals 4

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2489
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/android/mail/eassvc/EASEventReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2493
    return-void
.end method

.method private setServicesEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2496
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2497
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/android/mail/eassvc/EASEventReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2501
    return-void
.end method

.method private startSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V
    .locals 14
    .parameter "exSyncSources"
    .parameter "blocking"
    .parameter "isManual"

    .prologue
    .line 2909
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASAppSvc"

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> startSync("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 2911
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getEnabledSyncSources()Ljava/util/ArrayList;

    move-result-object v12

    .line 2912
    .local v12, syncSourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/SyncSource;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2913
    .local v8, blockingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ConditionVariable;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2914
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EASAppSvc"

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "< startSync()- nothing need sync"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 2957
    .end local v8           #blockingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ConditionVariable;>;"
    .end local v12           #syncSourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/SyncSource;>;"
    :cond_1
    :goto_0
    return-void

    .line 2917
    .restart local v8       #blockingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ConditionVariable;>;"
    .restart local v12       #syncSourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/SyncSource;>;"
    :cond_2
    const/4 v11, 0x0

    .line 2918
    .local v11, syncAdd:Z
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 2919
    .local v13, syncSrc:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v13}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2925
    :cond_4
    const/4 v11, 0x1

    .line 2926
    invoke-interface {v13}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 2927
    if-eqz p2, :cond_6

    .line 2928
    new-instance v5, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 2929
    .local v5, condition:Landroid/os/ConditionVariable;
    invoke-interface {v13}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZLandroid/os/ConditionVariable;Z)V

    .line 2930
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2953
    .end local v5           #condition:Landroid/os/ConditionVariable;
    .end local v8           #blockingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ConditionVariable;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #syncAdd:Z
    .end local v12           #syncSourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/SyncSource;>;"
    .end local v13           #syncSrc:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :catch_0
    move-exception v9

    .line 2954
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2956
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EASAppSvc"

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< startSync("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 2932
    .restart local v8       #blockingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ConditionVariable;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #syncAdd:Z
    .restart local v12       #syncSourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/SyncSource;>;"
    .restart local v13       #syncSrc:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_6
    :try_start_1
    invoke-interface {v13}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v1

    move/from16 v0, p3

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    goto :goto_1

    .line 2935
    :cond_7
    if-eqz p2, :cond_8

    .line 2936
    new-instance v5, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 2937
    .restart local v5       #condition:Landroid/os/ConditionVariable;
    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZLandroid/os/ConditionVariable;)V

    .line 2938
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2940
    .end local v5           #condition:Landroid/os/ConditionVariable;
    :cond_8
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Z)V

    goto/16 :goto_1

    .line 2944
    .end local v13           #syncSrc:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_9
    if-nez v11, :cond_a

    .line 2945
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EASAppSvc"

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "< startSync()- nothing enabled"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2948
    :cond_a
    if-eqz p2, :cond_5

    .line 2949
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ConditionVariable;

    .line 2950
    .local v7, block:Landroid/os/ConditionVariable;
    invoke-virtual {v7}, Landroid/os/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private transferResult(Lcom/htc/android/pim/eas/EASGalSearchResult;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    .locals 2
    .parameter "input"

    .prologue
    .line 1390
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;-><init>()V

    .line 1393
    .local v0, output:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    if-eqz p1, :cond_0

    .line 1394
    iget v1, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    iput v1, v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nTotal:I

    .line 1395
    iget v1, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    iput v1, v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nSearchReturnCode:I

    .line 1396
    iget v1, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    iput v1, v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStoreReturnCode:I

    .line 1397
    iget v1, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    iput v1, v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->nStatus:I

    .line 1399
    iget-object v1, p1, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    .line 1413
    :cond_0
    return-object v0
.end method

.method private uninitEASService()V
    .locals 2

    .prologue
    .line 2308
    monitor-enter p0

    .line 2309
    :try_start_0
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    const-string v1, "> uninitEASService()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsServiceDestroy:Z

    .line 2312
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncCallback:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->unregisterEventCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 2313
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2315
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2316
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->removeStatusChangeListener()V

    .line 2319
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->release()V

    .line 2320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 2327
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    if-eqz v0, :cond_2

    .line 2328
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->stopRunning()V

    .line 2330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    .line 2333
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    .line 2334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 2335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncCallback:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    .line 2337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    .line 2338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    .line 2339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z

    .line 2342
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "EASAppSvc"

    const-string v1, "< uninitEASService()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    :cond_3
    monitor-exit p0

    .line 2344
    return-void

    .line 2343
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V
    .locals 3
    .parameter "exList"

    .prologue
    .line 2419
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2420
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setSyncProxy(Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;)V

    goto :goto_0

    .line 2422
    .end local v0           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_0
    return-void
.end method

.method private waitForInitComplete()Z
    .locals 6

    .prologue
    .line 774
    const-wide/16 v1, 0x14

    .line 775
    .local v1, sleepTime:J
    :goto_0
    iget-boolean v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z

    if-nez v3, :cond_1

    .line 776
    const-string v3, "EASAppSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> waitForInitComplete()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    .line 783
    :goto_1
    monitor-enter p0

    .line 784
    :try_start_1
    iget-boolean v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsServiceDestroy:Z

    if-eqz v3, :cond_0

    .line 785
    const-string v3, "EASAppSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< waitForInitComplete(): already destroy. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :goto_2
    return v3

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 788
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    const-string v3, "EASAppSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< waitForInitComplete()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 792
    :cond_1
    const/4 v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public EmptyFolderContents(JLjava/lang/String;Z)V
    .locals 5
    .parameter "accountId"
    .parameter "collId"
    .parameter "deleteSubFolders"

    .prologue
    const/4 v4, 0x3

    .line 3826
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3827
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3828
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3829
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3830
    const/16 v1, 0x39

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3831
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3832
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.collection_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.empty_subfolders"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3834
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3835
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3836
    return-void
.end method

.method activeSyncIsAccount(Landroid/accounts/Account;)Z
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 615
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v0

    .line 616
    .local v0, activeSync:Landroid/content/SyncInfo;
    if-nez v0, :cond_1

    .line 617
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASAppSvc"

    const-string v3, "activeSyncIsAccount(): activeSync is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    return v1

    .line 619
    :cond_1
    iget-object v2, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    const-string v3, "htceas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 620
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activeSyncIsAccount(): activeSync is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 623
    :cond_3
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASAppSvc"

    const-string v3, "activeSyncIsAccount(): account not syncing"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 27
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"
    .parameter "needGetFolderHierarchy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z

    move-result v23

    if-nez v23, :cond_0

    .line 320
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v6, b:Landroid/os/Bundle;
    const-string v23, "extra.htc.eas.result"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string v23, "booleanResult"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    :goto_0
    return-object v6

    .line 326
    .end local v6           #b:Landroid/os/Bundle;
    :cond_0
    if-eqz p5, :cond_16

    const-string v23, "password"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    const-string v23, "username"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 328
    const-string v23, "EASAppSvc"

    const-string v24, "> addAccount()"

    invoke-static/range {v23 .. v24}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v23, "syncSchedule"

    const/16 v24, -0x63

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 330
    .local v20, syncSchedule:I
    new-instance v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v13}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;-><init>()V

    .line 331
    .local v13, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    const-string v23, "emailAddr"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    .line 332
    const/4 v9, -0x1

    .line 334
    .local v9, createResult:I
    :try_start_0
    const-string v23, "displayName"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 335
    const-string v23, "emailAddr"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 336
    const-string v23, "serverAddr"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 337
    const-string v23, "domain"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 338
    const-string v23, "username"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 339
    const-string v23, "password"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 340
    const-string v23, "useSSL"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 341
    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;

    .line 342
    invoke-static {}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    .line 343
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/util/DeviceInfo;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    .line 344
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    .line 345
    new-instance v4, Landroid/accounts/Account;

    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    .local v4, account:Landroid/accounts/Account;
    const/4 v12, 0x0

    .line 349
    .local v12, encPassword:Ljava/lang/String;
    :try_start_1
    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 350
    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 356
    :cond_1
    :try_start_2
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->findExchangeSyncSources(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v18

    .line 357
    .local v18, oldExSyncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 358
    .local v17, isDeleting:Z
    if-eqz v17, :cond_3

    .line 360
    const-string v23, "EASAppSvc"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "create account fail, account email is already exist - deleting."

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 361
    const/16 v9, -0x14

    .line 382
    :goto_1
    if-gez v9, :cond_8

    .line 383
    const-string v23, "EASAppSvc"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "addAccount faile ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 510
    .end local v4           #account:Landroid/accounts/Account;
    .end local v12           #encPassword:Ljava/lang/String;
    .end local v17           #isDeleting:Z
    .end local v18           #oldExSyncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_2
    :goto_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 511
    .restart local v6       #b:Landroid/os/Bundle;
    const-string v23, "authAccount"

    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v23, "accountType"

    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v23, "extra.htc.eas.result"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    const-string v23, "extra.htc.eas.account_id"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 515
    const-string v23, "booleanResult"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    const-string v23, "EASAppSvc"

    const-string v24, "< addAccount()"

    invoke-static/range {v23 .. v24}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    .end local v6           #b:Landroid/os/Bundle;
    .restart local v4       #account:Landroid/accounts/Account;
    .restart local v12       #encPassword:Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 353
    .local v22, uee:Ljava/lang/Exception;
    :try_start_3
    throw v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 504
    .end local v4           #account:Landroid/accounts/Account;
    .end local v12           #encPassword:Ljava/lang/String;
    .end local v22           #uee:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 505
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    iget v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    if-lez v9, :cond_2

    .line 507
    const/4 v9, -0x1

    goto :goto_2

    .line 362
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v4       #account:Landroid/accounts/Account;
    .restart local v12       #encPassword:Ljava/lang/String;
    .restart local v17       #isDeleting:Z
    .restart local v18       #oldExSyncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_3
    if-eqz v18, :cond_5

    .line 364
    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 366
    const-string v23, "EASAppSvc"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "continue create account."

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 367
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 370
    :cond_4
    const-string v23, "EASAppSvc"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "create account fail, account email is already exist."

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 371
    const/16 v9, -0x14

    goto/16 :goto_1

    .line 373
    :cond_5
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountCount()I

    move-result v23

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 374
    const/16 v9, -0x15

    goto/16 :goto_1

    .line 375
    :cond_6
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-object v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->isDuplicateDisplayName(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 376
    const/16 v9, -0x17

    goto/16 :goto_1

    .line 378
    :cond_7
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->removeDeletedAccount(Landroid/content/Context;)V

    .line 379
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/android/mail/eassvc/EASAppSvc;->createAccount(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)I

    move-result v9

    goto/16 :goto_1

    .line 386
    :cond_8
    if-nez v18, :cond_c

    .line 387
    new-instance v21, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v13}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 388
    .local v21, syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsSmartWifi:Z

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setSmartWifiCheck(Z)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncProxy:Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setSyncProxy(Lcom/htc/android/mail/eassvc/EASAppSvc$SyncProxy;)V

    .line 398
    :goto_3
    const/16 v23, -0x63

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 399
    sget-boolean v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v23, :cond_9

    const-string v23, "EASAppSvc"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "set up schedule: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-object/from16 v23, v0

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 401
    if-nez v20, :cond_a

    .line 402
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-object/from16 v23, v0

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .line 404
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeSyncOptions()V

    .line 406
    :cond_b
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->addExchangeSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->addStatusChangeListener()V

    .line 408
    const-string v23, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;

    .line 409
    if-eqz p6, :cond_13

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getFolderHierarchy(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;

    move-result-object v15

    .line 411
    .local v15, fhResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    iget v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->result:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 412
    iget v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0x3fe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->data:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 414
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->data:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 415
    .local v19, provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->writeProvisionData(Landroid/content/Context;JLcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 416
    const/16 v9, -0xc

    .line 417
    new-instance v23, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v24, 0x3f3

    const-string v25, "Provision Error, need policy"

    invoke-direct/range {v23 .. v25}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 391
    .end local v15           #fhResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    .end local v19           #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v21           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_c
    move-object/from16 v21, v18

    .line 392
    .restart local v21       #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->copyAccountInfo(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Z

    move-result v7

    .line 393
    .local v7, change:Z
    if-eqz v7, :cond_d

    .line 394
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->updateAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Z)V

    .line 396
    :cond_d
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    goto/16 :goto_3

    .line 418
    .end local v7           #change:Z
    .restart local v15       #fhResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    :cond_e
    iget v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0x400

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    iget v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0x3ff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    :cond_f
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->data:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 421
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->data:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 422
    .restart local v19       #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->writeProvisionData(Landroid/content/Context;JLcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 423
    const/16 v9, -0xe

    .line 424
    new-instance v23, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v24, 0x3f3

    const-string v25, "Provision Error, need policy"

    invoke-direct/range {v23 .. v25}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 425
    .end local v19           #provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :cond_10
    iget v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0x191

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 426
    const/16 v9, -0x16

    .line 427
    new-instance v23, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v24, 0x191

    const-string v25, "getFolderHierachy unauthorized."

    invoke-direct/range {v23 .. v25}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 428
    :cond_11
    iget v0, v15, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->errorCode:I

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 429
    const/4 v9, -0x1

    .line 430
    new-instance v23, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v24, 0x320

    const-string v25, "updateFolderHierarchy fail."

    invoke-direct/range {v23 .. v25}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 435
    :cond_12
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    move-wide/from16 v23, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-wide/high16 v25, 0x4028

    cmpl-double v23, v23, v25

    if-ltz v23, :cond_13

    .line 438
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->setDeviceInformation(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 460
    .end local v15           #fhResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    :cond_13
    :goto_4
    :try_start_6
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->addExcahngeCalendar(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 461
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->loadData()V

    .line 464
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static/range {v23 .. v23}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v12, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 466
    const-string v23, "htceas"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 468
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8

    .line 470
    .local v8, client:Landroid/content/ContentProviderClient;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v10, cv:Landroid/content/ContentValues;
    const-string v23, "account_name"

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v23, "account_type"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v23, "ungrouped_visible"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 474
    sget-object v23, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setServicesEnabled()V

    .line 478
    const/16 v23, 0x1

    const-string v24, "syncContacts"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->enableSyncSource(IZ)V

    .line 479
    const/16 v23, 0x2

    const-string v24, "syncCalendar"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->enableSyncSource(IZ)V

    .line 480
    const/16 v23, 0x3

    const-string v24, "syncMail"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->enableSyncSource(IZ)V

    .line 481
    const/16 v23, 0x4

    const-string v24, "syncTasks"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->enableSyncSource(IZ)V

    .line 482
    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->resetExchangeSyncable()V

    .line 484
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v5

    .line 485
    .local v5, activeSync:Landroid/content/SyncInfo;
    const-string v23, "htceas"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->activeSyncIsAccount(Landroid/accounts/Account;)Z

    move-result v23

    if-nez v23, :cond_15

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 488
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v14, extras:Landroid/os/Bundle;
    const-string v23, "force"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    const-string v23, "htceas"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v14}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 497
    .end local v14           #extras:Landroid/os/Bundle;
    :cond_14
    :goto_5
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->enableAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Z)V

    .line 498
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->manageULog()V

    .line 500
    sget-object v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static/range {v23 .. v23}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcaseForceDefaultAccount(Landroid/content/Context;)V

    .line 501
    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    .line 502
    sget-boolean v23, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v23, :cond_2

    const-string v23, "EASAppSvc"

    iget-wide v0, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v24, v0

    const-string v26, "EasAuthenticator.addAccount(): create success"

    invoke-static/range {v23 .. v26}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    .line 439
    .end local v5           #activeSync:Landroid/content/SyncInfo;
    .end local v8           #client:Landroid/content/ContentProviderClient;
    .end local v10           #cv:Landroid/content/ContentValues;
    .restart local v15       #fhResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    :catch_2
    move-exception v11

    .line 441
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v23, "EASAppSvc"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setDeviceInformation Error - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 491
    .end local v11           #e:Ljava/lang/Exception;
    .end local v15           #fhResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    .restart local v5       #activeSync:Landroid/content/SyncInfo;
    .restart local v8       #client:Landroid/content/ContentProviderClient;
    .restart local v10       #cv:Landroid/content/ContentValues;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getPhoneStatus()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 492
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 493
    .restart local v14       #extras:Landroid/os/Bundle;
    const-string v23, "force"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    const-string v23, "htceas"

    move-object/from16 v0, v23

    invoke-static {v4, v0, v14}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 524
    .end local v4           #account:Landroid/accounts/Account;
    .end local v5           #activeSync:Landroid/content/SyncInfo;
    .end local v8           #client:Landroid/content/ContentProviderClient;
    .end local v9           #createResult:I
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #encPassword:Ljava/lang/String;
    .end local v13           #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v14           #extras:Landroid/os/Bundle;
    .end local v17           #isDeleting:Z
    .end local v18           #oldExSyncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v20           #syncSchedule:I
    .end local v21           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_16
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 526
    .restart local v6       #b:Landroid/os/Bundle;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 527
    .local v16, intent:Landroid/content/Intent;
    const-string v23, "com.htc.android.mail"

    const-string v24, "com.htc.android.mail.easclient.ExchangeSvrSetting"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v23, "accountAuthenticatorResponse"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 533
    const-string v23, "intent.eas.mode.wizard"

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    const-string v23, "intent"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0
.end method

.method addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 609
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method addStatusChangeListener()V
    .locals 2

    .prologue
    .line 2347
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStatusChangeListenerHandle:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2348
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    const-string v1, "addStatusChangeListener()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    :cond_0
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 2353
    :cond_1
    return-void
.end method

.method public applyPolicy(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 9
    .parameter "account"

    .prologue
    const/4 v8, 0x1

    .line 3581
    if-nez p1, :cond_1

    .line 3582
    const-string v5, "EASAppSvc"

    const-string v6, "applyPolicy(): Error, ExchangeAccount set is null."

    invoke-static {v5, p1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 3608
    :cond_0
    :goto_0
    return-void

    .line 3584
    :cond_1
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v6, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    .line 3585
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v1, :cond_2

    .line 3586
    const-string v5, "EASAppSvc"

    const-string v6, "applyPolicy(): Error, cannot find this account"

    invoke-static {v5, p1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 3590
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    sget-object v6, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v5, v6, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->applyPolicy(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)I

    .line 3592
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->updateChangePasswordTime(Landroid/content/Context;)V

    .line 3593
    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 3594
    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writePolicyDoc()V

    .line 3595
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v4

    .line 3596
    .local v4, vAccList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3597
    .local v3, syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->startSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3599
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v4           #vAccList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;>;"
    :catch_0
    move-exception v0

    .line 3600
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 3601
    const-string v5, "EASAppSvc"

    const-string v6, "applyPolicy(): update EASAdmin."

    invoke-static {v5, p1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 3602
    sput-boolean v8, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->isFromAdminUpdate:Z

    .line 3603
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->disableEASAdmin(Landroid/content/Context;Z)V

    goto :goto_0

    .line 3604
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 3605
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public applySSLCertificate(JLjava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "emailAddr"

    .prologue
    .line 3348
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySSLCertificate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 3349
    :cond_0
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setPassAllCertificate(Landroid/content/Context;JLjava/lang/String;)V

    .line 3350
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 3351
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3352
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-eqz v0, :cond_1

    .line 3353
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->resetAllHttpClient()V

    .line 3356
    .end local v0           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_1
    return-void
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .parameter "emailAddr"
    .parameter "domain"
    .parameter "account"
    .parameter "password"

    .prologue
    const/4 v9, 0x1

    const/16 v8, -0xb

    const/4 v7, 0x0

    .line 3257
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v5, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v3

    .line 3258
    .local v3, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3259
    .local v4, isDeleting:Z
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    if-ne v5, v9, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    .line 3261
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3262
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "return"

    const/16 v6, -0x14

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3289
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 3264
    :cond_2
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountCount()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_3

    .line 3265
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3266
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v5, "return"

    const/16 v6, -0x15

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3269
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_3
    const/4 v0, 0x0

    .line 3270
    .local v0, autodiscoverResult:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iput-boolean v9, v5, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInAutodiscover:Z

    .line 3272
    :try_start_0
    new-instance v5, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    sget-object v6, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    .line 3273
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3277
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    :goto_1
    iput-boolean v7, v5, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInAutodiscover:Z

    .line 3279
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "return"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_5

    .line 3281
    sget-boolean v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 3282
    const-string v5, "EASAppSvc"

    const-string v6, "Auto discover cancel by user."

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3285
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v5, "return"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3274
    .end local v1           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 3275
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3277
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iput-boolean v7, v6, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInAutodiscover:Z

    throw v5

    .line 3288
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    move-object v1, v0

    .line 3289
    goto :goto_0
.end method

.method public cancelMailOperation(JILjava/lang/String;)V
    .locals 6
    .parameter "accountId"
    .parameter "option"
    .parameter "param"

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x3

    .line 3894
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3895
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3896
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3897
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3898
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3899
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3901
    packed-switch p3, :pswitch_data_0

    .line 3921
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3922
    const-string v1, "EASAppSvc"

    const-string v2, "cancel operation error: parameter is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    :goto_0
    return-void

    .line 3903
    :pswitch_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3904
    const-string v1, "EASAppSvc"

    const-string v2, "cancel operation error: parameter is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3907
    :cond_0
    const/16 v1, 0x29

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3908
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mailbody.uid"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 3912
    :pswitch_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3913
    const-string v1, "EASAppSvc"

    const-string v2, "cancel operation error: parameter is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3916
    :cond_1
    iput v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3917
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.part_id"

    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3918
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 3925
    :cond_2
    iput v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3926
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.part_id"

    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3927
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 3901
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cancelOof(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 3789
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3790
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3791
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3792
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3793
    const/16 v1, 0x3b

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3794
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3795
    return-void
.end method

.method public cancelSearchGlobalMail(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    const/4 v4, 0x3

    .line 3816
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3817
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3818
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3819
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3820
    const/16 v1, 0x38

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3821
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3822
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3823
    return-void
.end method

.method public cancelSync(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3226
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASAppSvc"

    const-string v2, "- cancelSync()"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3227
    :cond_0
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3228
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_1

    .line 3229
    const-string v1, "EASAppSvc"

    const-string v2, "< cancelSync(): Error, Cannot find accountId"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3233
    :goto_0
    return-void

    .line 3232
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_0
.end method

.method public cancelSyncSource(JI)V
    .locals 4
    .parameter "accountId"
    .parameter "syncType"

    .prologue
    .line 3236
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- cancelSyncSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3237
    :cond_0
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3238
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_1

    .line 3239
    const-string v1, "EASAppSvc"

    const-string v2, "< cancelSyncSource(): Error, Cannot find accountId"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3244
    :goto_0
    return-void

    .line 3243
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0, p3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V

    goto :goto_0
.end method

.method public cancelSyncSourceByMode(JII)V
    .locals 4
    .parameter "accountId"
    .parameter "srcType"
    .parameter "mode"

    .prologue
    .line 3247
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSyncSourceByMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3248
    :cond_0
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3249
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_1

    .line 3250
    const-string v1, "EASAppSvc"

    const-string v2, "< cancelSyncSourceByMode(): Error, Cannot find accountId"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3254
    :goto_0
    return-void

    .line 3253
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0, p3, p4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;II)V

    goto :goto_0
.end method

.method public deleteExchangeAccount(JZLcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z
    .locals 13
    .parameter "accountId"
    .parameter "resetAccount"
    .parameter "exSyncSources"

    .prologue
    .line 2614
    sget-object v9, Lcom/htc/android/mail/eassvc/EASAppSvc;->DeleteAccountSynchObject:Ljava/lang/Object;

    monitor-enter v9

    .line 2615
    :try_start_0
    const-string v8, "EASAppSvc"

    const-string v10, "> deleteExchangeServer()"

    invoke-static {v8, p1, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2616
    const v8, 0xf42a4

    const-string v10, "Delete exchange account"

    invoke-static {v8, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2618
    if-nez p4, :cond_0

    .line 2619
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v8, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object p4

    .line 2620
    if-nez p4, :cond_0

    .line 2621
    const-string v8, "EASAppSvc"

    const-string v10, "deleteExchangeAccount(): Error, cannot find account"

    invoke-static {v8, p1, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2622
    const/4 v8, 0x0

    monitor-exit v9

    .line 2725
    :goto_0
    return v8

    .line 2626
    :cond_0
    const/4 v7, 0x0

    .line 2627
    .local v7, pwrLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2629
    .local v1, accountName:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2630
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2631
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2633
    :cond_1
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const-string v10, "DeleteExchangeAccount"

    invoke-static {v8, v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v7

    .line 2636
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopSyncSchedule()V

    .line 2637
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopDirectpush()V

    .line 2638
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopPeakTimeCheck()V

    .line 2640
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 2641
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->waitForSyncComplete(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 2654
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->ALL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/4 v11, 0x1

    invoke-static {v8, p1, p2, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    .line 2655
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->cancelErrorNotification(Landroid/content/Context;J)V

    .line 2657
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->markAsDelete(Landroid/content/Context;J)V

    .line 2658
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->setMailShortcutState(Landroid/content/Context;)V

    .line 2659
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, p2}, Lcom/htc/android/mail/MailCommon;->removeLastAccountEnter(Landroid/content/Context;J)V

    .line 2660
    new-instance v2, Landroid/accounts/Account;

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-direct {v2, v8, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    .local v2, acct:Landroid/accounts/Account;
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 2664
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v8, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->removeExchangeSyncSource(J)Z

    .line 2667
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-static {v8}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isAnyAccountProvision(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)Z

    move-result v3

    .line 2668
    .local v3, bHaveAdmin:Z
    if-nez v3, :cond_2

    .line 2669
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->disableEASAdmin(Landroid/content/Context;Z)V

    .line 2672
    :cond_2
    if-nez p3, :cond_3

    .line 2673
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const/4 v12, 0x0

    invoke-static {v8, v10, v11, v12}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setPassAllCertificate(Landroid/content/Context;JLjava/lang/String;)V

    .line 2674
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V

    .line 2675
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-direct {p0, v10, v11}, Lcom/htc/android/mail/eassvc/EASAppSvc;->removeDeviceConfig(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2677
    :try_start_2
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Lcom/htc/android/mail/eassvc/core/SyncManager;->resetDevicePolicy(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2683
    :cond_3
    :goto_1
    :try_start_3
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->removeSyncdDatabase(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 2685
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v8, v10}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->deleteAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Z

    .line 2686
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->removeStatusChangeListener()V

    .line 2693
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v8}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountCount()I

    move-result v8

    if-nez v8, :cond_4

    .line 2694
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setServicesDisabled()V

    .line 2698
    :cond_4
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastEASAccountRemoved(Landroid/content/Context;J)V

    .line 2699
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v8, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastProgressMessage(Landroid/content/Context;II)V

    .line 2701
    sget-boolean v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "EASAppSvc"

    const-string v10, "deleteExchagneServer(): create buffer file"

    invoke-static {v8, p1, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2705
    :cond_5
    const-wide/16 v10, -0x1

    cmp-long v8, p1, v10

    if-eqz v8, :cond_7

    .line 2706
    :try_start_4
    sget-boolean v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "EASAppSvc"

    const-string v10, "deleteExchagneServer(): update mail shortcut"

    invoke-static {v8, p1, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2707
    :cond_6
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/htc/android/mail/MailShortcut;->clearMailShortcut(Landroid/content/Context;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2713
    :cond_7
    :goto_2
    :try_start_5
    new-instance v6, Landroid/content/Intent;

    const-string v8, "action.easprogressdialog.dismiss"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2714
    .local v6, intent:Landroid/content/Intent;
    const-string v8, "extra.easprogressdialog.dialogaction"

    sget-object v10, Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/android/mail/easclient/EASProgressDialog$DialogAction;

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2715
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2719
    :try_start_6
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2720
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2722
    .end local v2           #acct:Landroid/accounts/Account;
    .end local v3           #bHaveAdmin:Z
    .end local v6           #intent:Landroid/content/Intent;
    :goto_3
    sget-boolean v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "EASAppSvc"

    const-string v10, "< deleteExchangeServer()"

    invoke-static {v8, p1, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2723
    :cond_8
    const v8, 0xf42a4

    const-string v10, "Delete exchange account finish"

    invoke-static {v8, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2724
    sget-boolean v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->MAIL_DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "EASAppSvc"

    const-string v10, "[ATS][com.htc.android.mail][delete_account][successful]"

    invoke-static {v8, p1, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2725
    :cond_9
    const/4 v8, 0x1

    monitor-exit v9

    goto/16 :goto_0

    .line 2726
    .end local v1           #accountName:Ljava/lang/String;
    .end local v7           #pwrLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 2678
    .restart local v1       #accountName:Ljava/lang/String;
    .restart local v2       #acct:Landroid/accounts/Account;
    .restart local v3       #bHaveAdmin:Z
    .restart local v7       #pwrLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    :catch_0
    move-exception v5

    .line 2679
    .local v5, e2:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 2716
    .end local v2           #acct:Landroid/accounts/Account;
    .end local v3           #bHaveAdmin:Z
    .end local v5           #e2:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2717
    .local v4, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2719
    :try_start_9
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2720
    sget-object v8, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 2709
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #acct:Landroid/accounts/Account;
    .restart local v3       #bHaveAdmin:Z
    :catch_2
    move-exception v4

    .line 2710
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 2719
    .end local v2           #acct:Landroid/accounts/Account;
    .end local v3           #bHaveAdmin:Z
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :try_start_b
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2720
    sget-object v10, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2719
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public deleteExchangeRemainDatas()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2591
    sget-object v7, Lcom/htc/android/mail/eassvc/EASAppSvc;->DeleteAccountSynchObject:Ljava/lang/Object;

    monitor-enter v7

    .line 2592
    :try_start_0
    const-string v6, "EASAppSvc"

    const-string v8, "> deleteAllExchangeAccount()"

    invoke-static {v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const v6, 0xf42a4

    const-string v8, "Delete exchange remain account"

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2594
    sget-object v6, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v8, "com.htc.android.mail.eas"

    invoke-virtual {v6, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 2596
    .local v5, systemAccountList:[Landroid/accounts/Account;
    move-object v1, v5

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 2597
    .local v0, account:Landroid/accounts/Account;
    sget-object v6, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v2

    .line 2598
    .local v2, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v2, :cond_0

    .line 2599
    const-string v6, "EASAppSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteExchangeRemainDatas(): delete account-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->removeAllSyncPeople(Landroid/content/ContentResolver;Ljava/lang/String;Z)I

    .line 2601
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->removeAllEvents(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 2602
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->removeAllTasks(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2603
    sget-object v6, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v8, v9}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 2596
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2607
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_1
    const-string v6, "EASAppSvc"

    const-string v8, "< deleteAllExchangeAccount()"

    invoke-static {v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    monitor-exit v7

    .line 2609
    return v10

    .line 2608
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #systemAccountList:[Landroid/accounts/Account;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public enableSyncSource(JIZ)V
    .locals 7
    .parameter "accountId"
    .parameter "srcType"
    .parameter "enabled"

    .prologue
    .line 3430
    sget-boolean v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "EASAppSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- enableSyncSource(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, p2, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3431
    :cond_0
    const/4 v1, 0x0

    .line 3432
    .local v1, haveChange:Z
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3433
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_1

    .line 3434
    const-string v4, "EASAppSvc"

    const-string v5, "- enableSyncSource(): Error, cannot find account:"

    invoke-static {v4, p1, p2, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3453
    :goto_0
    return-void

    .line 3437
    :cond_1
    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 3438
    .local v3, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 3439
    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isEnabled()Z

    move-result v4

    if-eq v4, p4, :cond_2

    .line 3440
    invoke-interface {v3, p4}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setEnabled(Z)V

    .line 3441
    const/4 v1, 0x1

    goto :goto_1

    .line 3446
    .end local v3           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_3
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->resetExchangeSyncable()V

    .line 3447
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3449
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopDirectpush()V

    .line 3451
    :cond_4
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    goto :goto_0
.end method

.method public fetchMailItem(JLjava/lang/String;Ljava/lang/String;IJIZ)I
    .locals 5
    .parameter "accountId"
    .parameter "collId"
    .parameter "uid"
    .parameter "type"
    .parameter "truncationSize"
    .parameter "AllOrNone"
    .parameter "globalMail"

    .prologue
    const/4 v4, 0x3

    .line 3529
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3530
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3531
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3532
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3533
    const/16 v1, 0x28

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3534
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3535
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.collection_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3536
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mailbody.uid"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mailbody.type"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3538
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mailbody.all_or_none"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3539
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mailbody.truncation_size"

    invoke-virtual {v1, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3540
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mailbody.global"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3541
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3542
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3543
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public forceResume()V
    .locals 6

    .prologue
    .line 2860
    const-string v2, "EASAppSvc"

    const-string v3, "forceResume()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    monitor-enter v3

    .line 2862
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2863
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2864
    .local v1, item:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASAppSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had pause EASAppSvc and never resume."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2868
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2866
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 2868
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2869
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->resume()V

    .line 2870
    return-void
.end method

.method public getAccountCount()I
    .locals 1

    .prologue
    .line 3377
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountCount()I

    move-result v0

    return v0
.end method

.method public getAccountId(Ljava/lang/String;)J
    .locals 4
    .parameter "accountName"

    .prologue
    .line 3359
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3360
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3361
    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- getAccountId(): Error, cannot find account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    const-wide/16 v1, -0x1

    .line 3364
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    goto :goto_0
.end method

.method public getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3368
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3369
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3370
    const-string v1, "EASAppSvc"

    const-string v2, "- getAccountInfo(): Error, cannot find account"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3371
    const/4 v1, 0x0

    .line 3373
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    goto :goto_0
.end method

.method public getAttachment(JJLjava/lang/String;Ljava/lang/String;ZI)I
    .locals 5
    .parameter "accountId"
    .parameter "partId"
    .parameter "fileRef"
    .parameter "fileName"
    .parameter "globalAttach"
    .parameter "attachType"

    .prologue
    const/4 v4, 0x3

    .line 3512
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3513
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3514
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3515
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3516
    const/16 v1, 0x1e

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3517
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3518
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.file_ref"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.file_name"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.part_id"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3521
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.global"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3522
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.attachtype"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3523
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3524
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3525
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getDefaultSyncMailBoxs(J)[Ljava/lang/String;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3947
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3948
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3949
    const-string v1, "EASAppSvc"

    const-string v2, "getDefaultSyncMailbox(): Error, cannot find account."

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3950
    const/4 v1, 0x0

    .line 3952
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getDefaultSyncMailbox()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 3621
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/android/mail/eassvc/core/SyncException;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExchangeAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    .locals 5
    .parameter "accountId"

    .prologue
    .line 3381
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    .line 3382
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v1, :cond_1

    .line 3383
    const-string v2, "EASAppSvc"

    const-string v3, "- getExchangeAccountInfo: Error, cannot find account"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3384
    const/4 v0, 0x0

    .line 3403
    :cond_0
    :goto_0
    return-object v0

    .line 3386
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "EASAppSvc"

    const-string v3, "> getExchangeAccountInfo"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 3387
    :cond_2
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;-><init>()V

    .line 3388
    .local v0, account:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    .line 3389
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    .line 3390
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    .line 3391
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    .line 3392
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->password:Ljava/lang/String;

    .line 3393
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-boolean v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->secureFlag:Z

    .line 3394
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    iput v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->daysToSync:I

    .line 3395
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    .line 3396
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    iput v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->fetchFreq:I

    .line 3397
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isPassAllCertificate(Landroid/content/Context;J)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->verifyCertFlag:Z

    .line 3398
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->contactSyncSource:Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;->isEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    .line 3399
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->calendarSyncSource:Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;->isEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    .line 3400
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    .line 3402
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASAppSvc"

    const-string v3, "< getExchangeAccountInfo"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public getLastSyncInfo(J)Ljava/util/List;
    .locals 7
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3417
    .local v2, lastSyncInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v5, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3418
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_1

    .line 3419
    const-string v5, "EASAppSvc"

    const-string v6, "- getLastSyncInfo(): Error, cannot find account"

    invoke-static {v5, p1, p2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3426
    :cond_0
    return-object v2

    .line 3422
    :cond_1
    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 3423
    .local v4, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v4}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    move-result-object v3

    .line 3424
    .local v3, syncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMailboxList(J)[Lcom/htc/android/mail/eassvc/pim/EASMailbox;
    .locals 8
    .parameter "accountId"

    .prologue
    .line 3955
    sget-object v6, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v6, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v2

    .line 3956
    .local v2, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v2, :cond_0

    .line 3957
    const-string v6, "EASAppSvc"

    const-string v7, "getDefaultSyncMailbox(): Error, cannot find account."

    invoke-static {v6, p1, p2, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3958
    const/4 v6, 0x0

    .line 3975
    :goto_0
    return-object v6

    .line 3960
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3961
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASMailbox;>;"
    iget-object v6, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getSyncCollection()Ljava/util/ArrayList;

    move-result-object v1

    .line 3962
    .local v1, colls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 3963
    .local v0, coll:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    new-instance v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;

    invoke-direct {v5}, Lcom/htc/android/mail/eassvc/pim/EASMailbox;-><init>()V

    .line 3964
    .local v5, mailbox:Lcom/htc/android/mail/eassvc/pim/EASMailbox;
    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->ServerID:Ljava/lang/String;

    .line 3965
    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->ParentID:Ljava/lang/String;

    .line 3966
    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->DisplayName:Ljava/lang/String;

    .line 3967
    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->HierarchyName:Ljava/lang/String;

    .line 3968
    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->Type:Ljava/lang/String;

    .line 3969
    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->SyncKey:Ljava/lang/String;

    .line 3970
    iget-boolean v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    iput-boolean v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncDown:Z

    .line 3971
    iget-boolean v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    iput-boolean v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncUp:Z

    .line 3972
    iget-boolean v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    iput-boolean v6, v5, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->defaultSync:Z

    .line 3973
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3975
    .end local v0           #coll:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v5           #mailbox:Lcom/htc/android/mail/eassvc/pim/EASMailbox;
    :cond_1
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/eassvc/pim/EASMailbox;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/htc/android/mail/eassvc/pim/EASMailbox;

    goto :goto_0
.end method

.method public getMailboxRefreshing(J)Ljava/lang/String;
    .locals 4
    .parameter "accountId"

    .prologue
    .line 3869
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASAppSvc"

    const-string v3, "- getMailboxRefreshing()"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3870
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->getRunningRequest(I)Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v1

    .line 3871
    .local v1, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    if-eqz v1, :cond_2

    iget-wide v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 3873
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.collection_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3874
    .local v0, collId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3880
    .end local v0           #collId:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3877
    .restart local v0       #collId:Ljava/lang/String;
    :cond_1
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.collection_id_running"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3880
    .end local v0           #collId:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOOF(JLjava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    .locals 5
    .parameter "accountId"
    .parameter "bodyType"

    .prologue
    const/4 v4, 0x3

    .line 3759
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3760
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3761
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3762
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3763
    const/16 v1, 0x35

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3764
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3765
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.oof.body_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3766
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3767
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3768
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3769
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    .line 3771
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneStatus()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2790
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWiMaxNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isUSBNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2791
    :cond_0
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EASAppSvc"

    const-string v2, "getPhoneStatus: is wifi network"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    :cond_1
    :goto_0
    return v0

    .line 2793
    :cond_2
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2794
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "EASAppSvc"

    const-string v1, "getPhoneStatus: is airplane mode"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2796
    :cond_4
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isDataRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2797
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "EASAppSvc"

    const-string v1, "getPhoneStatus: is in data roaming"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 2800
    :cond_6
    sget-boolean v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EASAppSvc"

    const-string v2, "getPhoneStatus: normal"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProgressing()I
    .locals 1

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInCreateAccount:Z

    if-eqz v0, :cond_0

    .line 3335
    const/4 v0, 0x1

    .line 3343
    :goto_0
    return v0

    .line 3336
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInDeleteAccount:Z

    if-eqz v0, :cond_1

    .line 3337
    const/4 v0, 0x2

    goto :goto_0

    .line 3338
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInAutodiscover:Z

    if-eqz v0, :cond_2

    .line 3339
    const/4 v0, 0x3

    goto :goto_0

    .line 3340
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInTestServer:Z

    if-eqz v0, :cond_3

    .line 3341
    const/4 v0, 0x4

    goto :goto_0

    .line 3343
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvisionDoc(J)Landroid/os/Bundle;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3611
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3612
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3613
    const-string v1, "EASAppSvc"

    const-string v2, "getPolicyDoc(): Error, cannot find account id"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3614
    const/4 v1, 0x0

    .line 3616
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->provisionDocToBundle(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getScheduleOption(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 3706
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3707
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getPureMappingSchedule()I

    move-result v1

    return v1
.end method

.method public getServerProtocol(J)D
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3649
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3650
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3651
    const-string v1, "EASAppSvc"

    const-string v2, "getServerProtocol(): error! cannot find account"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3652
    const-wide/high16 v1, 0x4004

    .line 3654
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    goto :goto_0
.end method

.method public getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 4
    .parameter "accountId"

    .prologue
    .line 3658
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3659
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3660
    const-string v1, "EASAppSvc"

    const-string v2, "getSyncOptions(): error! cannot find account"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3661
    new-instance v1, Lcom/htc/android/mail/eassvc/pim/EASOptions;

    const-wide/high16 v2, -0x4010

    invoke-direct {v1, v2, v3}, Lcom/htc/android/mail/eassvc/pim/EASOptions;-><init>(D)V

    .line 3663
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    goto :goto_0
.end method

.method public isAllowToSyncWhenRoaming(JZ)Z
    .locals 4
    .parameter "accountId"
    .parameter "isManualSync"

    .prologue
    .line 3140
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASAppSvc"

    const-string v3, "isAllowToSyncWhenRoaming>"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3141
    :cond_0
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isDataRoaming(Landroid/content/Context;)Z

    move-result v0

    .line 3142
    .local v0, isNowRoaming:Z
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget-boolean v1, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    .line 3149
    .local v1, isSyncWhileRoaming:Z
    if-nez p3, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 3150
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "EASAppSvc"

    const-string v3, "isNeedToSyncNow: Abort Sync"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;JLjava/lang/String;)V

    .line 3151
    :cond_1
    const/4 v2, 0x0

    .line 3154
    :goto_0
    return v2

    .line 3153
    :cond_2
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "EASAppSvc"

    const-string v3, "isNeedToSyncNow: Continue to sync"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3154
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAnyAccountProvision()Z
    .locals 1

    .prologue
    .line 3978
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isAnyAccountProvision(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)Z

    move-result v0

    return v0
.end method

.method public isAttachDownloading(JLjava/lang/String;)Z
    .locals 5
    .parameter "accountId"
    .parameter "fileReference"

    .prologue
    const/4 v4, 0x3

    .line 3499
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3500
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3501
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3502
    const/16 v1, 0x21

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3503
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3504
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3505
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.attach.file_ref"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3507
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3508
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isBusy(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v0

    return v0
.end method

.method public isConnWhileRoaming(J)Z
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3884
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3885
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3886
    const-string v1, "EASAppSvc"

    const-string v2, "isConnWhileRoaming(): cannot find account"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3887
    const/4 v1, 0x0

    .line 3889
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isConnWhileRoaming()Z

    move-result v1

    goto :goto_0
.end method

.method isExchangeEnable(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z
    .locals 3
    .parameter "exSyncSources"

    .prologue
    .line 3491
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 3492
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3493
    const/4 v2, 0x1

    .line 3495
    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSendingMail(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 3861
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isSendingMail(J)Z

    move-result v0

    return v0
.end method

.method public isSyncSourceEnabled(JI)Z
    .locals 6
    .parameter "accountId"
    .parameter "srcType"

    .prologue
    const/4 v3, 0x0

    .line 3456
    sget-object v4, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3457
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_1

    .line 3458
    const-string v4, "EASAppSvc"

    const-string v5, "- isSyncSourceEnabled(): Error, cannot find account"

    invoke-static {v4, p1, p2, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3466
    :cond_0
    :goto_0
    return v3

    .line 3461
    :cond_1
    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 3462
    .local v2, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 3463
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isEnabled()Z

    move-result v3

    goto :goto_0
.end method

.method public isSyncSourceEnabledFromFile(JI)Z
    .locals 3
    .parameter "accountId"
    .parameter "srcType"

    .prologue
    .line 3469
    const/4 v1, 0x0

    .line 3470
    .local v1, syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;-><init>()V

    .line 3471
    .local v0, account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 3472
    packed-switch p3, :pswitch_data_0

    .line 3481
    :pswitch_0
    new-instance v1, Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 3487
    .restart local v1       #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    :goto_0
    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->isEnabled()Z

    move-result v2

    return v2

    .line 3474
    :pswitch_1
    new-instance v1, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;

    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/mail/eassvc/core/ContactSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 3475
    .restart local v1       #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    goto :goto_0

    .line 3477
    :pswitch_2
    new-instance v1, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;

    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/mail/eassvc/core/CalendarSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 3478
    .restart local v1       #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    goto :goto_0

    .line 3484
    :pswitch_3
    new-instance v1, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    .end local v1           #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .restart local v1       #syncSource:Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
    goto :goto_0

    .line 3472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isSyncSourceRunning(JI)Z
    .locals 1
    .parameter "accountId"
    .parameter "syncSrcType"

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isSyncSourceRunning(JI)Z

    move-result v0

    return v0
.end method

.method public isTaskFOTA(Ljava/lang/String;)Z
    .locals 4
    .parameter "accountName"

    .prologue
    const/4 v2, 0x0

    .line 4015
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v3, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    .line 4016
    .local v1, syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncSource(I)Lcom/htc/android/mail/eassvc/core/SyncSource;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    .line 4017
    .local v0, syncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;
    if-nez v0, :cond_1

    .line 4020
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isColIdExist()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public meetingResp(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "accountId"
    .parameter "collId"
    .parameter "RequestId"
    .parameter "usrResp"

    .prologue
    const/4 v4, 0x3

    .line 3717
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3718
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3719
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3720
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3721
    const/16 v1, 0x33

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3722
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3723
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.collection_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.message_uid"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.meetingResp.cmd"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3726
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3727
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3728
    return-void
.end method

.method public moveMail(JLcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z
    .locals 6
    .parameter "accountId"
    .parameter "moveItems"

    .prologue
    const/4 v5, 0x3

    .line 3740
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 3741
    .local v0, condition:Landroid/os/ConditionVariable;
    new-instance v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3742
    .local v1, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3743
    iput v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3744
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3745
    const/16 v2, 0x34

    iput v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3746
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3747
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.mail.movemail.item"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3748
    iput v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3749
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3750
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 3751
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3752
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3754
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 695
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onBind():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_0
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$EasAuthenticator;

    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$EasAuthenticator;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$EasAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    .line 698
    :cond_1
    const-string v0, "com.htc.android.mail.eassvc.EASAppSvc.bind"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPublicBinder:Lcom/htc/android/pim/eas/IEASSvc$Stub;

    invoke-virtual {v0}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 700
    :cond_2
    const-string v0, "com.htc.task.source"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mTaskBinder:Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;

    invoke-virtual {v0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mBinder:Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 714
    const-string v0, "EASAppSvc"

    const-string v1, "- onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 717
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    .line 723
    monitor-enter p0

    .line 729
    :try_start_0
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    .line 730
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->start()V

    .line 731
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendEmptyMessage(I)V

    .line 732
    monitor-exit p0

    .line 733
    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 766
    const-string v0, "EASAppSvc"

    const-string v1, "- onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendEmptyMessage(I)V

    .line 771
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 737
    if-eqz p1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_0
    if-nez p1, :cond_1

    .line 741
    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onStart(), intent = null , ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    .line 762
    :goto_0
    return-void

    .line 744
    :cond_1
    const-string v1, "android.intent.action.eas.setService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 746
    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onStart(), intent = ACTION_KEEP_EAS_AS_SERVICE , ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_2
    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onStart(), intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    if-eqz v1, :cond_3

    .line 754
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 755
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 756
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 757
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 758
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 760
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    const-string v1, "EASAppSvc"

    const-string v2, "onStart(): Error, mMainHandler is null."

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 708
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onUnbind():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->registerEventCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 3548
    return-void
.end method

.method removeStatusChangeListener()V
    .locals 2

    .prologue
    .line 2355
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2356
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    const-string v1, "removeStatusChangeListener()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    :cond_0
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 2359
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 2360
    return-void
.end method

.method public resendSyncEvent(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3407
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3408
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3409
    const-string v1, "EASAppSvc"

    const-string v2, "resendSyncEvent(): Error! exSyncSources is null."

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3413
    :goto_0
    return-void

    .line 3412
    :cond_0
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-static {v1, v0, v2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    goto :goto_0
.end method

.method public resetAdminPolicy()V
    .locals 2

    .prologue
    .line 3994
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getProvisionDocList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->aggregatePolicy(Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v0

    .line 3995
    .local v0, aggrProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->setAggregateProvisionDoc(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 3996
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->enforcePolicyToAdmin(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 3997
    return-void
.end method

.method public searchGAL(Ljava/lang/String;Ljava/lang/String;Z)Lcom/htc/android/pim/eas/EASGalSearchResult;
    .locals 5
    .parameter "accountName"
    .parameter "criteria"
    .parameter "fromComposeActivity"

    .prologue
    const/4 v1, 0x0

    .line 3839
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3840
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3841
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    if-nez v2, :cond_1

    .line 3842
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchGAL("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Error, cannot find account"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    :cond_0
    :goto_0
    return-object v1

    .line 3845
    :cond_1
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3846
    const/4 v2, -0x2

    iput v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3847
    const/16 v2, 0xf

    iput v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3848
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3849
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.gal.query_string"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.gal.query_from_compose_string"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3851
    const/4 v2, 0x3

    iput v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3852
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3853
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3854
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/pim/eas/EASGalSearchResult;

    goto :goto_0
.end method

.method public searchGlobalMail(JLcom/htc/android/mail/eassvc/pim/EASMailSearchElement;Z)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .locals 5
    .parameter "accountId"
    .parameter "searchElement"
    .parameter "searchMore"

    .prologue
    const/4 v4, 0x3

    .line 3798
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3799
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3800
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3801
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3802
    const/16 v1, 0x37

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3803
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3804
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.search.mail.element"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3805
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.search.mail.more"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3806
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3807
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3808
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3809
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    .line 3811
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMail(JILcom/htc/android/mail/eassvc/pim/EASMailSendItem;)V
    .locals 4
    .parameter "accountId"
    .parameter "meetingResp"
    .parameter "item"

    .prologue
    .line 3711
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3712
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p3, p4, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailSender;->encapsulateSendMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;ZZ)Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v1

    .line 3713
    .local v1, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3714
    return-void
.end method

.method public sendMeetingMail(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 3216
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3217
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3218
    const/4 v1, -0x2

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3219
    const/16 v1, 0x3a

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3220
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3221
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3222
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3223
    return-void
.end method

.method public sendMeetingMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;J)V
    .locals 3
    .parameter "exSyncSources"
    .parameter "calendarEventId"

    .prologue
    .line 3046
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> sendMeetingMail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 3047
    :cond_0
    if-nez p1, :cond_2

    .line 3048
    const-string v0, "EASAppSvc"

    const-string v1, "< sendMeetingMail: Error, sync sources null"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 3064
    :cond_1
    :goto_0
    return-void

    .line 3050
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3

    .line 3051
    const-string v0, "EASAppSvc"

    const-string v1, "< sendMeetingMail: Error, calendarEventId null"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0

    .line 3054
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/eassvc/EASAppSvc$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc$8;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3063
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "< sendMeetingMail"

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultSyncMailbox(J[Ljava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "defaultSyncMailbox"

    .prologue
    .line 3933
    const-string v1, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultSyncMailbox()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3934
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3935
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_1

    .line 3936
    const-string v1, "EASAppSvc"

    const-string v2, "setDefaultSyncMailbox(): Error, cannot find account."

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3944
    :cond_0
    :goto_0
    return-void

    .line 3939
    :cond_1
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v1, p3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setDefaultSyncMailbox([Ljava/lang/String;)V

    .line 3940
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3941
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopDirectpush()V

    .line 3942
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startDirectpush()V

    goto :goto_0
.end method

.method public setMailFilterType(JI)V
    .locals 4
    .parameter "accountId"
    .parameter "mailFilterType"

    .prologue
    .line 3667
    const-string v2, "EASAppSvc"

    const-string v3, "- setMailFilterType()"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 3668
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3669
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3670
    const-string v2, "EASAppSvc"

    const-string v3, "setMailFilterType(): error! cannot find account"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3692
    :goto_0
    return-void

    .line 3673
    :cond_0
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    if-eq v2, p3, :cond_3

    const/4 v1, 0x1

    .line 3674
    .local v1, mailFilterChange:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 3675
    const-string v2, "EASAppSvc"

    const-string v3, "- setMailFilterType() - mailFilterChange"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 3676
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSyncSource(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V

    .line 3678
    :cond_1
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iput p3, v2, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    .line 3679
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeSyncOptions()V

    .line 3682
    if-eqz v1, :cond_2

    .line 3683
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/eassvc/EASAppSvc$9;

    invoke-direct {v3, p0, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$9;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3691
    :cond_2
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastOptionChange(Landroid/content/Context;)V

    goto :goto_0

    .line 3673
    .end local v1           #mailFilterChange:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setOof(JLcom/htc/android/mail/eassvc/pim/EASOofRequest;)I
    .locals 5
    .parameter "accountId"
    .parameter "oofRequest"

    .prologue
    const/4 v4, 0x3

    .line 3776
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3777
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3778
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3779
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3780
    const/16 v1, 0x36

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3781
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3782
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.oof.request"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3783
    iput v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3784
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3785
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public setPause(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 2817
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2826
    :goto_0
    return-void

    .line 2819
    :cond_0
    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPause("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    monitor-enter v1

    .line 2821
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2822
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2824
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2825
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->pause()V

    goto :goto_0

    .line 2824
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setResume(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 2829
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setResume(Ljava/lang/String;I)V

    .line 2830
    return-void
.end method

.method public setResume(Ljava/lang/String;I)V
    .locals 7
    .parameter "tag"
    .parameter "delayTime"

    .prologue
    const/16 v6, 0x16

    .line 2832
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2858
    :cond_0
    :goto_0
    return-void

    .line 2833
    :cond_1
    if-lez p2, :cond_2

    .line 2834
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    :goto_1
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    monitor-enter v3

    .line 2839
    :goto_2
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2840
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2842
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2836
    :cond_2
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2842
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2843
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .line 2844
    .local v0, resumeTime:J
    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mGlobalResumeDelayTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2845
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mGlobalResumeDelayTime:J

    .line 2846
    if-lez p2, :cond_4

    .line 2847
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    if-eqz v2, :cond_0

    .line 2848
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-virtual {v2, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->removeMessages(I)V

    .line 2849
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    iget-wide v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mGlobalResumeDelayTime:J

    invoke-virtual {v2, v6, v3, v4}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendEmptyMessageAtTime(IJ)V

    goto :goto_0

    .line 2852
    :cond_4
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    monitor-enter v3

    .line 2853
    :try_start_2
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->mPauseSvcList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 2854
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->resume()V

    .line 2855
    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V
    .locals 3
    .parameter "accountId"
    .parameter "options"

    .prologue
    .line 3694
    const-string v1, "EASAppSvc"

    const-string v2, "- setSyncOptions()"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 3695
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3696
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 3697
    const-string v1, "EASAppSvc"

    const-string v2, "setSyncOptions(): Error, cannot find account"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3704
    :goto_0
    return-void

    .line 3700
    :cond_0
    iput-object p3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    .line 3701
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeSyncOptions()V

    .line 3702
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastOptionChange(Landroid/content/Context;)V

    .line 3703
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    goto :goto_0
.end method

.method startService()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.eas.setService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    return-void
.end method

.method public startSync(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    const/4 v2, 0x1

    .line 2873
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 2874
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v0, :cond_0

    .line 2875
    const-string v1, "EASAppSvc"

    const-string v2, "startSync(): Error, cannot find account"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2879
    :goto_0
    return-void

    .line 2877
    :cond_0
    invoke-direct {p0, v0, v2, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->startSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V

    goto :goto_0
.end method

.method public stopAutoDiscover()V
    .locals 1

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    if-eqz v0, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->autodiscoverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->stopAutoDiscover()V

    .line 3296
    :cond_0
    return-void
.end method

.method stopService()V
    .locals 2

    .prologue
    .line 278
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    const-string v1, "stopService()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 280
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopSelf()V

    .line 281
    return-void
.end method

.method stopService(I)V
    .locals 5
    .parameter "startId"

    .prologue
    .line 283
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 287
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "EASAppSvc"

    const-string v3, "stopSelf()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopSelf()V

    .line 303
    :cond_2
    return-void

    .line 290
    :cond_3
    sget-boolean v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 292
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopService(): remain - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopServiceForSyncEnd()V
    .locals 10

    .prologue
    .line 249
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    .line 250
    .local v5, keyset:[Ljava/lang/Integer;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/Integer;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v4, v1, v2

    .line 251
    .local v4, key:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.htc.android.eas.syncContacts"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.android.eas.syncCalendar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.android.eas.syncEMail"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.task.ACTION_REQUEST_SYNC"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.android.mail.intent.startSync"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.android.mail.intent.folderUpdate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.eas.scheduled.sync.action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.htc.eas.schedule.power_saving.action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.eas.setService"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 261
    :cond_0
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 266
    sget-boolean v7, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "EASAppSvc"

    const-string v8, "stopSelf()"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopSelf()V

    .line 275
    .end local v2           #i$:I
    :cond_4
    return-void

    .line 269
    .restart local v2       #i$:I
    :cond_5
    sget-boolean v7, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 270
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 271
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "EASAppSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stopService(): remain - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopTestServer()V
    .locals 1

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    if-eqz v0, :cond_0

    .line 3323
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->StopTestServer()V

    .line 3325
    :cond_0
    return-void
.end method

.method public syncCalendar(JZ)V
    .locals 8
    .parameter "accountId"
    .parameter "blocking"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3083
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v6, "EASAppSvc"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "> syncCalendar()"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_2

    const-string v0, " Blocking"

    :goto_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, p1, p2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3084
    :cond_0
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    .line 3085
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v1, :cond_3

    .line 3086
    const-string v0, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< syncCalendar(): Error, Cannot find accountId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3097
    :cond_1
    :goto_1
    return-void

    .line 3083
    .end local v1           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 3089
    .restart local v1       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_3
    if-eqz p3, :cond_4

    .line 3090
    new-instance v4, Landroid/os/ConditionVariable;

    invoke-direct {v4, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    .local v4, condition:Landroid/os/ConditionVariable;
    move-object v0, p0

    .line 3091
    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZLandroid/os/ConditionVariable;Z)V

    .line 3092
    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 3096
    .end local v4           #condition:Landroid/os/ConditionVariable;
    :goto_2
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v2, "< syncCalendar()"

    invoke-static {v0, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 3094
    :cond_4
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    goto :goto_2
.end method

.method public syncContacts(JZ)V
    .locals 7
    .parameter "accountId"
    .parameter "blocking"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 3067
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "EASAppSvc"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "> syncContacts()"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_2

    const-string v0, " Blocking"

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p1, p2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3068
    :cond_0
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    .line 3069
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v1, :cond_3

    .line 3070
    const-string v0, "EASAppSvc"

    const-string v2, "< syncContacts(): Error, Cannot find accountId"

    invoke-static {v0, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3081
    :cond_1
    :goto_1
    return-void

    .line 3067
    .end local v1           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 3073
    .restart local v1       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_3
    if-eqz p3, :cond_4

    .line 3074
    new-instance v4, Landroid/os/ConditionVariable;

    invoke-direct {v4, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    .local v4, condition:Landroid/os/ConditionVariable;
    move-object v0, p0

    move v3, v2

    .line 3075
    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZLandroid/os/ConditionVariable;Z)V

    .line 3076
    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 3080
    .end local v4           #condition:Landroid/os/ConditionVariable;
    :goto_2
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v2, "< syncContacts()"

    invoke-static {v0, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 3078
    :cond_4
    invoke-direct {p0, v1, v2, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    goto :goto_2
.end method

.method public syncMail(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x3

    .line 3126
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 3127
    .local v0, condition:Landroid/os/ConditionVariable;
    new-instance v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3128
    .local v1, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3129
    iput v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3130
    const/16 v2, 0xa

    iput v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3131
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3132
    iput v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3133
    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    .line 3134
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3135
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 3136
    return-void
.end method

.method public syncMailbox(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "accountId"
    .parameter "collId"
    .parameter "parameter"

    .prologue
    const/4 v8, 0x3

    .line 3162
    const/4 v1, 0x1

    .line 3163
    .local v1, isManualSync:Z
    const-wide/16 v2, -0x1

    .line 3164
    .local v2, mailboxId:J
    if-eqz p4, :cond_0

    .line 3165
    const-string v5, "isManualSync"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3166
    const-string v5, "Mailbox"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/Mailbox;

    iget-wide v2, v5, Lcom/htc/android/mail/Mailbox;->id:J

    .line 3168
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isAllowToSyncWhenRoaming(JZ)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3169
    sget-boolean v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "EASAppSvc"

    const-string v6, "syncMailbox: Abort Sync due to SyncWhenRoaming option"

    invoke-static {v5, p1, p2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;JLjava/lang/String;)V

    .line 3188
    :cond_1
    :goto_0
    return-void

    .line 3173
    :cond_2
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 3174
    .local v0, condition:Landroid/os/ConditionVariable;
    new-instance v4, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3175
    .local v4, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3176
    iput v8, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3177
    const/16 v5, 0xa

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3178
    sget-object v5, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v6, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3179
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3180
    iget-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v6, "parameter.collection_id"

    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_3

    .line 3182
    iget-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v6, "parameter.current_mailbox_id"

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3184
    :cond_3
    iput v8, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3185
    iput-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    .line 3186
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v5, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3187
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0
.end method

.method public syncMailboxs(J[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .parameter "accountId"
    .parameter "collId"
    .parameter "parameter"

    .prologue
    const/4 v6, 0x3

    .line 3192
    const/4 v1, 0x1

    .line 3193
    .local v1, isManualSync:Z
    if-eqz p4, :cond_0

    .line 3194
    const-string v3, "isManualSync"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3196
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isAllowToSyncWhenRoaming(JZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3197
    sget-boolean v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "EASAppSvc"

    const-string v4, "syncMailboxs: Abort Sync due to SyncWhenRoaming option"

    invoke-static {v3, p1, p2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;JLjava/lang/String;)V

    .line 3213
    :cond_1
    :goto_0
    return-void

    .line 3201
    :cond_2
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 3202
    .local v0, condition:Landroid/os/ConditionVariable;
    new-instance v2, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v2}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3203
    .local v2, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3204
    iput v6, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3205
    const/16 v3, 0xa

    iput v3, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3206
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3207
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3208
    iget-object v3, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v4, "parameter.collection_id_list"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3209
    iput v6, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3210
    iput-object v0, v2, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    .line 3211
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v3, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3212
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0
.end method

.method public syncTasks(JZ)V
    .locals 8
    .parameter "accountId"
    .parameter "blocking"

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3109
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v6, "EASAppSvc"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "> syncTask()"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_2

    const-string v0, " Blocking"

    :goto_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, p1, p2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3110
    :cond_0
    sget-object v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    .line 3111
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v1, :cond_3

    .line 3112
    const-string v0, "EASAppSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< syncTask(): Error, Cannot find accountId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    :cond_1
    :goto_1
    return-void

    .line 3109
    .end local v1           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 3115
    .restart local v1       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_3
    if-eqz p3, :cond_4

    .line 3116
    new-instance v4, Landroid/os/ConditionVariable;

    invoke-direct {v4, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    .local v4, condition:Landroid/os/ConditionVariable;
    move-object v0, p0

    .line 3117
    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZLandroid/os/ConditionVariable;Z)V

    .line 3118
    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 3122
    .end local v4           #condition:Landroid/os/ConditionVariable;
    :goto_2
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v2, "< syncTask()"

    invoke-static {v0, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 3120
    :cond_4
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)V

    goto :goto_2
.end method

.method public syncTasks(JZZ)V
    .locals 3
    .parameter "accountId"
    .parameter "blocking"
    .parameter "isSyncManually"

    .prologue
    .line 3100
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "EASAppSvc"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> syncTasks()Check Roaming Policy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_2

    const-string v0, " Blocking"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 3101
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isAllowToSyncWhenRoaming(JZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3102
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncTasks(JZ)V

    .line 3106
    :cond_1
    :goto_1
    return-void

    .line 3100
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 3104
    :cond_3
    sget-boolean v0, Lcom/htc/android/mail/eassvc/EASAppSvc;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "syncTasks: Abort Sync due to SyncWhenRoaming option"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method

.method public testServer(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)I
    .locals 7
    .parameter "exAccount"
    .parameter "accountId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3299
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iput-boolean v6, v2, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInTestServer:Z

    .line 3301
    :try_start_0
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    iput-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    .line 3302
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->findExchangeSyncSources(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3303
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sDelAccountList:Ljava/util/Vector;

    iget-object v3, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 3306
    .local v1, isDeleting:Z
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_3

    .line 3307
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v6, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 3309
    :cond_1
    const/16 v2, -0x14

    .line 3317
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iput-boolean v4, v3, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInTestServer:Z

    .line 3318
    :goto_0
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    .line 3315
    return v2

    .line 3310
    :cond_2
    :try_start_1
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0xf

    if-lt v2, v3, :cond_3

    .line 3311
    const/16 v2, -0x15

    .line 3317
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iput-boolean v4, v3, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInTestServer:Z

    goto :goto_0

    .line 3314
    :cond_3
    :try_start_2
    new-instance v2, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    .line 3315
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;->testServer(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 3317
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iput-boolean v4, v3, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInTestServer:Z

    goto :goto_0

    .end local v0           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v1           #isDeleting:Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mProgressing:Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;

    iput-boolean v4, v3, Lcom/htc/android/mail/eassvc/EASAppSvc$EASProgressing;->bInTestServer:Z

    .line 3318
    iput-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->testserverUtil:Lcom/htc/android/mail/eassvc/core/SyncManager$TestServerUtil;

    .line 3317
    throw v2
.end method

.method public unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->unregisterEventCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    .line 3552
    return-void
.end method

.method public updateAccountInfo(JLcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 5
    .parameter "accountId"
    .parameter "exAccount"

    .prologue
    .line 3629
    sget-object v2, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v1

    .line 3630
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v1, :cond_0

    .line 3631
    const-string v2, "EASAppSvc"

    const-string v3, "updateAccountInfo(): error! cannot find account"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 3646
    :goto_0
    return-void

    .line 3634
    :cond_0
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 3635
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 3636
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 3637
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 3638
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 3639
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-boolean v3, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    iput-boolean v3, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 3641
    :try_start_0
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v3, p3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->safeUserName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3645
    :goto_1
    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeAccountInfo()V

    goto :goto_0

    .line 3642
    :catch_0
    move-exception v0

    .line 3643
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EASAppSvc"

    invoke-static {v2, p1, p2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_1
.end method

.method public updateFolderHierarchy(JZZ)I
    .locals 7
    .parameter "accountId"
    .parameter "needBlock"
    .parameter "updateSyncInfo"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 3555
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 3556
    .local v0, condition:Landroid/os/ConditionVariable;
    new-instance v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 3557
    .local v1, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide p1, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 3558
    iput v6, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 3559
    const/16 v3, 0xc

    iput v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 3560
    sget-object v3, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    iget-wide v4, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 3561
    iput v6, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 3562
    if-eqz p3, :cond_0

    .line 3563
    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    .line 3565
    :cond_0
    if-nez p4, :cond_1

    .line 3566
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 3567
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v4, "parameter.update_sync_info"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3569
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v3, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 3570
    if-eqz p3, :cond_2

    .line 3571
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 3572
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3576
    :cond_2
    return v2
.end method

.method public waitForSyncComplete(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 3731
    sget-object v1, Lcom/htc/android/mail/eassvc/EASAppSvc;->sExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    .line 3732
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-eqz v0, :cond_0

    .line 3733
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->waitForSyncComplete(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 3737
    :goto_0
    return-void

    .line 3735
    :cond_0
    const-string v1, "EASAppSvc"

    const-string v2, "waitForSyncComplete(): Error, cnnot find account"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method
