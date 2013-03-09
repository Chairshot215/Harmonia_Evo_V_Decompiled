.class public Lcom/android/providers/htcCheckin/htcCheckinService;
.super Landroid/app/Service;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;,
        Lcom/android/providers/htcCheckin/htcCheckinService$BootCompleteReceiver;,
        Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;,
        Lcom/android/providers/htcCheckin/htcCheckinService$TimeChangedReceiver;,
        Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;,
        Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;,
        Lcom/android/providers/htcCheckin/htcCheckinService$CheckinFailureType;
    }
.end annotation


# static fields
.field protected static final APPUPDATE_DISABLED_PROPERTY:Ljava/lang/String; = "ro.config.htc.noappupdate"

.field public static final CHECKIN_DEBUG_PROPERTY:Ljava/lang/String; = "checkin.protocol.debug"

.field protected static final CHECKIN_DISABLED_PROPERTY:Ljava/lang/String; = "ro.config.htc.nocheckin"

.field private static final CHECKIN_INTERVAL:J = 0x5265c00L

.field private static final CHECKIN_INTERVAL_DEFAULT:J = 0x48190800L

.field private static final CHECKIN_INTERVAL_MAX:J = 0xcdfe6000L

#the value of this static final field might be set in the static constructor
.field private static final CHECKIN_INTERVAL_MIN:J = 0x0L

.field private static final CHECKIN_POSTPONE_INTERVAL_DEFAULT:I = 0x3

.field public static final CHECKIN_POSTPONE_INTERVAL_PROPERTY:Ljava/lang/String; = "ro.htc.checkin.delay"

.field private static final CHECKIN_URL:Ljava/lang/String; = "http://andchin.htc.com/android/checkin"

.field private static final CHECKIN_URL_CN:Ljava/lang/String; = "http://andchin.htccomm.com.cn/android/checkin"

.field private static final CLIENT_VERSION:Ljava/lang/String; = "A3.5(GB)"

.field private static final CONFIRM_DOWNLOAD_ACTION:Ljava/lang/String; = "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

.field private static final COTA_ENABLE_PROPERTY:Ljava/lang/String; = "ro.config.htc.enableCOTA"

.field private static final CRASH_URL:Ljava/lang/String; = "http://andchin.htc.com/android/crash"

.field private static final CRASH_URL_CN:Ljava/lang/String; = "http://andchin.htccomm.com.cn/android/crash"

.field private static final EVENT_LOG_SENTINEL:I = 0x9c40

.field private static final FIRST_SUCCESS_CHECKIN_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_FIRST_SUCCESS_CHECKIN"

.field private static final FIRST_SUCCESS_CHECKIN_FILE:Ljava/lang/String; = "/data/data/com.android.providers.htcCheckin/firstTimeCheckinSuccess"

.field private static final HTCSERVICES_QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final KERNEL_VERSION_MAX:I = 0x100

.field private static final KERNEL_VERSION_PATH:Ljava/io/File; = null

.field private static final LAST_KMSG_MAX_LENGTH:I = 0x1c00

.field private static final LAST_KMSG_PATH:Ljava/io/File; = null

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_EVENTDATA:I = 0xc350

.field private static final MAX_EVENTS:I = 0x64

.field private static final MAX_REQUESTS:I = 0x3

.field private static final MIN_TIME_DIFF:J = 0x240c8400L

.field private static final MIN_TIME_SET:J = -0x22944e80L

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final REDOWNLOAD_MSEC:J = 0x5265c00L

.field private static final RUNTIME_STARTED_PROPERTY:Ljava/lang/String; = "ro.runtime.started"

.field private static final TAG:Ljava/lang/String; = "htcCheckinService"

.field private static final TOMBSTONES_MAX_LENGTH:I = 0x2000

.field private static final TOMBSTONES_PATH:Ljava/io/File; = null

.field private static final USER_AGENT:Ljava/lang/String; = "Android-Checkin/3.0"

.field private static jobRunning:Z

.field private static final lockThread:Ljava/lang/Object;

.field private static mbFirstCheckin:Z


# instance fields
.field private final AES_KEY_PATH:Ljava/lang/String;

.field private final INTENT_COTA_CHECKIN:Ljava/lang/String;

.field private final INTENT_SRC_PUSHMODE:Ljava/lang/String;

.field private final TARGET_CERT:Ljava/lang/String;

.field private intentSource:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBinder:Lcom/android/providers/htcCheckin/ICheckinService$Stub;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mEventTags:Landroid/util/EventLogTags;

.field private final mHandler:Landroid/os/Handler;

.field private mHttpClient:Lcom/htc/util/http/HtcServiceHttpClient;

.field private mLastRealtime:J

.field private mLastRxBytes:J

.field private mLastRxPackets:J

.field private mLastTxBytes:J

.field private mLastTxPackets:J

.field private mLastUptime:J

.field private mNetworkConnected:Z

.field private mPackageName:Ljava/lang/String;

.field private mStartUsingNetwork:Z

.field private mTriggerType:Ljava/lang/String;

.field private mUpdateType:Ljava/lang/String;

.field private mWhoami:Ljava/lang/String;

.field mbReSchedule:Z

.field private mockParam:Landroid/os/Bundle;

.field private strDesireBuild:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->lockThread:Ljava/lang/Object;

    .line 135
    sput-boolean v3, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    .line 149
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->TOMBSTONES_PATH:Ljava/io/File;

    .line 152
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/version"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->KERNEL_VERSION_PATH:Ljava/io/File;

    .line 154
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/last_kmsg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->LAST_KMSG_PATH:Ljava/io/File;

    .line 164
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->isUserDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x36ee80

    :goto_0
    sput-wide v0, Lcom/android/providers/htcCheckin/htcCheckinService;->CHECKIN_INTERVAL_MIN:J

    .line 186
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->HTCSERVICES_QUERY_PROJECTION:[Ljava/lang/String;

    .line 195
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "entity"

    aput-object v1, v0, v2

    const-string v1, "status"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 263
    sput-boolean v3, Lcom/android/providers/htcCheckin/htcCheckinService;->mbFirstCheckin:Z

    return-void

    .line 164
    :cond_0
    const-wide/32 v0, 0x1b77400

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 275
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 191
    const-string v3, "android.server.HTCCOTA.CHECKIN"

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->INTENT_COTA_CHECKIN:Ljava/lang/String;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRealtime:J

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastUptime:J

    .line 218
    iput-boolean v5, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mbReSchedule:Z

    .line 221
    iput-boolean v5, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z

    .line 228
    const-string v3, "data/data/com.android.providers.htcCheckin/jssecacerts.bks"

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->TARGET_CERT:Ljava/lang/String;

    .line 229
    const-string v3, "data/data/com.android.providers.htcCheckin/key"

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->AES_KEY_PATH:Ljava/lang/String;

    .line 246
    iput-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    .line 248
    const-string v3, ""

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->strDesireBuild:Ljava/lang/String;

    .line 249
    iput-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    .line 250
    iput-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;

    .line 252
    const-string v3, "pushmode"

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->INTENT_SRC_PUSHMODE:Ljava/lang/String;

    .line 255
    const-string v3, ""

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;

    .line 258
    const-string v3, ""

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;

    .line 259
    const-string v3, ""

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;

    .line 267
    iput-boolean v5, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mStartUsingNetwork:Z

    .line 395
    new-instance v3, Lcom/android/providers/htcCheckin/htcCheckinService$1;

    invoke-direct {v3, p0}, Lcom/android/providers/htcCheckin/htcCheckinService$1;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mBinder:Lcom/android/providers/htcCheckin/ICheckinService$Stub;

    .line 276
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mHandler:Landroid/os/Handler;

    .line 278
    const-string v3, "htcCheckinService"

    const-string v4, "htcCheckinProvider V2.1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, tags:Landroid/util/EventLogTags;
    :try_start_0
    new-instance v2, Landroid/util/EventLogTags;

    invoke-direct {v2}, Landroid/util/EventLogTags;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #tags:Landroid/util/EventLogTags;
    .local v2, tags:Landroid/util/EventLogTags;
    move-object v1, v2

    .line 286
    .end local v2           #tags:Landroid/util/EventLogTags;
    .restart local v1       #tags:Landroid/util/EventLogTags;
    :goto_0
    iput-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mEventTags:Landroid/util/EventLogTags;

    .line 287
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/io/IOException;
    const-string v3, "htcCheckinService"

    const-string v4, "Can\'t read event tags"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/providers/htcCheckin/htcCheckinService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->tryToStopUsingNetworkFeature()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/providers/htcCheckin/htcCheckinService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->strDesireBuild:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/providers/htcCheckin/htcCheckinService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->lockThread:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    sput-boolean p0, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->doCheckin()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->scheduleCheckin()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/providers/htcCheckin/htcCheckinService;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService;->reportFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->uploadCrashes()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/providers/htcCheckin/htcCheckinService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/providers/htcCheckin/htcCheckinService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$2600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/providers/htcCheckin/htcCheckinService;->QUERY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/htcCheckin/htcCheckinService;I[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/providers/htcCheckin/htcCheckinService;->reportCrashInternal(I[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->updateParentalControlStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/htcCheckin/htcCheckinService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isWifiOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/providers/htcCheckin/htcCheckinService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isIPTOn()Z

    move-result v0

    return v0
.end method

.method private addBootEvents()V
    .locals 12

    .prologue
    const-wide/16 v9, 0x0

    .line 812
    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    move-result-object v5

    .line 815
    .local v5, strlog:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 816
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Checkin$Events$Tag;->SYSTEM_RECOVERY_LOG:Landroid/provider/Checkin$Events$Tag;

    invoke-static {v6, v7, v5}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 819
    :cond_0
    const-string v6, "ro.runtime.started"

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 820
    .local v3, start_time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 821
    .local v1, now:J
    cmp-long v6, v3, v9

    if-eqz v6, :cond_1

    sub-long v6, v1, v3

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 824
    :cond_1
    const-string v6, "ro.runtime.started"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Checkin$Events$Tag;->SYSTEM_BOOT:Landroid/provider/Checkin$Events$Tag;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 833
    iget-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Checkin$Events$Tag;->SYSTEM_LAST_KMSG:Landroid/provider/Checkin$Events$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/providers/htcCheckin/htcCheckinService;->KERNEL_VERSION_PATH:Ljava/io/File;

    const/16 v10, 0x100

    const-string v11, " ...\n"

    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/providers/htcCheckin/htcCheckinService;->LAST_KMSG_PATH:Ljava/io/File;

    const/16 v10, -0x1c00

    const-string v11, "...\n"

    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 843
    .end local v1           #now:J
    .end local v3           #start_time:J
    :goto_0
    return-void

    .line 828
    .restart local v1       #now:J
    .restart local v3       #start_time:J
    :cond_2
    iget-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Checkin$Events$Tag;->SYSTEM_RESTART:Landroid/provider/Checkin$Events$Tag;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 836
    .end local v1           #now:J
    .end local v3           #start_time:J
    :catch_0
    move-exception v0

    .line 837
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "htcCheckinService"

    const-string v7, "No saved kernel log file"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 839
    .local v0, e:Landroid/database/SQLException;
    const-string v6, "htcCheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL execute fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    .end local v0           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v0

    .line 841
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "htcCheckinService"

    const-string v7, "Can\'t log boot events"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addKernelEvents()V
    .locals 25

    .prologue
    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "checkin_events"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 914
    .local v8, events:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mEventTags:Landroid/util/EventLogTags;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 919
    .local v14, names:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 920
    .local v17, tags:[I
    array-length v0, v14

    move/from16 v20, v0

    const v21, 0x9c40

    aput v21, v17, v20

    .line 921
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_3

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mEventTags:Landroid/util/EventLogTags;

    move-object/from16 v20, v0

    aget-object v21, v14, v9

    invoke-virtual/range {v20 .. v21}, Landroid/util/EventLogTags;->get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;

    move-result-object v5

    .line 923
    .local v5, desc:Landroid/util/EventLogTags$Description;
    if-eqz v5, :cond_2

    .line 924
    iget v0, v5, Landroid/util/EventLogTags$Description;->mTag:I

    move/from16 v20, v0

    aput v20, v17, v9

    .line 921
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 926
    :cond_2
    const-string v20, "htcCheckinService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown kernel event tag: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v14, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const v20, 0x9c40

    aput v20, v17, v9

    goto :goto_2

    .line 933
    .end local v5           #desc:Landroid/util/EventLogTags$Description;
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 934
    .local v12, marker:J
    const v20, 0x9c40

    move/from16 v0, v20

    invoke-static {v0, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 937
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v11, input:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 940
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v19, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$Event;

    .line 942
    .local v7, event:Landroid/util/EventLog$Event;
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getTag()I

    move-result v16

    .line 943
    .local v16, tag:I
    const v20, 0x9c40

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 944
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 945
    .local v4, data:Ljava/lang/Object;
    if-eqz v4, :cond_5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    if-eqz v20, :cond_5

    .line 970
    .end local v4           #data:Ljava/lang/Object;
    .end local v7           #event:Landroid/util/EventLog$Event;
    .end local v16           #tag:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    sget-object v22, Landroid/provider/htcCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/ContentValues;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 972
    :catch_0
    move-exception v6

    .line 973
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v20, "htcCheckinService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Could not bulk insert checkin provider. error: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 976
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #input:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    .end local v12           #marker:J
    .end local v19           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v6

    .line 977
    .local v6, e:Ljava/io/IOException;
    const-string v20, "htcCheckinService"

    const-string v21, "Error scanning kernel events"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 948
    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #data:Ljava/lang/Object;
    .restart local v7       #event:Landroid/util/EventLog$Event;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #input:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    .restart local v12       #marker:J
    .restart local v16       #tag:I
    .restart local v19       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_5
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 953
    .end local v4           #data:Ljava/lang/Object;
    :cond_6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 954
    .local v15, row:Landroid/content/ContentValues;
    const-string v20, "tag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mEventTags:Landroid/util/EventLogTags;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/EventLogTags;->get(I)Landroid/util/EventLogTags$Description;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/EventLogTags$Description;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v20, "date"

    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v21

    const-wide/32 v23, 0xf4240

    div-long v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    .line 957
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_7

    .line 959
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .local v3, buffer:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->formatKernelEvent(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 961
    const-string v20, "value"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 966
    .end local v3           #buffer:Ljava/lang/StringBuilder;
    :cond_7
    :try_start_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 962
    :catch_2
    move-exception v6

    .line 963
    .local v6, e:Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private addTombstoneEvents()V
    .locals 9

    .prologue
    .line 850
    sget-object v5, Lcom/android/providers/htcCheckin/htcCheckinService;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, tombstones:[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 878
    :goto_0
    return-void

    .line 855
    :cond_0
    array-length v5, v3

    new-array v4, v5, [Landroid/content/ContentValues;

    .line 857
    .local v4, values:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 858
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/providers/htcCheckin/htcCheckinService;->TOMBSTONES_PATH:Ljava/io/File;

    aget-object v6, v3, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 859
    .local v1, file:Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v2

    .line 862
    :try_start_0
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found tombstone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    aget-object v5, v4, v2

    const-string v6, "tag"

    sget-object v7, Landroid/provider/Checkin$Events$Tag;->SYSTEM_TOMBSTONE:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v7}, Landroid/provider/Checkin$Events$Tag;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    aget-object v5, v4, v2

    const-string v6, "date"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 867
    aget-object v5, v4, v2

    const-string v6, "value"

    const/16 v7, 0x2000

    const-string v8, "\n...\n"

    invoke-static {v1, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 874
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 857
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading tombstone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 870
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 871
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not add tombstone events. error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v5

    .line 877
    .end local v1           #file:Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/htcCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method private doCheckin()V
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1841
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->addKernelEvents()V

    .line 1842
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->updateNetworkStats()V

    .line 1843
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->updateClockStats()V

    .line 1845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 1846
    .local v34, start:J
    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1847
    .local v17, bRelBuild:Z
    const-string v4, "checkin.protocol.debug"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1848
    .local v16, bDebug:Z
    const/16 v24, 0x0

    .line 1850
    .local v24, colDate:I
    const/16 v27, 0x0

    .local v27, events:Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, stats:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1852
    .local v11, properties:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "upload_events"

    invoke-static {v4, v5}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1854
    .local v37, strUploadEvents:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "upload_stats"

    invoke-static {v4, v5}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1856
    .local v38, strUploadStats:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    .line 1857
    .local v39, uploadEvents:Z
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 1859
    .local v40, uploadStats:Z
    if-eqz v39, :cond_0

    .line 1860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/htcCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1862
    const-string v4, "date"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1864
    :cond_0
    if-eqz v40, :cond_1

    .line 1865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/htcCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "tag"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1870
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/htcCheckin$Properties;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "tag"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1876
    :goto_0
    const/16 v23, 0x0

    .line 1879
    .local v23, cmdIntent:Landroid/content/Intent;
    const/16 v28, 0x0

    .local v28, i:I
    :goto_1
    const/4 v4, 0x3

    move/from16 v0, v28

    if-ge v0, v4, :cond_12

    .line 1882
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getLoggingId()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getProvisioningDigest()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/16 v12, 0x64

    const v13, 0xc350

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getLastSuccessTime()J

    move-result-wide v14

    move-object/from16 v9, v27

    invoke-static/range {v4 .. v15}, Lcom/android/providers/htcCheckin/CheckinProtocol;->formatRequest(Ljava/lang/String;JLjava/lang/String;Ljava/util/Locale;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;IIJ)Lorg/json/JSONObject;

    move-result-object v20

    .line 1888
    .local v20, checkin:Lorg/json/JSONObject;
    const-string v5, "desired_build"

    invoke-static {}, Landroid/provider/htcCheckin;->isEnableFOTA()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->strDesireBuild:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1891
    const-string v4, "checkin"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    .line 1893
    .local v30, jSonCheckin:Lorg/json/JSONObject;
    const-string v4, "client_version"

    const-string v5, "A3.5(GB)"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1895
    const-string v4, "ro.cid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1896
    .local v22, cid:Ljava/lang/String;
    const-string v4, "cid"

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1900
    const-string v21, "N/A"

    .line 1901
    .local v21, checkinType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    if-nez v4, :cond_18

    .line 1902
    const-string v21, "Manual"

    .line 1908
    :cond_2
    :goto_3
    const-string v4, "checkin_type"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1910
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getMNC_MCC()Ljava/lang/String;

    move-result-object v31

    .line 1911
    .local v31, mcc_mnc:Ljava/lang/String;
    const-string v4, "mcc_mnc"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1914
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getConnectMedia()Ljava/lang/String;

    move-result-object v25

    .line 1915
    .local v25, connMedia:Ljava/lang/String;
    const-string v4, "connection_media"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1917
    const-string v29, ""

    .line 1919
    .local v29, ipAddr:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isIPTOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1920
    const-string v4, "net.usb0.ps.ip"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1922
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isWifiOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1923
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getWiFiIP()Ljava/lang/String;

    move-result-object v29

    .line 1925
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isWiMAXOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1926
    const-string v4, "dhcp.wimax0.ipaddress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1928
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isDataCallOn()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1930
    const-string v4, "ril.default.address"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1931
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ipAddr(ril.default.address):["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 1933
    :cond_6
    const-string v4, "ro.ril.current.ip.address"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1935
    :cond_7
    const-string v4, "ip"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1937
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getMID()Ljava/lang/String;

    move-result-object v32

    .line 1938
    .local v32, mid:Ljava/lang/String;
    const-string v4, "mid"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1940
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->getCheckinURL()Ljava/lang/String;

    move-result-object v36

    .line 1941
    .local v36, strURL:Ljava/lang/String;
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check-in URL:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    .line 1944
    const-string v4, "htcCheckinService"

    const-string v5, "Try to overwrite Checkin Message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v5, "URL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v5, "URL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1946
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v5, "MODEL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "model_number"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1947
    :cond_9
    const-string v4, "checkin"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "build"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 1948
    .local v19, build:Lorg/json/JSONObject;
    if-eqz v19, :cond_d

    .line 1949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v5, "BOOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "bootloader"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v6, "BOOT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1950
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v5, "FW"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "firmware_version"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v6, "FW"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1951
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v5, "CL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "changelist"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v6, "CL"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1952
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v5, "BUILD"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "build_type"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v6, "BUILD"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1954
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->dumpCheckin(Lorg/json/JSONObject;)V

    .line 1957
    .end local v19           #build:Lorg/json/JSONObject;
    :cond_e
    const-string v4, "htcCheckinService"

    const-string v5, "Dump Checkin info:"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->dumpCheckin(Lorg/json/JSONObject;)V

    .line 1961
    const-string v33, ""

    .line 1962
    .local v33, resp:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1963
    .local v18, bSkipFOTACheckin:Z
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWhoami:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    const-string v4, "ro.config.htc.nocheckin"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;

    const-string v5, "watch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1968
    const/16 v18, 0x1

    .line 1971
    :cond_f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mWhoami:Ljava/lang/String;

    const-string v5, "watch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1973
    const/16 v18, 0x1

    .line 1976
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;

    const-string v5, "individual_appupdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1977
    const/16 v18, 0x1

    .line 1979
    :cond_11
    if-eqz v18, :cond_1a

    .line 1980
    const-string v33, "{ \"intent\": [ { \"action\": \"android.server.checkin.FOTA_CANCEL\" } ], \"stats_ok\": true, \"time_msec\": \"1234567891234\" }"

    .line 1981
    const-string v4, "htcCheckinService"

    const-string v5, "Put an fixed string as server reply to skip check-in. It\'s FOTA_CANCEL"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    :goto_4
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->handleReply(Lorg/json/JSONObject;Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v23

    .line 1988
    if-eqz v27, :cond_12

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    cmp-long v4, v4, v34

    if-lez v4, :cond_1b

    .line 1992
    .end local v18           #bSkipFOTACheckin:Z
    .end local v20           #checkin:Lorg/json/JSONObject;
    .end local v21           #checkinType:Ljava/lang/String;
    .end local v22           #cid:Ljava/lang/String;
    .end local v25           #connMedia:Ljava/lang/String;
    .end local v29           #ipAddr:Ljava/lang/String;
    .end local v30           #jSonCheckin:Lorg/json/JSONObject;
    .end local v31           #mcc_mnc:Ljava/lang/String;
    .end local v32           #mid:Ljava/lang/String;
    .end local v33           #resp:Ljava/lang/String;
    .end local v36           #strURL:Ljava/lang/String;
    :cond_12
    if-eqz v27, :cond_13

    .line 1993
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1994
    const/16 v27, 0x0

    .line 1996
    :cond_13
    if-eqz v10, :cond_14

    .line 1997
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1998
    const/4 v10, 0x0

    .line 2000
    :cond_14
    if-eqz v11, :cond_15

    .line 2001
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2002
    const/4 v11, 0x0

    .line 2005
    :cond_15
    if-eqz v23, :cond_16

    .line 2006
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->notifyIntent(Landroid/content/Intent;)V

    .line 2007
    :cond_16
    const-string v4, "htcCheckinService"

    const-string v5, "Checkin success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    return-void

    .line 1872
    .end local v23           #cmdIntent:Landroid/content/Intent;
    .end local v28           #i:I
    :catch_0
    move-exception v26

    .line 1873
    .local v26, e:Ljava/lang/Exception;
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not query checkin provider. error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1888
    .end local v26           #e:Ljava/lang/Exception;
    .restart local v20       #checkin:Lorg/json/JSONObject;
    .restart local v23       #cmdIntent:Landroid/content/Intent;
    .restart local v28       #i:I
    :cond_17
    :try_start_2
    const-string v4, ""

    goto/16 :goto_2

    .line 1903
    .restart local v21       #checkinType:Ljava/lang/String;
    .restart local v22       #cid:Ljava/lang/String;
    .restart local v30       #jSonCheckin:Lorg/json/JSONObject;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    const-string v5, "schedule"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1904
    const-string v21, "Auto"

    goto/16 :goto_3

    .line 1905
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    const-string v5, "pushmode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1906
    const-string v21, "Pushmode"

    goto/16 :goto_3

    .line 1983
    .restart local v18       #bSkipFOTACheckin:Z
    .restart local v25       #connMedia:Ljava/lang/String;
    .restart local v29       #ipAddr:Ljava/lang/String;
    .restart local v31       #mcc_mnc:Ljava/lang/String;
    .restart local v32       #mid:Ljava/lang/String;
    .restart local v33       #resp:Ljava/lang/String;
    .restart local v36       #strURL:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->doRequest(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v33

    goto/16 :goto_4

    .line 1879
    :cond_1b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 1992
    .end local v18           #bSkipFOTACheckin:Z
    .end local v20           #checkin:Lorg/json/JSONObject;
    .end local v21           #checkinType:Ljava/lang/String;
    .end local v22           #cid:Ljava/lang/String;
    .end local v25           #connMedia:Ljava/lang/String;
    .end local v29           #ipAddr:Ljava/lang/String;
    .end local v30           #jSonCheckin:Lorg/json/JSONObject;
    .end local v31           #mcc_mnc:Ljava/lang/String;
    .end local v32           #mid:Ljava/lang/String;
    .end local v33           #resp:Ljava/lang/String;
    .end local v36           #strURL:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v27, :cond_1c

    .line 1993
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1994
    const/16 v27, 0x0

    .line 1996
    :cond_1c
    if-eqz v10, :cond_1d

    .line 1997
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1998
    const/4 v10, 0x0

    .line 2000
    :cond_1d
    if-eqz v11, :cond_1e

    .line 2001
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2002
    const/4 v11, 0x0

    :cond_1e
    throw v4
.end method

.method private doRequest(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;
    .locals 11
    .parameter "url"
    .parameter "postMsg"
    .parameter "times"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1787
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1788
    .local v5, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "Content-type"

    const-string v9, "org/x-json"

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1791
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 1792
    .local v3, length:J
    const-string v8, "htcCheckinService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending checkin request ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mHttpClient:Lcom/htc/util/http/HtcServiceHttpClient;

    invoke-virtual {v8, v5}, Lcom/htc/util/http/HtcServiceHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1802
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 1803
    .local v7, status:Lorg/apache/http/StatusLine;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 1804
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_1

    .line 1805
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1806
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server rejected checkin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1797
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v1

    .line 1798
    .local v1, e:Ljavax/net/ssl/SSLException;
    const-string v8, "htcCheckinService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSL error, attempting to fetch the time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    throw v1

    .line 1809
    .end local v1           #e:Ljavax/net/ssl/SSLException;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    :cond_1
    if-nez v2, :cond_2

    .line 1810
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Missing response body"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1811
    :cond_2
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    .local v0, body:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1813
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Empty response body"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1814
    :cond_3
    return-object v0
.end method

.method private dumpCheckin(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "checkin"

    .prologue
    .line 1783
    .line 1784
    return-void
.end method

.method private formatKernelEvent(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "value"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 890
    if-nez p1, :cond_0

    .line 891
    const-string v2, "null"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :goto_0
    return-void

    .line 892
    :cond_0
    instance-of v2, p1, Landroid/util/EventLog$List;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 893
    check-cast v1, Landroid/util/EventLog$List;

    .line 894
    .local v1, list:Landroid/util/EventLog$List;
    const-string v2, "["

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/util/EventLog$List;->getNumItems()B

    move-result v2

    if-ge v0, v2, :cond_2

    .line 896
    if-lez v0, :cond_1

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    :cond_1
    invoke-virtual {v1, v0}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/providers/htcCheckin/htcCheckinService;->formatKernelEvent(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 899
    :cond_2
    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 900
    .end local v0           #i:I
    .end local v1           #list:Landroid/util/EventLog$List;
    :cond_3
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 901
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 903
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getAesKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "cert_host"
    .parameter "cert_port"
    .parameter "key_host"
    .parameter "imei"
    .parameter "image_id"
    .parameter "KEYSVR_PUB_KEY"

    .prologue
    .line 1499
    const/4 v4, 0x0

    .line 1500
    .local v4, isInstall:Z
    :try_start_0
    new-instance v1, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;

    invoke-direct {v1, p1, p2}, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;-><init>(Ljava/lang/String;I)V

    .line 1501
    .local v1, certInstaller:Lcom/android/providers/htcCheckin/encrypt/CertInstaller;
    const-string v7, "data/data/com.android.providers.htcCheckin/jssecacerts.bks"

    invoke-virtual {v1, v7}, Lcom/android/providers/htcCheckin/encrypt/CertInstaller;->installCert(Ljava/lang/String;)Z

    move-result v4

    .line 1503
    if-nez v4, :cond_1

    .line 1504
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") does not provide cert"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string v0, "ConnectError"

    .line 1540
    .end local v1           #certInstaller:Lcom/android/providers/htcCheckin/encrypt/CertInstaller;
    :cond_0
    :goto_0
    return-object v0

    .line 1509
    .restart local v1       #certInstaller:Lcom/android/providers/htcCheckin/encrypt/CertInstaller;
    :cond_1
    new-instance v2, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;

    const-string v7, "data/data/com.android.providers.htcCheckin/jssecacerts.bks"

    invoke-direct {v2, p0, v7}, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1511
    .local v2, client:Lcom/android/providers/htcCheckin/encrypt/HttpsClient;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    .local v5, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "IMEI"

    invoke-direct {v7, v8, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "imageid"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    invoke-virtual {v2, p3, v5}, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->postRequest(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 1517
    .local v6, responseString:Ljava/lang/String;
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response from key server: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    if-nez v6, :cond_2

    .line 1519
    const-string v0, "ConnectError"

    goto :goto_0

    .line 1523
    :cond_2
    const-string v7, "<p>fota"

    const-string v8, "fota</p>"

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1524
    .local v0, aes_key:Ljava/lang/String;
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AES key: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v2}, Lcom/android/providers/htcCheckin/encrypt/HttpsClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1532
    if-nez v0, :cond_0

    .line 1533
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") does not provide the AES_KEY of ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1538
    .end local v0           #aes_key:Ljava/lang/String;
    .end local v1           #certInstaller:Lcom/android/providers/htcCheckin/encrypt/CertInstaller;
    .end local v2           #client:Lcom/android/providers/htcCheckin/encrypt/HttpsClient;
    .end local v5           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #responseString:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1539
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getAesKey(). Err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 727
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, aid:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "N/A"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v0           #aid:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 730
    :catch_0
    move-exception v1

    .line 731
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, "htcCheckinService"

    const-string v3, "Malformed android ID"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    const-string v0, "N/A"

    goto :goto_0
.end method

.method private getAutoState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1049
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1052
    :goto_0
    return v1

    .line 1049
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method protected static getCheckinURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2223
    const-string v1, "http://andchin.htc.com/android/checkin"

    .line 2224
    .local v1, url:Ljava/lang/String;
    const-string v0, "http://andchin.htc.com/android/checkin"

    .line 2226
    .local v0, defaultURL:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2228
    :cond_0
    const-string v2, "ro.htc.checkin.url_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2229
    const-string v0, "http://andchin.htccomm.com.cn/android/checkin"

    .line 2236
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v1, v0

    .line 2238
    .end local v1           #url:Ljava/lang/String;
    :cond_2
    return-object v1

    .line 2232
    .restart local v1       #url:Ljava/lang/String;
    :cond_3
    const-string v2, "ro.htc.checkin.url"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getConnectMedia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3093
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isIPTOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    const-string v0, "IPT"

    .line 3101
    :goto_0
    return-object v0

    .line 3095
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isWifiOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3096
    const-string v0, "Wifi"

    goto :goto_0

    .line 3097
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isWiMAXOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3098
    const-string v0, "WiMax"

    goto :goto_0

    .line 3099
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isDataCallOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3100
    const-string v0, "radio"

    goto :goto_0

    .line 3101
    :cond_3
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method protected static getCrashURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2246
    const-string v1, "http://andchin.htc.com/android/crash"

    .line 2247
    .local v1, url:Ljava/lang/String;
    const-string v0, "http://andchin.htc.com/android/crash"

    .line 2249
    .local v0, defaultURL:Ljava/lang/String;
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Htc_PROJECT_flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Htc_LANGUAGE_flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    const-string v2, "htcCheckinService"

    const-string v3, "PROJECT_D0004_flag:27"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    const-string v2, "htcCheckinService"

    const-string v3, "LANGUAGE_CHS_flag:2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_2

    .line 2256
    const-string v2, "ro.htc.checkin.crashurl_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2257
    const-string v0, "http://andchin.htccomm.com.cn/android/crash"

    .line 2268
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 2270
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 2259
    .restart local v1       #url:Ljava/lang/String;
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2261
    const-string v2, "ro.htc.checkin.crashurl_CN"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2262
    const-string v0, "http://andchin.htccomm.com.cn/android/crash"

    goto :goto_0

    .line 2264
    :cond_3
    const-string v2, "ro.htc.checkin.crashurl"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getEventTagLastupdate(Landroid/provider/htcCheckin$Events$Tag;)J
    .locals 14
    .parameter "tagname"

    .prologue
    const-wide/16 v11, 0x0

    .line 2115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2116
    .local v8, now:J
    invoke-virtual {p1}, Landroid/provider/htcCheckin$Events$Tag;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2117
    .local v10, tag:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2119
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "tag=? AND date<?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2130
    :goto_0
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-nez v0, :cond_3

    .line 2139
    :cond_0
    if-eqz v6, :cond_1

    .line 2140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2141
    const/4 v6, 0x0

    :cond_1
    move-wide v0, v11

    .line 2144
    :cond_2
    :goto_1
    return-wide v0

    .line 2125
    :catch_0
    move-exception v7

    .line 2126
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "htcCheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not query checkin provider. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2131
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    .line 2139
    if-eqz v6, :cond_2

    .line 2140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2141
    const/4 v6, 0x0

    goto :goto_1

    .line 2132
    :catch_1
    move-exception v7

    .line 2135
    .local v7, e:Landroid/database/SQLException;
    :try_start_3
    const-string v0, "htcCheckinService"

    const-string v1, "SQL execute fail"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2139
    if-eqz v6, :cond_4

    .line 2140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2141
    const/4 v6, 0x0

    .end local v7           #e:Landroid/database/SQLException;
    :cond_4
    :goto_2
    move-wide v0, v11

    .line 2144
    goto :goto_1

    .line 2136
    :catch_2
    move-exception v7

    .line 2137
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "htcCheckinService"

    const-string v1, "Unexpected error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2139
    if-eqz v6, :cond_4

    .line 2140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2141
    const/4 v6, 0x0

    goto :goto_2

    .line 2139
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2141
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method private getGProvisioningDigest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "digest"

    invoke-static {v1, v2}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, digest:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #digest:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getImageId(Ljava/lang/String;)I
    .locals 8
    .parameter "strURL"

    .prologue
    .line 1452
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 1453
    :cond_0
    const-string v5, "htcCheckinService"

    const-string v6, "Filename is null/empty in getImageId()"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const/4 v4, -0x1

    .line 1488
    :cond_1
    :goto_0
    return v4

    .line 1457
    :cond_2
    const/4 v4, 0x0

    .line 1458
    .local v4, id:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1459
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1460
    .local v0, aryFileName:[Ljava/lang/String;
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1462
    .local v2, filename:Ljava/lang/String;
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target filename: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1464
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 1465
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1470
    :cond_3
    :try_start_0
    const-string v5, ".zip"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    const-string v6, "zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v0, v5

    const-string v6, "enc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1473
    const-string v5, "htcCheckinService"

    const-string v6, ".zip file"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    array-length v5, v0

    add-int/lit8 v5, v5, -0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1477
    :cond_4
    const-string v5, ".enc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    const-string v6, "enc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1479
    const-string v5, "htcCheckinService"

    const-string v6, ".enc file"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto/16 :goto_0

    .line 1484
    :catch_0
    move-exception v1

    .line 1485
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImageId @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method private getIntervalFromServer(Ljava/util/Map;)J
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, -0x1

    .line 783
    .local v0, checkinIntervalSvr:J
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "checkin_interval"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-wide v2, v0

    .line 795
    .end local v0           #checkinIntervalSvr:J
    .local v2, checkinIntervalSvr:J
    :goto_0
    return-wide v2

    .line 785
    .end local v2           #checkinIntervalSvr:J
    .restart local v0       #checkinIntervalSvr:J
    :cond_1
    const-string v6, "checkin_interval"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 786
    .local v5, strCheckinIntervalSvr:Ljava/lang/String;
    if-nez v5, :cond_2

    move-wide v2, v0

    .line 787
    .end local v0           #checkinIntervalSvr:J
    .restart local v2       #checkinIntervalSvr:J
    goto :goto_0

    .line 789
    .end local v2           #checkinIntervalSvr:J
    .restart local v0       #checkinIntervalSvr:J
    :cond_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    .line 795
    .end local v0           #checkinIntervalSvr:J
    .restart local v2       #checkinIntervalSvr:J
    goto :goto_0

    .line 790
    .end local v2           #checkinIntervalSvr:J
    .restart local v0       #checkinIntervalSvr:J
    :catch_0
    move-exception v4

    .line 791
    .local v4, e:Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    .line 792
    const-string v6, "htcCheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t convert checkin interval to long. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Err:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getLastFailureTime()J
    .locals 2

    .prologue
    .line 2108
    sget-object v0, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

    invoke-direct {p0, v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getEventTagLastupdate(Landroid/provider/htcCheckin$Events$Tag;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastSuccessTime()J
    .locals 2

    .prologue
    .line 2104
    sget-object v0, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_SUCCESS:Landroid/provider/htcCheckin$Events$Tag;

    invoke-direct {p0, v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getEventTagLastupdate(Landroid/provider/htcCheckin$Events$Tag;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLocation()Ljava/lang/String;
    .locals 21

    .prologue
    .line 2037
    const-string v11, ""

    .local v11, location:Ljava/lang/String;
    const-string v19, ", "

    .line 2038
    .local v19, strSep:Ljava/lang/String;
    const-string v18, "NA"

    .local v18, strLocality:Ljava/lang/String;
    const-string v16, "NA"

    .local v16, strAdminArea:Ljava/lang/String;
    const-string v17, "NA"

    .line 2041
    .local v17, strCountryCode:Ljava/lang/String;
    :try_start_0
    const-string v2, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/LocationManager;

    .line 2042
    .local v12, locationManager:Landroid/location/LocationManager;
    const-string v13, "gps"

    .line 2043
    .local v13, locationProvider_G:Ljava/lang/String;
    const-string v14, "network"

    .line 2044
    .local v14, locationProvider_N:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2046
    .local v9, lastKnownLocation:Landroid/location/Location;
    invoke-virtual {v12, v13}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 2047
    if-nez v9, :cond_0

    .line 2048
    const-string v2, "htcCheckinService"

    const-string v3, "Location from GPS is null"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v12, v14}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 2052
    :cond_0
    if-nez v9, :cond_1

    .line 2053
    const-string v2, "htcCheckinService"

    const-string v3, "Location from NETWORK is null as well"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const-string v11, "NA, NA, NA"

    .line 2057
    :cond_1
    if-eqz v9, :cond_5

    .line 2058
    new-instance v1, Landroid/location/Geocoder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 2059
    .local v1, geoCoder:Landroid/location/Geocoder;
    const/4 v10, 0x0

    .line 2060
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const/4 v7, 0x0

    .line 2062
    .local v7, address:Landroid/location/Address;
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 2063
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2064
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #address:Landroid/location/Address;
    check-cast v7, Landroid/location/Address;

    .line 2066
    .restart local v7       #address:Landroid/location/Address;
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2067
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v18

    .line 2068
    :cond_2
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2069
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v16

    .line 2070
    :cond_3
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2071
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v17

    .line 2072
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2084
    .end local v1           #geoCoder:Landroid/location/Geocoder;
    .end local v7           #address:Landroid/location/Address;
    .end local v9           #lastKnownLocation:Landroid/location/Location;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #locationManager:Landroid/location/LocationManager;
    .end local v13           #locationProvider_G:Ljava/lang/String;
    .end local v14           #locationProvider_N:Ljava/lang/String;
    :cond_5
    :goto_0
    :try_start_1
    const-string v2, "NA, NA, NA"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2085
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v15

    .line 2086
    .local v15, req:Lcom/htc/util/weather/WSPRequest;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v20

    .line 2087
    .local v20, wsp:Lcom/htc/util/weather/WSPData;
    if-eqz v20, :cond_8

    .line 2088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WSPData;->getCurLocState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WSPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2089
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get location from WeatherClock:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2099
    .end local v15           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v20           #wsp:Lcom/htc/util/weather/WSPData;
    :cond_6
    :goto_1
    return-object v11

    .line 2074
    .restart local v1       #geoCoder:Landroid/location/Geocoder;
    .restart local v7       #address:Landroid/location/Address;
    .restart local v9       #lastKnownLocation:Landroid/location/Location;
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v12       #locationManager:Landroid/location/LocationManager;
    .restart local v13       #locationProvider_G:Ljava/lang/String;
    .restart local v14       #locationProvider_N:Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v11, "NA, NA, NA"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2077
    .end local v1           #geoCoder:Landroid/location/Geocoder;
    .end local v7           #address:Landroid/location/Address;
    .end local v9           #lastKnownLocation:Landroid/location/Location;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #locationManager:Landroid/location/LocationManager;
    .end local v13           #locationProvider_G:Ljava/lang/String;
    .end local v14           #locationProvider_N:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2078
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getLocation(). Err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v11, "NA, NA, NA"

    goto/16 :goto_0

    .line 2092
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v15       #req:Lcom/htc/util/weather/WSPRequest;
    .restart local v20       #wsp:Lcom/htc/util/weather/WSPData;
    :cond_8
    :try_start_3
    const-string v2, "htcCheckinService"

    const-string v3, "WSPData is NULL"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2094
    .end local v15           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v20           #wsp:Lcom/htc/util/weather/WSPData;
    :catch_1
    move-exception v8

    .line 2095
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error when get location from WeatherClock: Err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    const-string v11, "NA, NA, NA"

    goto :goto_1
.end method

.method private getLoggingId()J
    .locals 4

    .prologue
    .line 743
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "logging_id2"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 746
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 751
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "htcCheckinService"

    const-string v3, "Malformed logging ID"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getMID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3164
    const-string v1, ""

    .line 3166
    .local v1, mid:Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.mid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3171
    :goto_0
    return-object v1

    .line 3167
    :catch_0
    move-exception v0

    .line 3168
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMID error. Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    const-string v1, ""

    goto :goto_0
.end method

.method private getMNC_MCC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3074
    const-string v0, ""

    .line 3075
    .local v0, mnc_mcc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 3076
    if-nez v0, :cond_0

    const-string v0, ""

    .line 3077
    :cond_0
    return-object v0
.end method

.method private getProvisioningDigest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 759
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "digest"

    invoke-static {v1, v2}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, digest:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #digest:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getProvisioningInterval()J
    .locals 6

    .prologue
    .line 770
    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "checkin_interval"

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$HTCservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 772
    .local v0, checkinInterval:J
    return-wide v0
.end method

.method private getWiFiIP()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2016
    const-string v1, ""

    .line 2018
    .local v1, ip:Ljava/lang/String;
    :try_start_0
    const-string v4, "wifi.interface"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2019
    .local v3, wifiInterface:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ipaddress"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2020
    .local v2, ipProp:Ljava/lang/String;
    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2021
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP property:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    .end local v2           #ipProp:Ljava/lang/String;
    .end local v3           #wifiInterface:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    .line 2024
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Err in getWiFiIP(), Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleReply(Lorg/json/JSONObject;Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 40
    .parameter "checkin"
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1207
    invoke-static/range {p2 .. p2}, Lcom/android/providers/htcCheckin/CheckinProtocol;->getReplyIntents(Lorg/json/JSONObject;)[Landroid/content/Intent;

    move-result-object v29

    .line 1208
    .local v29, intents:[Landroid/content/Intent;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/providers/htcCheckin/htcCheckinService;->mbFirstCheckin:Z

    .line 1210
    const/16 v22, 0x0

    .line 1211
    .local v22, cmdIntent:Landroid/content/Intent;
    move-object/from16 v11, v29

    .local v11, arr$:[Landroid/content/Intent;
    array-length v0, v11

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v27, 0x0

    .local v27, i$:I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v28, v11, v27

    .line 1212
    .local v28, intent:Landroid/content/Intent;
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Intent from server: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v35, "android.server.checkin.FOTA_UPDATE"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1215
    const-string v3, "name"

    const-string v35, "android.server.HTCcheckin.CHECKIN"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    move-object/from16 v22, v28

    .line 1211
    :cond_0
    :goto_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 1217
    :cond_1
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v35, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1218
    move-object/from16 v22, v28

    .line 1219
    invoke-static {}, Landroid/provider/htcCheckin;->isEnableFOTA()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1221
    const-string v3, "name"

    const-string v35, "android.server.HTCcheckin.CHECKIN"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1224
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1229
    .end local v28           #intent:Landroid/content/Intent;
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/providers/htcCheckin/CheckinProtocol;->isReplyOk(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v35, Landroid/provider/htcCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Lcom/android/providers/htcCheckin/CheckinProtocol;->sentStats(Lorg/json/JSONObject;)[Landroid/content/ContentValues;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/providers/htcCheckin/CheckinProtocol;->sentEventDate(Lorg/json/JSONObject;)J

    move-result-wide v23

    .line 1245
    .local v23, date:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v35, Landroid/provider/htcCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v36, "date<=?"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1257
    .end local v23           #date:J
    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/android/providers/htcCheckin/CheckinProtocol;->isReplyOk(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "/data/data/com.android.providers.htcCheckin/firstTimeCheckinSuccess"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->isFirstCheckinFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1258
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.server.checkin.FOTA_FIRST_SUCCESS_CHECKIN"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1259
    .local v26, firstSuccessCheckin:Landroid/content/Intent;
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    move-object/from16 v0, v26

    move-wide/from16 v1, v35

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1260
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1261
    const-string v3, "htcCheckinService"

    const-string v35, "Write FIRST_SUCCESS_CHECKIN_FILE to file system."

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v3, "/data/data/com.android.providers.htcCheckin/firstTimeCheckinSuccess"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->putFirstCheckinFile(Ljava/lang/String;)Z

    .line 1263
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/providers/htcCheckin/htcCheckinService;->mbFirstCheckin:Z

    .line 1264
    const-string v3, "htcCheckinService"

    const-string v35, "Broadcast first success check in intent."

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v26           #firstSuccessCheckin:Landroid/content/Intent;
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/providers/htcCheckin/CheckinProtocol;->getReplySettings(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v32

    .line 1276
    .local v32, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 1277
    .local v14, bUpdateAction:Z
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v35, "android.server.checkin.FOTA_UPDATE"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1278
    const/4 v14, 0x1

    .line 1279
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "(from server)bUpdateAction:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_5
    const/4 v12, 0x0

    .line 1283
    .local v12, bCancelAction:Z
    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v35, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1284
    const/4 v12, 0x1

    .line 1285
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "(from server) bCancelAction:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_6
    if-eqz v14, :cond_9

    sget-boolean v3, Lcom/android/providers/htcCheckin/htcCheckinService;->mbFirstCheckin:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    const-string v35, "schedule"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1292
    const-string v3, "ro.htc.checkin.delay"

    const-wide/16 v35, 0x3

    move-wide/from16 v0, v35

    invoke-static {v3, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1295
    .local v16, checkDelay:J
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v35, 0x2

    move/from16 v0, v35

    if-ne v3, v0, :cond_7

    .line 1296
    const-wide/16 v16, 0x0

    .line 1297
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Check in delay:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v3, "htcCheckinService"

    const-string v35, "In ATT sku, DA mode fota, set check-in delay as 0 to disable update delay."

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_7
    const-wide/16 v35, 0x18

    mul-long v35, v35, v16

    const-wide/16 v37, 0x3c

    mul-long v35, v35, v37

    const-wide/16 v37, 0x3c

    mul-long v16, v35, v37

    .line 1302
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Delay self-provision. Interval:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-wide/16 v35, 0x0

    cmp-long v3, v16, v35

    if-lez v3, :cond_9

    .line 1304
    if-nez v32, :cond_8

    .line 1305
    const-string v3, "htcCheckinService"

    const-string v35, "settings is null when perform first check-in!!!"

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    new-instance v32, Ljava/util/HashMap;

    .end local v32           #settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x2

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1308
    .restart local v32       #settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v3, "checkin_interval"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string v3, "digest"

    const-string v35, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    const-string v3, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    .end local v16           #checkDelay:J
    :cond_9
    if-eqz v12, :cond_a

    .line 1316
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/providers/htcCheckin/htcCheckinService;->mbFirstCheckin:Z

    .line 1317
    const-string v3, "htcCheckinService"

    const-string v35, "It\'s FOTA_CANCEL, so set mbFirstCheckin as false. Therefore, Appupdate will be perform anyway."

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :cond_a
    const/4 v13, 0x0

    .line 1330
    .local v13, bManual_or_Push:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 1331
    const/4 v13, 0x1

    .line 1337
    :cond_b
    :goto_4
    if-eqz v32, :cond_c

    .line 1341
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getProvisioningInterval()J

    move-result-wide v18

    .line 1342
    .local v18, checkinInterval_Local:J
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->getIntervalFromServer(Ljava/util/Map;)J

    move-result-wide v20

    .line 1343
    .local v20, checkinInterval_Server:J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mbReSchedule:Z

    .line 1346
    invoke-static/range {p2 .. p2}, Lcom/android/providers/htcCheckin/CheckinProtocol;->isReplyOk(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_d

    cmp-long v3, v18, v20

    if-eqz v3, :cond_d

    const-wide/16 v35, -0x1

    cmp-long v3, v20, v35

    if-lez v3, :cond_d

    .line 1347
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mbReSchedule:Z

    .line 1350
    :cond_d
    if-eqz v32, :cond_e

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 1352
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->updateHTCservices(Ljava/util/Map;)V

    .line 1353
    new-instance v3, Landroid/content/Intent;

    const-string v35, "com.htc.htcservices.intent.action.HTCSERVICES_CHANGED"

    move-object/from16 v0, v35

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v35, Landroid/provider/htcCheckin$Events$Tag;->HTCSERVICES_UPDATE:Landroid/provider/htcCheckin$Events$Tag;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v3, v0, v1}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/htcCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 1358
    :cond_e
    const/16 v33, 0x0

    .line 1359
    .local v33, target_url:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1360
    .local v8, nFileID:I
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1361
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1362
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->getImageId(Ljava/lang/String;)I

    move-result v8

    .line 1369
    :cond_f
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "File ID: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    if-gez v8, :cond_14

    .line 1371
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "format of ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] is wrong, take it as non-encrupted case and keep going."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_10
    :goto_5
    const/16 v34, -0x1

    .line 1429
    .local v34, verSN:I
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/android/providers/htcCheckin/CheckinProtocol;->getSmartNetworkVersion(Lorg/json/JSONObject;)I

    move-result v34

    .line 1430
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Smart network code from server: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    if-ltz v34, :cond_11

    .line 1432
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Set smart network code: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v35, "powersaver_switch_2G_call"

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1443
    :cond_11
    :goto_6
    return-object v22

    .line 1236
    .end local v8           #nFileID:I
    .end local v12           #bCancelAction:Z
    .end local v13           #bManual_or_Push:Z
    .end local v14           #bUpdateAction:Z
    .end local v18           #checkinInterval_Local:J
    .end local v20           #checkinInterval_Server:J
    .end local v32           #settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33           #target_url:Ljava/lang/String;
    .end local v34           #verSN:I
    :catch_0
    move-exception v25

    .line 1237
    .local v25, e:Ljava/lang/Exception;
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Could not bulk insert to checkin provider. error: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1248
    .end local v25           #e:Ljava/lang/Exception;
    .restart local v23       #date:J
    :catch_1
    move-exception v25

    .line 1249
    .restart local v25       #e:Ljava/lang/Exception;
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Could not delete from checkin provider. error: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1252
    .end local v23           #date:J
    .end local v25           #e:Ljava/lang/Exception;
    :cond_12
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Refuse: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1332
    .restart local v12       #bCancelAction:Z
    .restart local v13       #bManual_or_Push:Z
    .restart local v14       #bUpdateAction:Z
    .restart local v32       #settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    const-string v35, "pushmode"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1333
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 1373
    .restart local v8       #nFileID:I
    .restart local v18       #checkinInterval_Local:J
    .restart local v20       #checkinInterval_Server:J
    .restart local v33       #target_url:Ljava/lang/String;
    :cond_14
    if-eqz v8, :cond_10

    .line 1377
    const-string v4, "ews.htc.com"

    .line 1378
    .local v4, cert_host:Ljava/lang/String;
    const/16 v5, 0x1ff5

    .line 1379
    .local v5, cert_port:I
    const-string v6, "https://ews.htc.com:8181/ClientTool/fotadownload.jsp"

    .line 1380
    .local v6, key_host:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 1381
    .local v7, imei:Ljava/lang/String;
    const-string v9, "/system/etc/security/KeyServer_PubKey.der"

    .line 1382
    .local v9, KEYSVR_PUB_KEY:Ljava/lang/String;
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "IMEI:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", FileID:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    .line 1383
    invoke-direct/range {v3 .. v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->getAesKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1386
    .local v10, aes_key:Ljava/lang/String;
    if-nez v10, :cond_15

    .line 1387
    const-string v3, "htcCheckinService"

    const-string v35, "cannot get AES_KEY"

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v3, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string v3, "CancelType"

    const-string v35, "EncryptError"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string v3, "Err_Code"

    const/16 v35, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 1391
    :cond_15
    const-string v3, "ConnectError"

    invoke-virtual {v10, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1392
    const-string v3, "htcCheckinService"

    const-string v35, "ConnectError. Get cert error or connect to key server error"

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v3, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1394
    const-string v3, "CancelType"

    const-string v35, "EncryptError"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1395
    const-string v3, "Err_Code"

    const/16 v35, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 1398
    :cond_16
    new-instance v31, Lcom/android/providers/htcCheckin/RSA_Sign;

    invoke-direct/range {v31 .. v31}, Lcom/android/providers/htcCheckin/RSA_Sign;-><init>()V

    .line 1399
    .local v31, rsa_sign:Lcom/android/providers/htcCheckin/RSA_Sign;
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v9}, Lcom/android/providers/htcCheckin/RSA_Sign;->set_EncSignKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const/4 v15, 0x0

    .line 1404
    .local v15, bVerifyAESKey:Z
    :try_start_3
    const-string v3, "UTF-8"

    invoke-virtual {v10, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/android/providers/htcCheckin/RSA_Sign;->do_verify([B)Z

    move-result v15

    .line 1405
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "The result of verifying AES key: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    if-eqz v15, :cond_17

    .line 1407
    const-string v3, "htcCheckinService"

    const-string v35, "write aes key to file system."

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v3, "UTF-8"

    invoke-virtual {v10, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v3

    const-string v35, "data/data/com.android.providers.htcCheckin/key"

    move-object/from16 v0, v35

    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/RSA_Sign;->writeByteArrayToFile([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1416
    :cond_17
    :goto_7
    if-nez v15, :cond_10

    .line 1417
    const-string v3, "htcCheckinService"

    const-string v35, "Verify AES Key failed!"

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v3, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    const-string v3, "CancelType"

    const-string v35, "EncryptError"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    const-string v3, "Err_Code"

    const/16 v35, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 1410
    :catch_2
    move-exception v25

    .line 1411
    .restart local v25       #e:Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 1412
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Error when verify the sing of AES key. Err:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1438
    .end local v4           #cert_host:Ljava/lang/String;
    .end local v5           #cert_port:I
    .end local v6           #key_host:Ljava/lang/String;
    .end local v7           #imei:Ljava/lang/String;
    .end local v9           #KEYSVR_PUB_KEY:Ljava/lang/String;
    .end local v10           #aes_key:Ljava/lang/String;
    .end local v15           #bVerifyAESKey:Z
    .end local v25           #e:Ljava/lang/Exception;
    .end local v31           #rsa_sign:Lcom/android/providers/htcCheckin/RSA_Sign;
    .restart local v34       #verSN:I
    :catch_3
    move-exception v25

    .line 1439
    .restart local v25       #e:Ljava/lang/Exception;
    const-string v3, "htcCheckinService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Set smart network code failed!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private isAllowDownload(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 15
    .parameter "downloadUrl"
    .parameter "intent"

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1090
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1093
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/htcCheckin/htcCheckinService;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v4, "entity=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1095
    :cond_0
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1096
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1097
    .local v11, status:I
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1101
    .local v14, update:Ljava/lang/String;
    if-nez v14, :cond_2

    .line 1102
    const/4 v2, 0x1

    .line 1137
    if-eqz v7, :cond_1

    .line 1138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v7, 0x0

    .line 1145
    .end local v11           #status:I
    .end local v14           #update:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 1103
    .restart local v11       #status:I
    .restart local v14       #update:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v11}, Landroid/provider/Downloads$Impl;->isStatusInformational(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1107
    const/4 v2, 0x6

    const-string v3, "Download is in progress"

    invoke-virtual {p0, v2, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1108
    const/4 v2, 0x0

    .line 1137
    if-eqz v7, :cond_1

    .line 1138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v7, 0x0

    goto :goto_0

    .line 1109
    :cond_3
    :try_start_2
    invoke-direct {p0, v14}, Lcom/android/providers/htcCheckin/htcCheckinService;->isUpdateFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1110
    const-string v2, "checkFile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1111
    const/4 v2, 0x1

    .line 1137
    if-eqz v7, :cond_1

    .line 1138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v7, 0x0

    goto :goto_0

    .line 1112
    :cond_4
    :try_start_3
    invoke-static {v11}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 1118
    .local v12, strAction:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1120
    .local v13, strUri:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1121
    .local v8, downloadfota:Landroid/content/Intent;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1125
    invoke-direct {p0, v14}, Lcom/android/providers/htcCheckin/htcCheckinService;->isUpdateFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1126
    const-string v2, "checkFile"

    invoke-virtual {v8, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1130
    .local v10, mDownloadIntent:Landroid/app/PendingIntent;
    invoke-virtual {v10}, Landroid/app/PendingIntent;->send()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1131
    const/4 v2, 0x0

    .line 1137
    if-eqz v7, :cond_1

    .line 1138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v7, 0x0

    goto :goto_0

    .line 1137
    .end local v8           #downloadfota:Landroid/content/Intent;
    .end local v10           #mDownloadIntent:Landroid/app/PendingIntent;
    .end local v11           #status:I
    .end local v12           #strAction:Ljava/lang/String;
    .end local v13           #strUri:Ljava/lang/String;
    .end local v14           #update:Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_7

    .line 1138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v7, 0x0

    .line 1145
    :cond_7
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v9

    .line 1135
    .local v9, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when query download provider. error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1137
    if-eqz v7, :cond_7

    .line 1138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v7, 0x0

    goto :goto_1

    .line 1137
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_8

    .line 1138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1139
    const/4 v7, 0x0

    :cond_8
    throw v2
.end method

.method private isDataCallOn()Z
    .locals 4

    .prologue
    .line 3031
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3032
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3033
    .local v2, dataCallInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 3034
    .local v0, bDataCall:Z
    return v0
.end method

.method private isFirstCheckinFileExist(Ljava/lang/String;)Z
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    .line 3136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 3137
    :cond_0
    const-string v5, "htcCheckinService"

    const-string v6, "isFirstCheckinFileExist(). File path is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 3154
    :goto_0
    return v0

    .line 3141
    :cond_1
    const/4 v2, 0x0

    .line 3142
    .local v2, timeStampFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 3144
    .local v0, bResult:Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3145
    .end local v2           #timeStampFile:Ljava/io/File;
    .local v3, timeStampFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 3146
    const/4 v2, 0x0

    .end local v3           #timeStampFile:Ljava/io/File;
    .restart local v2       #timeStampFile:Ljava/io/File;
    goto :goto_0

    .line 3148
    :catch_0
    move-exception v1

    .line 3149
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFirstCheckinFileExist ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 3150
    goto :goto_0

    .line 3148
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #timeStampFile:Ljava/io/File;
    .restart local v3       #timeStampFile:Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #timeStampFile:Ljava/io/File;
    .restart local v2       #timeStampFile:Ljava/io/File;
    goto :goto_1
.end method

.method private isIPTOn()Z
    .locals 7

    .prologue
    .line 3056
    const/4 v1, 0x0

    .line 3059
    .local v1, bIPTOn:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 3061
    .local v2, cm:Landroid/net/ConnectivityManager;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3062
    .local v0, IPTInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3067
    .end local v0           #IPTInfo:Landroid/net/NetworkInfo;
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .line 3063
    :catch_0
    move-exception v3

    .line 3064
    .local v3, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 3065
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when get USBNET status. Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isInternetDataCallOn()Z
    .locals 7

    .prologue
    .line 3003
    const/4 v0, 0x0

    .line 3005
    .local v0, bInternetCall:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3006
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3007
    .local v3, mmsCallInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3011
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #mmsCallInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v0

    .line 3008
    :catch_0
    move-exception v2

    .line 3009
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isInternetDataCallOn(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMMSCallOn()Z
    .locals 7

    .prologue
    .line 2987
    const/4 v0, 0x0

    .line 2989
    .local v0, bMMSCall:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2990
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 2991
    .local v3, mmsCallInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2995
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #mmsCallInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v0

    .line 2992
    :catch_0
    move-exception v2

    .line 2993
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isMMSCallOn(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 6

    .prologue
    .line 3019
    const/4 v0, 0x0

    .line 3021
    .local v0, bEnable:Z
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3022
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3026
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v0

    .line 3023
    :catch_0
    move-exception v2

    .line 3024
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "htcCheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in isMobileDataEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 14

    .prologue
    const/16 v13, 0x7d

    .line 2839
    const/4 v4, 0x1

    .line 2841
    .local v4, bRoaming:Z
    :try_start_0
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 2842
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-nez v6, :cond_0

    move v5, v4

    .line 2901
    .end local v4           #bRoaming:Z
    .end local v6           #cm:Landroid/net/ConnectivityManager;
    .local v5, bRoaming:I
    :goto_0
    return v5

    .line 2849
    .end local v5           #bRoaming:I
    .restart local v4       #bRoaming:Z
    .restart local v6       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    const-string v10, "ro.product.device"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2850
    .local v7, deviceName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2851
    .local v9, netInfo:Landroid/net/NetworkInfo;
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v10, v13, :cond_1

    .line 2852
    const-string v10, "htcCheckinService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get networkinfo for CMCC projects:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 2860
    :goto_1
    if-nez v9, :cond_2

    .line 2861
    const-string v10, "htcCheckinService"

    const-string v11, "NetworkInfo is NULL"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 2862
    .restart local v5       #bRoaming:I
    goto :goto_0

    .line 2855
    .end local v5           #bRoaming:I
    :cond_1
    const-string v10, "htcCheckinService"

    const-string v11, "Get networkinfo for generic projects"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    goto :goto_1

    .line 2864
    :cond_2
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    .line 2865
    const-string v10, "htcCheckinService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Roaming status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    if-nez v4, :cond_3

    .line 2876
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v10, v13, :cond_3

    .line 2877
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isDataCallOn()Z

    move-result v0

    .line 2878
    .local v0, bDataCall:Z
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isMMSCallOn()Z

    move-result v2

    .line 2879
    .local v2, bMMSCall:Z
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isMobileDataEnabled()Z

    move-result v3

    .line 2880
    .local v3, bMobileSetting:Z
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isInternetDataCallOn()Z

    move-result v1

    .line 2882
    .local v1, bInternetDataCall:Z
    const-string v10, "htcCheckinService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Project:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". DataCall ON:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MMSCall ON:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", MobileDataEnabled:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", InternetCallON:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isWifiOn()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2888
    const-string v10, "htcCheckinService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Project:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". MobileNetwork is checked and no WiFi connection. Try to switch APN."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->switchToInternetAPN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    .end local v0           #bDataCall:Z
    .end local v1           #bInternetDataCall:Z
    .end local v2           #bMMSCall:Z
    .end local v3           #bMobileSetting:Z
    .end local v6           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #deviceName:Ljava/lang/String;
    .end local v9           #netInfo:Landroid/net/NetworkInfo;
    :cond_3
    :goto_2
    const-string v10, "htcCheckinService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Roaming is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 2901
    .restart local v5       #bRoaming:I
    goto/16 :goto_0

    .line 2895
    .end local v5           #bRoaming:I
    :catch_0
    move-exception v8

    .line 2896
    .local v8, e:Ljava/lang/Exception;
    const-string v10, "htcCheckinService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error when check roaming status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private isUpdateFileExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "strUpdate"

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1163
    .local v0, bExist:Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1164
    const/4 v0, 0x1

    .line 1180
    :cond_0
    :goto_0
    return v0

    .line 1167
    :cond_1
    const/4 v2, 0x0

    .line 1168
    .local v2, strCheckFile:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mockParam:Landroid/os/Bundle;

    const-string v4, "checkFile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    :cond_2
    const-string v3, "htcCheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The update extra from updater strCheckFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1172
    const/4 v0, 0x1

    goto :goto_0

    .line 1175
    .end local v2           #strCheckFile:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1176
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "htcCheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error as checking update file exists or not. error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUserDebugBuild()Z
    .locals 2

    .prologue
    .line 3175
    const-string v0, "ro.build.type"

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWiMAXOn()Z
    .locals 7

    .prologue
    .line 3040
    const/4 v1, 0x0

    .line 3043
    .local v1, bWiMAXOn:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 3044
    .local v2, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3045
    .local v0, WiMAXInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3050
    .end local v0           #WiMAXInfo:Landroid/net/NetworkInfo;
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .line 3046
    :catch_0
    move-exception v3

    .line 3047
    .local v3, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 3048
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when get WiMAX status. Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWifiOn()Z
    .locals 3

    .prologue
    .line 2976
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2977
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2978
    .local v1, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method private maybeSetTime(Lorg/json/JSONObject;)Z
    .locals 10
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1059
    .local v4, systemTime:J
    invoke-static {p1}, Lcom/android/providers/htcCheckin/CheckinProtocol;->getReplyTime(Lorg/json/JSONObject;)J

    move-result-wide v2

    .line 1060
    .local v2, serverTime:J
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getAutoState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1061
    sub-long v0, v2, v4

    .line 1062
    .local v0, offset:J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-wide/32 v6, -0x22944e80

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 1063
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1064
    :cond_0
    const/4 v6, 0x1

    .line 1066
    .end local v0           #offset:J
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private notifyIntent(Landroid/content/Intent;)V
    .locals 19
    .parameter "intent"

    .prologue
    .line 1549
    invoke-static {}, Landroid/provider/htcCheckin;->isEnableFOTA()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    const-string v15, "htcCheckinService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "intentSource:["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    if-nez v15, :cond_2

    .line 1555
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/providers/htcCheckin/htcCheckinService;->mbFirstCheckin:Z

    .line 1556
    const-string v15, "htcCheckinService"

    const-string v16, "Set [mbFirstCheckin = false] because it\'s manual check-in"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :cond_2
    const/4 v3, 0x0

    .line 1560
    .local v3, CancelByEncrypt:Z
    const-string v15, "CancelType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "CancelType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "EncryptError"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1561
    const/4 v3, 0x1

    .line 1565
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "android.server.checkin.FOTA_CANCEL"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    sget-boolean v15, Lcom/android/providers/htcCheckin/htcCheckinService;->mbFirstCheckin:Z

    if-nez v15, :cond_6

    if-nez v3, :cond_6

    .line 1566
    const-string v15, "ro.config.htc.noappupdate"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1567
    .local v4, bNoAppUpdate:Z
    if-eqz v4, :cond_5

    .line 1568
    const-string v15, "htcCheckinService"

    const-string v16, "App Update is disabled!!"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    .end local v4           #bNoAppUpdate:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "android.server.checkin.FOTA_CANCEL"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1584
    new-instance v5, Landroid/content/Intent;

    const-string v15, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v5, confirmIntent:Landroid/content/Intent;
    const-string v15, "backup_action_string"

    const-string v16, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    const-string v15, "CancelType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "CancelType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "EncryptError"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1588
    const-string v15, "Err_Code"

    const-string v16, "Err_Code"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1589
    const-string v15, "htcCheckinService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Add Err_Code to cancel intent:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Err_Code"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1592
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1570
    .end local v5           #confirmIntent:Landroid/content/Intent;
    .restart local v4       #bNoAppUpdate:Z
    :cond_5
    const-string v15, "htcCheckinService"

    const-string v16, "Perform AppUpdate!!"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    new-instance v12, Lcom/android/providers/htcCheckin/appUpdateExecuter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;-><init>(Landroid/content/Context;)V

    .line 1572
    .local v12, objAPExe:Lcom/android/providers/htcCheckin/appUpdateExecuter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mTriggerType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->setCheckType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->setTargetPackage(Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mUpdateType:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->setUpdateType(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v12}, Lcom/android/providers/htcCheckin/appUpdateExecuter;->doAppCheckin()V

    goto/16 :goto_0

    .line 1579
    .end local v4           #bNoAppUpdate:Z
    .end local v12           #objAPExe:Lcom/android/providers/htcCheckin/appUpdateExecuter;
    :cond_6
    const-string v15, "htcCheckinService"

    const-string v16, "Do not perform Appupdate because it\'s not FOTA_CANCEL and mbFirstCheckin is false"

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1593
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, "android.server.checkin.FOTA_UPDATE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1595
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1596
    .local v6, downloadUrl:Ljava/lang/String;
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v11, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v11, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v5, Landroid/content/Intent;

    const-string v15, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    .restart local v5       #confirmIntent:Landroid/content/Intent;
    const-string v15, "name"

    const-string v16, "android.server.HTCcheckin.CHECKIN"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const/4 v9, 0x0

    .line 1605
    .local v9, errMsg:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1607
    .local v10, errNo:I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->isAllowDownload(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_a

    .line 1609
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mHttpClient:Lcom/htc/util/http/HtcServiceHttpClient;

    invoke-virtual {v15, v11}, Lcom/htc/util/http/HtcServiceHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 1610
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 1611
    .local v14, status:Lorg/apache/http/StatusLine;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 1613
    .local v8, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1614
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1615
    if-eqz v8, :cond_8

    .line 1617
    const-string v15, "package_size"

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1620
    :cond_8
    const-string v15, "checkFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1622
    const-string v15, "checkFile"

    const-string v16, "checkFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    :cond_9
    const-string v15, "backup_action_string"

    const-string v16, "android.server.checkin.FOTA_UPDATE"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const-string v15, "backup_uri_string"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    const-string v15, "download_sdcard"

    invoke-static {}, Lcom/android/providers/htcCheckin/UpdateReceiver;->isSavetoExternal()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1628
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    :try_start_2
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1640
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v7

    .line 1643
    .local v7, e:Ljava/io/IOException;
    const/4 v10, 0x5

    .line 1644
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1646
    .end local v7           #e:Ljava/io/IOException;
    :cond_a
    if-eqz v10, :cond_0

    .line 1647
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/android/providers/htcCheckin/htcCheckinService;->broadcastEventAction(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1631
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:Lorg/apache/http/StatusLine;
    :cond_b
    :try_start_3
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot connect to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1634
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v15

    :try_start_4
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    throw v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private putFirstCheckinFile(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    .line 3110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 3111
    :cond_0
    const-string v4, "htcCheckinService"

    const-string v5, "putFirstCheckinFile(). File path is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :goto_0
    return v3

    .line 3115
    :cond_1
    const/4 v1, 0x0

    .line 3117
    .local v1, timeStampFile:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    .end local v1           #timeStampFile:Ljava/io/File;
    .local v2, timeStampFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3119
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3120
    :cond_2
    const/4 v1, 0x0

    .line 3126
    .end local v2           #timeStampFile:Ljava/io/File;
    .restart local v1       #timeStampFile:Ljava/io/File;
    const/4 v3, 0x1

    goto :goto_0

    .line 3122
    :catch_0
    move-exception v0

    .line 3123
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putFirstCheckinFile ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3122
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #timeStampFile:Ljava/io/File;
    .restart local v2       #timeStampFile:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #timeStampFile:Ljava/io/File;
    .restart local v1       #timeStampFile:Ljava/io/File;
    goto :goto_1
.end method

.method private reportCrashInternal(I[B)V
    .locals 9
    .parameter "uid"
    .parameter "data"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 424
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, packages:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz v4, :cond_1

    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 428
    :try_start_0
    aget-object v6, v4, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 429
    .local v3, p:Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 430
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 441
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    .end local v3           #p:Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .line 435
    :catch_0
    move-exception v1

    .line 436
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "htcCheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :cond_1
    iget-object v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, p2}, Landroid/provider/htcCheckin;->reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;

    goto :goto_1
.end method

.method private reportFailure(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_FAILURE:Landroid/provider/htcCheckin$Events$Tag;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/htcCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 634
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 635
    const-string v0, "htcCheckinService"

    const-string v1, "Unexpected checkin failure"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Landroid/server/data/CrashData;

    const-string v2, "htcCheckinService"

    invoke-direct {v1, v2, p1}, Landroid/server/data/CrashData;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Landroid/provider/htcCheckin;->reportCrash(Landroid/content/ContentResolver;Landroid/server/data/CrashData;)Landroid/net/Uri;

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    const-string v0, "htcCheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checkin failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized scheduleCheckin()V
    .locals 18

    .prologue
    .line 2149
    monitor-enter p0

    :try_start_0
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.server.HTCcheckin.CHECKIN"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2150
    .local v12, schedIntent:Landroid/content/Intent;
    const-string v1, "intentSource"

    const-string v2, "schedule"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2152
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2154
    .local v7, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z

    if-nez v1, :cond_0

    .line 2156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    :goto_0
    monitor-exit p0

    return-void

    .line 2161
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "checkin_interval"

    const-wide/32 v16, 0x15180

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$HTCservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    mul-long v5, v1, v14

    .line 2166
    .local v5, interval:J
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2167
    const-string v1, "ro.aa.mainsku"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2168
    .local v13, strSku:Ljava/lang/String;
    const-string v1, "999"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v8, 0x1

    .line 2169
    .local v8, bAttUT:Z
    :goto_1
    if-eqz v8, :cond_4

    .line 2170
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "strSku: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, " do not disable schedule checkin"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    .end local v8           #bAttUT:Z
    .end local v13           #strSku:Ljava/lang/String;
    :cond_2
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_5

    .line 2180
    const-string v1, "htcCheckinService"

    const-string v2, "Checkin schedule is disabled by server"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2149
    .end local v5           #interval:J
    .end local v7           #sender:Landroid/app/PendingIntent;
    .end local v12           #schedIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2168
    .restart local v5       #interval:J
    .restart local v7       #sender:Landroid/app/PendingIntent;
    .restart local v12       #schedIntent:Landroid/content/Intent;
    .restart local v13       #strSku:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 2172
    .restart local v8       #bAttUT:Z
    :cond_4
    const-wide/16 v5, 0x0

    .line 2173
    :try_start_2
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Check in interval:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const-string v1, "htcCheckinService"

    const-string v2, "In ATT sku, DA mode fota, set check-in interval as 0 to disable background checkin."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2186
    .end local v8           #bAttUT:Z
    .end local v13           #strSku:Ljava/lang/String;
    :cond_5
    const-wide v1, 0xcdfe6000L

    cmp-long v1, v5, v1

    if-lez v1, :cond_6

    .line 2187
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checkin interval too long: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    const-wide v5, 0xcdfe6000L

    .line 2191
    :cond_6
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CHECKIN_INTERVAL_MIN "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v14, Lcom/android/providers/htcCheckin/htcCheckinService;->CHECKIN_INTERVAL_MIN:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    sget-wide v1, Lcom/android/providers/htcCheckin/htcCheckinService;->CHECKIN_INTERVAL_MIN:J

    cmp-long v1, v5, v1

    if-gez v1, :cond_7

    .line 2193
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checkin interval too short: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    sget-wide v5, Lcom/android/providers/htcCheckin/htcCheckinService;->CHECKIN_INTERVAL_MIN:J

    .line 2197
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2198
    .local v10, now:J
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getLastSuccessTime()J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getLastFailureTime()J

    move-result-wide v14

    sget-wide v16, Lcom/android/providers/htcCheckin/htcCheckinService;->CHECKIN_INTERVAL_MIN:J

    add-long v14, v14, v16

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2200
    .local v3, next:J
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2205
    const-string v1, "ro.config.htc.nocheckin"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2206
    .local v9, bDisableCheckin:Z
    if-eqz v9, :cond_8

    .line 2207
    const-string v1, "htcCheckinService"

    const-string v2, "FOTA check-in is disabled. Do not set/trigger AlarmManager."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2209
    :cond_8
    const-string v1, "htcCheckinService"

    const-string v2, "FOTA check-in is NOT disabled. Set AlarmManager."

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private switchToInternetAPN()V
    .locals 8

    .prologue
    .line 2914
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 2919
    .local v3, objCM:Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    const-string v6, "enableINTERNET"

    invoke-virtual {v3, v5, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    .line 2920
    .local v4, rsl:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mStartUsingNetwork:Z

    .line 2922
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result of startUsingNetowrkFeature:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start to wait for switching... Data call connected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isDataCallOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Internet data call:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isInternetDataCallOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2927
    const/16 v0, 0x1e

    .line 2928
    .local v0, TIMEOUT:I
    const/4 v2, 0x0

    .line 2930
    .local v2, nCount:I
    :goto_0
    const/16 v5, 0x1e

    if-ge v2, v5, :cond_0

    .line 2931
    :try_start_1
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keep waiting...:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isInternetDataCallOn()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 2943
    .end local v0           #TIMEOUT:I
    .end local v2           #nCount:I
    .end local v3           #objCM:Landroid/net/ConnectivityManager;
    .end local v4           #rsl:I
    :cond_0
    :goto_1
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After trying, we get data call:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isDataCallOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Internet data call:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->isInternetDataCallOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    return-void

    .line 2934
    .restart local v0       #TIMEOUT:I
    .restart local v2       #nCount:I
    .restart local v3       #objCM:Landroid/net/ConnectivityManager;
    .restart local v4       #rsl:I
    :cond_1
    const-wide/16 v5, 0x3e8

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2937
    :catch_0
    move-exception v1

    .line 2938
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Waiting for internet APN error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2940
    .end local v0           #TIMEOUT:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #nCount:I
    .end local v3           #objCM:Landroid/net/ConnectivityManager;
    .end local v4           #rsl:I
    :catch_1
    move-exception v1

    .line 2941
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "htcCheckinService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchToInternetAPN() Error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private tryToStopUsingNetworkFeature()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2954
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_0

    .line 2955
    iget-boolean v4, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mStartUsingNetwork:Z

    if-eqz v4, :cond_0

    .line 2956
    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2957
    .local v0, deviceName:Ljava/lang/String;
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop using network features. Project:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 2961
    .local v2, objCM:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    const-string v5, "enableINTERNET"

    invoke-virtual {v2, v4, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 2962
    .local v3, rsl:I
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopUsingNetworkFeature():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2967
    .end local v2           #objCM:Landroid/net/ConnectivityManager;
    .end local v3           #rsl:I
    :goto_0
    iput-boolean v7, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mStartUsingNetwork:Z

    .line 2970
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    return-void

    .line 2964
    .restart local v0       #deviceName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2965
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "htcCheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopUsingNetworkFeature() error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->access$500(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateClockStats()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x408f400000000000L

    .line 987
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRealtime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 988
    .local v0, realtime:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastUptime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 990
    .local v1, uptime:I
    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Checkin$Stats$Tag;->ELAPSED_REALTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

    int-to-double v4, v0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v8, v4, v5}, Landroid/provider/htcCheckin;->updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 992
    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Checkin$Stats$Tag;->ELAPSED_UPTIME_SEC:Landroid/provider/Checkin$Stats$Tag;

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-static {v2, v3, v8, v4, v5}, Landroid/provider/htcCheckin;->updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 995
    iget-wide v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRealtime:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRealtime:J

    .line 996
    iget-wide v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastUptime:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastUptime:J

    .line 997
    return-void
.end method

.method private updateHTCservices(Ljava/util/Map;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1662
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 1663
    .local v16, overrides:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "override"

    invoke-static {v2, v3}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1665
    .local v17, setting:Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 1666
    const-string v2, " +"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_1

    aget-object v15, v7, v11

    .line 1667
    .local v15, override:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1668
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1666
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1673
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #override:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    .line 1675
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/Settings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/htcCheckin/htcCheckinService;->HTCSERVICES_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1684
    :goto_1
    if-eqz v8, :cond_5

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1685
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1686
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1687
    .local v14, name:Ljava/lang/String;
    const-string v2, "override"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "appupdate_timestamp"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1693
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1702
    .end local v14           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 1703
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1704
    const/4 v8, 0x0

    :cond_4
    throw v2

    .line 1677
    :catch_0
    move-exception v10

    .line 1678
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not query HTCService in setting provider. error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1702
    .end local v10           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v8, :cond_6

    .line 1703
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1704
    const/4 v8, 0x0

    .line 1711
    :cond_6
    new-instance v20, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1712
    .local v20, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 1713
    .local v18, val:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, key:Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1714
    .local v19, value:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1718
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1719
    .local v9, cv:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v9, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string v2, "value"

    move-object/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1726
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v12           #key:Ljava/lang/String;
    .end local v18           #val:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #value:Ljava/lang/String;
    :cond_8
    :try_start_2
    sget-object v3, Landroid/provider/Settings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentValues;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1730
    :goto_4
    return-void

    .line 1727
    :catch_1
    move-exception v10

    .line 1728
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bulk insert HTC Service in setting provider. error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateNetworkStats()V
    .locals 13

    .prologue
    .line 1000
    invoke-static {}, Landroid/os/NetStat;->getMobileRxBytes()J

    move-result-wide v0

    .line 1001
    .local v0, rxBytes:J
    invoke-static {}, Landroid/os/NetStat;->getMobileRxPkts()J

    move-result-wide v2

    .line 1002
    .local v2, rxPackets:J
    invoke-static {}, Landroid/os/NetStat;->getMobileTxBytes()J

    move-result-wide v4

    .line 1003
    .local v4, txBytes:J
    invoke-static {}, Landroid/os/NetStat;->getMobileTxPkts()J

    move-result-wide v6

    .line 1005
    .local v6, txPackets:J
    iget-object v8, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Checkin$Stats$Tag;->NETWORK_RX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

    iget-wide v10, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRxPackets:J

    sub-long v10, v2, v10

    long-to-int v10, v10

    iget-wide v11, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRxBytes:J

    sub-long v11, v0, v11

    long-to-double v11, v11

    invoke-static {v8, v9, v10, v11, v12}, Landroid/provider/htcCheckin;->updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 1008
    iget-object v8, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Checkin$Stats$Tag;->NETWORK_TX_MOBILE:Landroid/provider/Checkin$Stats$Tag;

    iget-wide v10, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastTxPackets:J

    sub-long v10, v6, v10

    long-to-int v10, v10

    iget-wide v11, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastTxBytes:J

    sub-long v11, v4, v11

    long-to-double v11, v11

    invoke-static {v8, v9, v10, v11, v12}, Landroid/provider/htcCheckin;->updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 1012
    iput-wide v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRxBytes:J

    .line 1013
    iput-wide v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRxPackets:J

    .line 1014
    iput-wide v4, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastTxBytes:J

    .line 1015
    iput-wide v6, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastTxPackets:J

    .line 1016
    return-void
.end method

.method private updateParentalControlStatus()V
    .locals 19

    .prologue
    .line 2278
    const/4 v1, 0x0

    .line 2280
    .local v1, LITMUS_URL:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2284
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2286
    .local v12, restoreToken:J
    const/4 v8, 0x0

    .line 2287
    .local v8, parentalControlEnabled:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2290
    .local v9, redirectUrl:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2291
    .local v6, get:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mHttpClient:Lcom/htc/util/http/HtcServiceHttpClient;

    invoke-virtual {v15, v6}, Lcom/htc/util/http/HtcServiceHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 2292
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 2294
    .local v14, status:Lorg/apache/http/StatusLine;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 2295
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "parental_control_expected_response"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2299
    .local v5, expectedResponse:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 2301
    const-string v8, "false"

    .line 2329
    .end local v5           #expectedResponse:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 2330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "parental_control_enabled"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "parental_control_redirect_url"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "parental_control_last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2305
    .restart local v5       #expectedResponse:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 2307
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2308
    .local v2, actualResponse:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v8, "false"

    :goto_2
    goto :goto_1

    :cond_4
    const-string v8, "true"

    goto :goto_2

    .line 2313
    .end local v2           #actualResponse:Ljava/lang/String;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #expectedResponse:Ljava/lang/String;
    :cond_5
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0x12e

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 2315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "parental_control_redirect_regex"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2319
    .local v10, redirectWhitelist:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 2320
    const-string v15, "location"

    invoke-interface {v11, v15}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 2321
    .local v7, locationHeader:Lorg/apache/http/Header;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2323
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 2324
    const-string v8, "true"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2340
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #locationHeader:Lorg/apache/http/Header;
    .end local v10           #redirectWhitelist:Ljava/lang/String;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v3

    .line 2342
    .local v3, e:Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method private uploadCrashes()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 548
    const/16 v21, 0x0

    .line 549
    .local v21, numUploaded:I
    const/4 v11, 0x0

    .line 551
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/htcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 557
    :goto_0
    if-nez v11, :cond_0

    .line 621
    :goto_1
    return-void

    .line 553
    :catch_0
    move-exception v14

    .line 554
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "htcCheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not query checkin provider. error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    .end local v14           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, aid:Ljava/lang/String;
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 564
    .local v18, idCol:I
    const-string v2, "data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 565
    .local v13, dataCol:I
    const-string v2, "logs"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 567
    .local v20, logsCol:I
    const/4 v9, 0x0

    .line 568
    .local v9, count:I
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 570
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 571
    .local v16, id:J
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 572
    .local v12, data:Ljava/lang/String;
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 575
    .local v19, logs:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->deactivate()V

    .line 578
    new-instance v10, Landroid/server/data/CrashData;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v2}, Landroid/server/data/CrashData;-><init>(Ljava/io/DataInput;)V

    .line 583
    .local v10, crash:Landroid/server/data/CrashData;
    const/4 v7, 0x0

    .line 584
    .local v7, zippedLogs:[B
    if-eqz v19, :cond_1

    .line 585
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 586
    .local v8, arr:Ljava/io/ByteArrayOutputStream;
    new-instance v26, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 587
    .local v26, zipper:Ljava/io/OutputStream;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 588
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->close()V

    .line 589
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 592
    .end local v8           #arr:Ljava/io/ByteArrayOutputStream;
    .end local v26           #zipper:Ljava/io/OutputStream;
    :cond_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 593
    .restart local v8       #arr:Ljava/io/ByteArrayOutputStream;
    new-instance v22, Ljava/io/DataOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 594
    .local v22, out:Ljava/io/DataOutputStream;
    new-instance v2, Landroid/server/data/CrashData;

    invoke-virtual {v10}, Landroid/server/data/CrashData;->getActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/server/data/CrashData;->getBuildData()Landroid/server/data/BuildData;

    move-result-object v5

    invoke-virtual {v10}, Landroid/server/data/CrashData;->getThrowableData()Landroid/server/data/ThrowableData;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Landroid/server/data/CrashData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/server/data/BuildData;Landroid/server/data/ThrowableData;[B)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/server/data/CrashData;->write(Ljava/io/DataOutput;)V

    .line 598
    new-instance v23, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->getCrashURL()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 599
    .local v23, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mHttpClient:Lcom/htc/util/http/HtcServiceHttpClient;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/htc/util/http/HtcServiceHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 601
    .local v24, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    .line 602
    .local v25, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 603
    .local v15, entity:Lorg/apache/http/HttpEntity;
    if-eqz v15, :cond_2

    .line 604
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 606
    :cond_2
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_3

    .line 607
    new-instance v2, Lorg/apache/http/HttpException;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    .end local v7           #zippedLogs:[B
    .end local v8           #arr:Ljava/io/ByteArrayOutputStream;
    .end local v9           #count:I
    .end local v10           #crash:Landroid/server/data/CrashData;
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #dataCol:I
    .end local v15           #entity:Lorg/apache/http/HttpEntity;
    .end local v16           #id:J
    .end local v18           #idCol:I
    .end local v19           #logs:Ljava/lang/String;
    .end local v20           #logsCol:I
    .end local v22           #out:Ljava/io/DataOutputStream;
    .end local v23           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .end local v25           #status:Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 611
    .restart local v7       #zippedLogs:[B
    .restart local v8       #arr:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #count:I
    .restart local v10       #crash:Landroid/server/data/CrashData;
    .restart local v12       #data:Ljava/lang/String;
    .restart local v13       #dataCol:I
    .restart local v15       #entity:Lorg/apache/http/HttpEntity;
    .restart local v16       #id:J
    .restart local v18       #idCol:I
    .restart local v19       #logs:Ljava/lang/String;
    .restart local v20       #logsCol:I
    .restart local v22       #out:Ljava/io/DataOutputStream;
    .restart local v23       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    .restart local v25       #status:Lorg/apache/http/StatusLine;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/htcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 615
    invoke-interface {v11}, Landroid/database/Cursor;->requery()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    add-int/lit8 v9, v9, 0x1

    .line 617
    goto/16 :goto_2

    .line 619
    .end local v7           #zippedLogs:[B
    .end local v8           #arr:Ljava/io/ByteArrayOutputStream;
    .end local v10           #crash:Landroid/server/data/CrashData;
    .end local v12           #data:Ljava/lang/String;
    .end local v15           #entity:Lorg/apache/http/HttpEntity;
    .end local v16           #id:J
    .end local v19           #logs:Ljava/lang/String;
    .end local v22           #out:Ljava/io/DataOutputStream;
    .end local v23           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .end local v25           #status:Lorg/apache/http/StatusLine;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method


# virtual methods
.method public _intf_checkin()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 448
    const-string v5, "ro.config.htc.nocheckin"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 449
    const-string v4, "htcCheckinService"

    const-string v5, "Checkin disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_0
    return v3

    .line 453
    :cond_0
    sget-object v5, Lcom/android/providers/htcCheckin/htcCheckinService;->lockThread:Ljava/lang/Object;

    monitor-enter v5

    .line 454
    :try_start_0
    sget-boolean v6, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    if-eqz v6, :cond_1

    .line 455
    const-string v4, "htcCheckinService"

    const-string v6, "Another thread is running for OTA Package."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    monitor-exit v5

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 459
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    .line 460
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 465
    .local v1, pm:Landroid/os/PowerManager;
    const-string v5, "htcCheckinService"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 466
    .local v2, wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 470
    :try_start_2
    invoke-static {}, Landroid/provider/htcCheckin;->isEnableCheckin()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 471
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->doCheckin()V

    .line 472
    iget-object v5, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/htcCheckin$Events$Tag;->HTC_CHECKIN_SUCCESS:Landroid/provider/htcCheckin$Events$Tag;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/htcCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 482
    :cond_2
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 483
    sget-object v5, Lcom/android/providers/htcCheckin/htcCheckinService;->lockThread:Ljava/lang/Object;

    monitor-enter v5

    .line 484
    const/4 v3, 0x0

    :try_start_3
    sput-boolean v3, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    .line 485
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v3, v4

    .line 489
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
    :try_start_4
    const-string v4, "htcCheckinService"

    const-string v5, "Checkin disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 482
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 483
    sget-object v4, Lcom/android/providers/htcCheckin/htcCheckinService;->lockThread:Ljava/lang/Object;

    monitor-enter v4

    .line 484
    const/4 v5, 0x0

    :try_start_5
    sput-boolean v5, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    .line 485
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 477
    .end local v0           #e:Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
    :catch_1
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->reportFailure(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 482
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 483
    sget-object v4, Lcom/android/providers/htcCheckin/htcCheckinService;->lockThread:Ljava/lang/Object;

    monitor-enter v4

    .line 484
    const/4 v5, 0x0

    :try_start_7
    sput-boolean v5, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    .line 485
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 482
    :catchall_4
    move-exception v3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 483
    sget-object v4, Lcom/android/providers/htcCheckin/htcCheckinService;->lockThread:Ljava/lang/Object;

    monitor-enter v4

    .line 484
    const/4 v5, 0x0

    :try_start_9
    sput-boolean v5, Lcom/android/providers/htcCheckin/htcCheckinService;->jobRunning:Z

    .line 485
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v3

    :catchall_5
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v3
.end method

.method public _intf_getParentalControlState(Lcom/android/providers/htcCheckin/IParentalControlCallback;Ljava/lang/String;)V
    .locals 2
    .parameter "callback"
    .parameter "requestingApp"

    .prologue
    .line 2440
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/IParentalControlCallback;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2441
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2442
    return-void
.end method

.method public _intf_masterClear()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public _intf_reportCrashAsync([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 506
    .local v0, uid:I
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/providers/htcCheckin/htcCheckinService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService$2;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;I[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 511
    return-void
.end method

.method public _intf_reportCrashSync([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService;->reportCrashInternal(I[B)V

    .line 499
    return-void
.end method

.method protected broadcastEventAction(ILjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v1, "manual"

    .line 1082
    .local v1, trigger:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.server.checkin.FOTA_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "errno"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "trigger"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    invoke-virtual {p0, v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1085
    return-void

    .line 1079
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #trigger:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->intentSource:Ljava/lang/String;

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 643
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump htcCheckinService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    :goto_0
    return-void

    .line 650
    :cond_0
    const/4 v6, 0x0

    .line 653
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "tag"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_1
    if-nez v6, :cond_1

    .line 662
    const-string v0, "Error reading events!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tag"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "sum"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "tag"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 682
    :goto_3
    if-nez v6, :cond_3

    .line 683
    const-string v0, "Error reading stats!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 705
    :goto_5
    if-nez v6, :cond_7

    .line 706
    const-string v0, "Error reading crashes!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    :goto_6
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getProvisioningDigest()Ljava/lang/String;

    move-result-object v7

    .line 715
    .local v7, digest:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The digest of latest provisioning update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    .end local v7           #digest:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 658
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "htcCheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not query checkin provider. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 664
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " events logged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  yyyy-MM-dd kk:mm:ss "

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 670
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 671
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 678
    :catch_1
    move-exception v8

    .line 679
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v0, "htcCheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not query checkin provider. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 685
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stats pending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 689
    .local v9, line:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 691
    :cond_4
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 693
    :cond_5
    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 695
    .end local v9           #line:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 696
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 701
    :catch_2
    move-exception v8

    .line 702
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v0, "htcCheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not query checkin provider. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 708
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " crashes reported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    const/4 v6, 0x0

    goto/16 :goto_6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 386
    const-class v0, Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mBinder:Lcom/android/providers/htcCheckin/ICheckinService$Stub;

    .line 389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 306
    :try_start_0
    const-string v2, "htc_checkin"

    .line 307
    .local v2, strSrvName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mBinder:Lcom/android/providers/htcCheckin/ICheckinService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v2           #strSrvName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    .line 317
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 320
    invoke-static {}, Landroid/os/NetStat;->getMobileRxBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRxBytes:J

    .line 321
    invoke-static {}, Landroid/os/NetStat;->getMobileRxPkts()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastRxPackets:J

    .line 322
    invoke-static {}, Landroid/os/NetStat;->getMobileTxBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastTxBytes:J

    .line 323
    invoke-static {}, Landroid/os/NetStat;->getMobileTxPkts()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mLastTxPackets:J

    .line 326
    new-instance v3, Lcom/htc/util/http/HtcServiceHttpClient;

    iget-object v4, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "Android-Checkin/3.0"

    invoke-direct {v3, v4, v5}, Lcom/htc/util/http/HtcServiceHttpClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mHttpClient:Lcom/htc/util/http/HtcServiceHttpClient;

    .line 333
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/htcCheckinService;->addBootEvents()V

    .line 336
    new-instance v1, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;

    invoke-direct {v1, p0, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/htcCheckinService$1;)V

    .line 337
    .local v1, myCheckinReceiver:Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.server.HTCcheckin.CHECKIN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    new-instance v3, Lcom/android/providers/htcCheckin/htcCheckinService$TimeChangedReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$TimeChangedReceiver;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/htcCheckinService$1;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v3, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/htcCheckinService$1;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/providers/htcCheckin/htcCheckinService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    new-instance v3, Lcom/android/providers/htcCheckin/UpdateReceiver;

    invoke-direct {v3, p0}, Lcom/android/providers/htcCheckin/UpdateReceiver;-><init>(Landroid/content/Context;)V

    .line 366
    new-instance v3, Lcom/android/providers/htcCheckin/DumpStateReceiver;

    invoke-direct {v3, p0}, Lcom/android/providers/htcCheckin/DumpStateReceiver;-><init>(Landroid/content/Context;)V

    .line 371
    :try_start_1
    iget-object v3, p0, Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "parental_control_last_update"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 379
    :goto_1
    return-void

    .line 310
    .end local v1           #myCheckinReceiver:Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "htcCheckinService"

    const-string v4, "Failed to add HTC Checkin Service to Service manager"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 374
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #myCheckinReceiver:Lcom/android/providers/htcCheckin/htcCheckinService$htcCheckinReceiver;
    :catch_1
    move-exception v0

    .line 375
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "htcCheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL execute fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    .end local v0           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "htcCheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
