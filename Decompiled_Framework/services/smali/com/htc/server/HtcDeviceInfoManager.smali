.class public Lcom/htc/server/HtcDeviceInfoManager;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$SettingContentObserver;,
        Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;,
        Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;,
        Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;,
        Lcom/htc/server/HtcDeviceInfoManager$MediaReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    }
.end annotation


# static fields
.field private static final ADD_ANR:I = 0x4

.field private static final ADD_CRASH:I = 0x3

.field private static final APP_DIED:I = 0xe

.field private static final COL_SC_APPNAME:Ljava/lang/String; = "shortcut_app_name"

.field private static final COL_SC_CLASSNAME:Ljava/lang/String; = "shortcut_class_name"

.field private static final COL_SC_ID:Ljava/lang/String; = "shortcut_id"

.field private static final COL_SC_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.provider"

.field private static final DB_SHORTCUT_LIST:Ljava/lang/String; = "shortcut_list"

.field private static final DB_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DEBUG:Z = false

.field private static final FLUSH:I = 0x0

.field private static final FLUSH_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_FLUSH"

.field private static FLUSH_INTERVAL:J = 0x0L

.field private static final KILL_ALL_PROC:I = 0x7

.field private static final KILL_PROC:I = 0x6

.field private static final LOGHWINFOTIME:I = 0x13

.field private static final LOGHWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogHWInfoTime"

.field private static final LOGINSTALLEDAPP:I = 0x11

.field private static final LOGINSTALLEDAPP_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogInstalledApp"

.field private static LOGINSTALLEDAPP_INTERVAL:J = 0x0L

.field private static final LOGLOCATIONINFO:I = 0x14

.field private static final LOGLOCATIONINFO_ACTION:Ljava/lang/String; = "com.htc.screen_capture_action"

.field private static final LOGSWINFOTIME:I = 0x12

.field private static final LOGSWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogSWInfoTime"

#the value of this static final field might be set in the static constructor
.field public static final MAX_USER_ACTIVITY_DURATION:J = 0x0L

.field private static final MEDIA_RECEIVER_ACTION:Ljava/lang/String; = "com.htc.HtcDeviceInfoManager.MediaReceiver"

.field private static final RESET:I = 0x8

.field private static final SCREEN_OFF:I = 0xc

.field private static final SCREEN_ON:I = 0xb

.field private static final SENTINEL:I = 0xa

.field public static SETTING_SCREEN_OFF_TIMEOUT:J = 0x0L

.field private static final SET_TOP:I = 0x2

.field private static final START_PHONE_CALL:I = 0xf

.field private static final START_PROC:I = 0x5

.field private static final STOP:I = 0x9

.field private static final STOP_PHONE_CALL:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final UPDATE:I = 0x1

.field private static UPDATE_INTERVAL:J = 0x0L

.field private static final URI_SHORTCUT_LIST:Landroid/net/Uri; = null

.field private static final URI_SHORTCUT_VISIBILITY:Landroid/net/Uri; = null

.field private static final USER_ACTIVITY:I = 0xd

.field public static final VERBOSE:Z

.field private static sInstance:Lcom/htc/server/HtcDeviceInfoManager;

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

.field private mEnable:Z

.field private mFilePath:Ljava/lang/String;

.field private mForegroundProcess:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

.field private mLastForegroundUpdateTime:J

.field private mProcessInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/HtcDeviceInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessStats:Lcom/android/internal/os/ProcessStats;

.field private mScreenOn:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "persist.deviceinfo.idletime"

    const-wide/32 v2, 0xafc8

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/htc/server/HtcDeviceInfoManager;->MAX_USER_ACTIVITY_DURATION:J

    sget-wide v1, Lcom/htc/server/HtcDeviceInfoManager;->MAX_USER_ACTIVITY_DURATION:J

    sput-wide v1, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    const-string v1, "persist.deviceinfo.verbose"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->FLUSH_INTERVAL:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->UPDATE_INTERVAL:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->LOGINSTALLEDAPP_INTERVAL:J

    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_visibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/server/HtcDeviceInfoManager;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    sput-object v4, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    sput-object v4, Lcom/htc/server/HtcDeviceInfoManager;->sPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/deviceinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/server/HtcDeviceInfoManager;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    new-instance v3, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v3, v6}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mForegroundProcess:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J

    iput-boolean v7, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "disable HtcDeviceInfoManager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    if-nez v3, :cond_1

    sput-object p0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mFilePath:Ljava/lang/String;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "HtcDeviceInfoManager"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;

    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;-><init>(Lcom/htc/server/HtcDeviceInfoManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/app/HtcDeviceInfo;

    invoke-direct {v3}, Landroid/app/HtcDeviceInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    const-string v4, "ro.build.changelist"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput v6, v3, Landroid/app/HtcDeviceInfo;->simState:I

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/HtcDeviceInfo;->deserializeFromFile(Ljava/lang/String;)Landroid/app/HtcDeviceInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v3, v3, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-object v4, v4, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v3}, Landroid/app/HtcDeviceInfo;->reset()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v3}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    :cond_3
    sget-object v3, Lcom/htc/server/HtcDeviceInfoManager;->sPowerManager:Landroid/os/PowerManager;

    if-nez v3, :cond_4

    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    new-instance v3, Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v2, v4}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    sput-object v3, Lcom/htc/server/HtcDeviceInfoManager;->sPowerManager:Landroid/os/PowerManager;

    :cond_4
    sget-object v3, Lcom/htc/server/HtcDeviceInfoManager;->sPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/htc/server/HtcDeviceInfoManager;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    :cond_5
    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    sget-wide v4, Lcom/htc/server/HtcDeviceInfoManager;->FLUSH_INTERVAL:J

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/HtcDeviceInfoManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()J
    .locals 2

    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->FLUSH_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$1200()J
    .locals 2

    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->UPDATE_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/htc/server/HtcDeviceInfoManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/htc/server/HtcDeviceInfoManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mForegroundProcess:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/server/HtcDeviceInfoManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mForegroundProcess:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/server/HtcDeviceInfoManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/server/HtcDeviceInfoManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/android/internal/os/ProcessStats;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/WallpaperManager;)Landroid/app/WallpaperManager;
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$2300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/server/HtcDeviceInfoManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/PowerManager;
    .locals 1

    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager;->sPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    return-object v0
.end method

.method public static getInstance()Lcom/htc/server/HtcDeviceInfoManager;
    .locals 1

    sget-object v0, Lcom/htc/server/HtcDeviceInfoManager;->sInstance:Lcom/htc/server/HtcDeviceInfoManager;

    return-object v0
.end method

.method private setupDevicePhoneStateListener(Landroid/telephony/TelephonyManager;)V
    .locals 1

    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$1;-><init>(Lcom/htc/server/HtcDeviceInfoManager;Landroid/telephony/TelephonyManager;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public addANR(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addCrash(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addDeviceUseTime(JLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v1, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    sget-boolean v0, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDeviceUseTime, duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceUseTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v2, v2, Landroid/app/HtcDeviceInfo;->deviceUseTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public appDied(I)V
    .locals 4

    iget-boolean v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getAppAliveTime(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v1, -0x1

    iget-boolean v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v3, :cond_0

    :goto_0
    return-wide v1

    :cond_0
    iget-object v3, p0, Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceAliveTime()J
    .locals 2

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getDeviceInfo()Landroid/app/HtcDeviceInfo;
    .locals 2

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;

    invoke-virtual {v0}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVoiceAppUsage()Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    return v0
.end method

.method public killAllProcess()V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager;->FLUSH_INTERVAL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setLastDeviceUseUpdateTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide p1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    :cond_0
    return-void
.end method

.method public setNewTopApp(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setup(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    invoke-direct {v3}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    new-instance v21, Landroid/content/IntentFilter;

    const-string v3, "com.htc.DEVICE_INFO_FLUSH"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.DEVICE_INFO_LogInstalledApp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.DEVICE_INFO_LogSWInfoTime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.DEVICE_INFO_LogHWInfoTime"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.htc.screen_capture_action"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/htc/server/HtcDeviceInfoManager$FlushReceiver;-><init>(Lcom/htc/server/HtcDeviceInfoManager;Lcom/htc/server/HtcDeviceInfoManager$1;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/htc/server/HtcDeviceInfoManager$MediaReceiver;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/htc/server/HtcDeviceInfoManager$MediaReceiver;-><init>(Lcom/htc/server/HtcDeviceInfoManager$1;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v18, Lcom/htc/server/HtcDeviceInfoManager$SettingContentObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/htc/server/HtcDeviceInfoManager$SettingContentObserver;-><init>(Lcom/htc/server/HtcDeviceInfoManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v6, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_timeout"

    sget-wide v9, Lcom/htc/server/HtcDeviceInfoManager;->MAX_USER_ACTIVITY_DURATION:J

    invoke-static {v3, v6, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    const-wide/16 v6, -0x1

    cmp-long v3, v19, v6

    if-eqz v3, :cond_2

    sput-wide v19, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    :goto_1
    const-string v3, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/server/HtcDeviceInfoManager;->setupDevicePhoneStateListener(Landroid/telephony/TelephonyManager;)V

    :cond_1
    const-string v3, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.DEVICE_INFO_FLUSH"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v3, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    sget-wide v6, Lcom/htc/server/HtcDeviceInfoManager;->FLUSH_INTERVAL:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v6, v9

    const-wide/32 v9, 0x927c0

    sub-long v4, v6, v9

    const/4 v3, 0x3

    sget-wide v6, Lcom/htc/server/HtcDeviceInfoManager;->FLUSH_INTERVAL:J

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.htc.DEVICE_INFO_LogInstalledApp"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    sget-wide v6, Lcom/htc/server/HtcDeviceInfoManager;->LOGINSTALLEDAPP_INTERVAL:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v6, v9

    const-wide/32 v9, 0x927c0

    sub-long v11, v6, v9

    const/4 v10, 0x3

    sget-wide v13, Lcom/htc/server/HtcDeviceInfoManager;->LOGINSTALLEDAPP_INTERVAL:J

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;

    goto/16 :goto_0

    :cond_2
    sget-wide v6, Lcom/htc/server/HtcDeviceInfoManager;->MAX_USER_ACTIVITY_DURATION:J

    sput-wide v6, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    goto :goto_1
.end method

.method public startProcess(Ljava/lang/String;II)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-enter p0

    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public synchronizedFlush()V
    .locals 4

    const/16 v3, 0xa

    iget-boolean v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-enter p0

    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchronized flush exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public update(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public userActivity(J)V
    .locals 4

    iget-boolean v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mEnable:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
