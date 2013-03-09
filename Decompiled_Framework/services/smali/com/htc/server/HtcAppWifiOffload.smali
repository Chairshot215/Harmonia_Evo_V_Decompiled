.class final Lcom/htc/server/HtcAppWifiOffload;
.super Ljava/lang/Object;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;,
        Lcom/htc/server/HtcAppWifiOffload$H;
    }
.end annotation


# static fields
.field private static final HTC_LAUNCHER_NAME:Ljava/lang/String; = "com.htc.launcher"

.field private static final HTC_SETUPWIZARD_NAME:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field private static final INTENT_INTERNETAPP_RESUMED:Ljava/lang/String; = "com.htc.wifioffload.intent.INTERNETAPP_RESUMED"

.field private static final INTENT_ROSIE_COMPLETED:Ljava/lang/String; = "com.htc.launcher.intent.LOADING_COMPLETE"

.field private static final INTERNET_PERMISSION:Ljava/lang/String; = "android.permission.INTERNET"

.field private static final TAG:Ljava/lang/String; = "HtcAppWifiOffload"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

.field private volatile mInitComplete:Z

.field private mInternetApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAirplaneMode:Z

.field private mIsFunctionEnable:Z

.field private mIsSetupWizard:Z

.field private mLauncherApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNonInternetApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMgr:Landroid/content/pm/PackageManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mTriggeredApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    iput-object p1, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/HtcAppWifiOffload;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload;->initInThread()V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/server/HtcAppWifiOffload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/server/HtcAppWifiOffload;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/server/HtcAppWifiOffload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/server/HtcAppWifiOffload;)Lcom/htc/server/HtcAppWifiOffload$H;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    return-object v0
.end method

.method private init()V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z

    new-instance v1, Lcom/htc/server/HtcAppWifiOffload$1;

    const-string v2, "HtcAppWifiOffload"

    invoke-direct {v1, p0, v2}, Lcom/htc/server/HtcAppWifiOffload$1;-><init>(Lcom/htc/server/HtcAppWifiOffload;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v0}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private initInThread()V
    .locals 4

    new-instance v1, Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-direct {v1, p0}, Lcom/htc/server/HtcAppWifiOffload$H;-><init>(Lcom/htc/server/HtcAppWifiOffload;)V

    iput-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcAppWifiOffload$BroadcastHandler;-><init>(Lcom/htc/server/HtcAppWifiOffload;Lcom/htc/server/HtcAppWifiOffload$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mInitComplete:Z

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public noteActivityResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x1f6

    const/4 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eq v6, v2, :cond_0

    const-string v2, "com.google.android.gsf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.album"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_0

    const-string v2, "com.htc.album.SocialNetwork.ActivityMainFriends"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    const-string v2, "com.htc.launcher"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v6, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsFunctionEnable:Z

    :cond_4
    if-ne v6, v0, :cond_6

    iget-object v3, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "HtcAppWifiOffload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clear triggeredApps due to <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> resumed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    :cond_6
    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z

    if-eq v6, v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    if-eq v6, v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v2, v7}, Lcom/htc/server/HtcAppWifiOffload$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v2, v7}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_7
    const-string v2, "com.htc.android.htcsetupwizard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/htc/server/HtcAppWifiOffload;->mIsSetupWizard:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public notePackageChanged()V
    .locals 3

    const/16 v2, 0x1f8

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAppWifiOffload$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v2}, Lcom/htc/server/HtcAppWifiOffload$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload;->mHandler:Lcom/htc/server/HtcAppWifiOffload$H;

    invoke-virtual {v1, v0}, Lcom/htc/server/HtcAppWifiOffload$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
