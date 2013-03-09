.class public Lcom/htc/server/ulog/UserBehaviorLoggingService;
.super Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;
.source "UserBehaviorLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/UserBehaviorLoggingService$1;,
        Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;,
        Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field static final ACTION_TELL_HTC_SETTING_CHANGED:Ljava/lang/String; = "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

.field static final ACTION_ULOG_POLICY_CHANGED:Ljava/lang/String; = "com.htc.intent.action.ULOG_POLICY_CHANGED"

.field static final CRASH_SEND:I = 0x0

.field private static final FLUSH_ACTION:Ljava/lang/String; = "com.htc.USERBEHAVIOR_FLUSH"

.field private static final FLUSH_INTERVAL:J = 0xa4cb80L

.field private static final LOGCAT_TAG:Ljava/lang/String; = "UserBehaviorLoggingService"

.field static final REGULAR_SEND:I = 0x1

.field private static final SEND_ACTION:Ljava/lang/String; = "com.android.updater.NOTIFY_SEND"

.field private static final UPLOAD_ACTION:Ljava/lang/String; = "com.htc.USERBEHAVIOR_UPLOAD"

.field private static sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;


# instance fields
.field private mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEnableHTCUBLog:Z

.field private mEventLog:Lcom/htc/server/ulog/EventLogStore;

.field private mFlushPendingIntent:Landroid/app/PendingIntent;

.field private mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

.field private mIsStopped:Z

.field private mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

.field private mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

.field private mStatLog:Lcom/htc/server/ulog/StatLogStore;

.field private final mStopLock:Ljava/lang/Object;

.field private mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

.field private mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEnableHTCUBLog:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStopLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    if-nez v0, :cond_0

    sput-object p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    :cond_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEnableHTCUBLog:Z

    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "HTC_UB is disabled in UserBehaviorLoggingService"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v8, Lcom/htc/server/ulog/DatabaseHelper;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lcom/htc/server/ulog/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/htc/server/ulog/PolicyStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/htc/server/ulog/PolicyStore;-><init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    :goto_0
    new-instance v0, Lcom/htc/server/ulog/HTCUBLogStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/htc/server/ulog/HTCUBLogStore;-><init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    new-instance v0, Lcom/htc/server/ulog/EventLogStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/htc/server/ulog/EventLogStore;-><init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    new-instance v0, Lcom/htc/server/ulog/StatLogStore;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/htc/server/ulog/StatLogStore;-><init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStatLog:Lcom/htc/server/ulog/StatLogStore;

    new-instance v10, Landroid/os/HandlerThread;

    const-string v0, "UserBehaviorLogging"

    const/16 v1, 0xa

    invoke-direct {v10, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    iget-object v4, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    iget-object v5, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStatLog:Lcom/htc/server/ulog/StatLogStore;

    iget-object v6, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;-><init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Landroid/os/Looper;Lcom/htc/server/ulog/HTCUBLogStore;Lcom/htc/server/ulog/EventLogStore;Lcom/htc/server/ulog/StatLogStore;Lcom/htc/server/ulog/PolicyStore;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.htc.USERBEHAVIOR_UPLOAD"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.USERBEHAVIOR_FLUSH"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.updater.NOTIFY_SEND"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/htc/server/ulog/UploadScheduler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/server/ulog/UploadScheduler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;

    new-instance v0, Lcom/htc/server/ulog/SettingObserver;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/server/ulog/SettingObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/htc/server/ulog/PolicyStore;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    const-string v0, ""

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.USERBEHAVIOR_FLUSH"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mFlushPendingIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;-><init>(Lcom/htc/server/ulog/UserBehaviorLoggingService;Lcom/htc/server/ulog/UserBehaviorLoggingService$1;)V

    iput-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "UserBehaviorLoggingService.Constructor end"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "policy is disabled in UserBehaviorLoggingService"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UploadScheduler;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mFlushPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/server/ulog/UserBehaviorLoggingService;)Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    return-object v0
.end method

.method private cancelFlushSchedule()V
    .locals 3

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mFlushPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mFlushPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/htc/server/ulog/UserBehaviorLoggingService;
    .locals 1

    sget-object v0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->sInstance:Lcom/htc/server/ulog/UserBehaviorLoggingService;

    return-object v0
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEnableHTCUBLog:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addLogEvent(Lcom/htc/utils/ulog/ParcelableULogData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_PROFILING:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->addRef()V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public addLogStat(Lcom/htc/utils/ulog/ParcelableULogStat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_PROFILING:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogStat;->addRef()V

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getPolicy()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v0}, Lcom/htc/server/ulog/PolicyStore;->getPolicy()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEnableHTCUBLog:Z

    return v0
.end method

.method public registerPolicyListener(Landroid/os/IRemoteCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/PolicyStore;->register(Landroid/os/IRemoteCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPolicy(Landroid/os/Bundle;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.permission.UBLS_WRITE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "com.htc.permission.UBLS_WRITE_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[setPolicy] function is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsStopped:Z

    if-eqz v1, :cond_1

    const-string v1, "UserBehaviorLoggingService"

    const-string v3, "stop() is called twice and ignored!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mIsStopped:Z

    const-string v1, "UserBehaviorLoggingService"

    const-string v3, "stop() is called at first time!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUBEventLog:Lcom/htc/server/ulog/HTCUBLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/HTCUBLogStore;->stop()V

    :cond_2
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mEventLog:Lcom/htc/server/ulog/EventLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/EventLogStore;->stop()V

    :cond_3
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStatLog:Lcom/htc/server/ulog/StatLogStore;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mStatLog:Lcom/htc/server/ulog/StatLogStore;

    invoke-virtual {v1}, Lcom/htc/server/ulog/StatLogStore;->stop()V

    :cond_4
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mBroadcastReceiver:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mUploadScheduler:Lcom/htc/server/ulog/UploadScheduler;

    invoke-virtual {v1}, Lcom/htc/server/ulog/UploadScheduler;->stop()V

    :cond_5
    invoke-direct {p0}, Lcom/htc/server/ulog/UserBehaviorLoggingService;->cancelFlushSchedule()V

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mSettingObserver:Lcom/htc/server/ulog/SettingObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    invoke-virtual {v1, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    invoke-virtual {v1, v5}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->removeMessages(I)V

    :cond_7
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    invoke-virtual {v1, v4}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    invoke-virtual {v1, v4}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->removeMessages(I)V

    :cond_8
    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    iget-object v2, p0, Lcom/htc/server/ulog/UserBehaviorLoggingService;->mHandler:Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/server/ulog/UserBehaviorLoggingService$UserBehaviorHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-enter p0

    const-wide/16 v1, 0x1388

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stop()] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
