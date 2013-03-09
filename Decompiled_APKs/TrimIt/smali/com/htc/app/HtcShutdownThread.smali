.class public final Lcom/htc/app/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x40

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final SHUTDOWN_CIQ:Ljava/lang/String; = "com.android.internal.policy.impl.SHUTDOWN_CIQ"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static mHibernate:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sInstance:Lcom/htc/app/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/htc/shutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 94
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 95
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 96
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 117
    sput v1, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    .line 451
    new-instance v0, Lcom/htc/app/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/htc/app/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/16 v14, 0x7d9

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 335
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 336
    :try_start_0
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_1

    .line 338
    const-string v7, "HtcShutdownThread"

    const-string v9, "User perform shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v7, "HtcShutdownThread"

    const-string v9, "Shutdown sequence already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    monitor-exit v8

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 343
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v6, home:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 350
    const/16 v7, 0xd8

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_2
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v12, v7, :cond_3

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_3
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v7, :cond_6

    .line 354
    :cond_4
    const-string v7, "ctl.stop"

    const-string v8, "zchgd_onmode"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v4, v7, v9

    .line 357
    .local v4, endRestartTime:J
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v1, v4, v7

    .line 358
    .local v1, delay:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gtz v7, :cond_9

    .line 360
    const-string v7, "HtcShutdownThread"

    const-string v8, "zchgd_onmode timed out"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    :cond_6
    :goto_1
    const-string v7, "HtcShutdownThread"

    const-string v8, "zchgd_onmode stopped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcom/htc/app/HtcShutdownThread;->isUseAnimation()Z

    move-result v0

    .line 377
    .local v0, bUseAnim:Z
    if-nez v0, :cond_a

    .line 380
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 381
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x104011e

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x104011f

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 384
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 385
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 387
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 388
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 389
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 408
    :goto_2
    new-instance v7, Lcom/htc/app/HtcShutdownThread;

    invoke-direct {v7}, Lcom/htc/app/HtcShutdownThread;-><init>()V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 409
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object p0, v7, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    .line 410
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    const-string v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 411
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7, v11}, Landroid/os/PowerManager;->setAblActive(I)V

    .line 413
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 415
    :try_start_1
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "HtcShutdownThread-cpu"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 417
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_7

    .line 418
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 419
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 428
    :cond_7
    :goto_3
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 429
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 431
    :try_start_2
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x1a

    const-string v10, "HtcShutdownThread-screen"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 433
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_8

    .line 434
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 435
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 443
    :cond_8
    :goto_4
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    new-instance v8, Lcom/htc/app/HtcShutdownThread$3;

    invoke-direct {v8}, Lcom/htc/app/HtcShutdownThread$3;-><init>()V

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    .line 445
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_0

    .line 446
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->start()V

    goto/16 :goto_0

    .line 343
    .end local v0           #bUseAnim:Z
    .end local v6           #home:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 364
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    .restart local v6       #home:Landroid/content/Intent;
    :cond_9
    const-string v7, "HtcShutdownThread"

    const-string v8, "zchgd_onmode"

    const-string v9, "stopped"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 371
    :goto_5
    const-string v7, "zchgd_onmode"

    const-string v8, "stopped"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_1

    .line 392
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    .restart local v0       #bUseAnim:Z
    :cond_a
    const-string v7, "HtcShutdownThread"

    const-string v8, "start animation"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v7, Lcom/htc/shutdown/HtcShutdownScreen;

    const v8, 0x1030005

    invoke-direct {v7, p0, v8}, Lcom/htc/shutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    .line 395
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v7, v8}, Lcom/htc/shutdown/HtcShutdownScreen;->setShutdownListener(Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;)V

    .line 396
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 397
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 399
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, -0x8000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 401
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7, v11}, Lcom/htc/shutdown/HtcShutdownScreen;->setCancelable(Z)V

    .line 402
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->show()V

    .line 404
    sput-boolean v11, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    .line 421
    :catch_0
    move-exception v3

    .line 423
    .local v3, e:Ljava/lang/SecurityException;
    const-string v7, "HtcShutdownThread"

    const-string v8, "No permission to acquire wake lock"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 437
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 439
    .restart local v3       #e:Ljava/lang/SecurityException;
    const-string v7, "HtcShutdownThread"

    const-string v8, "No permission to acquire wake lock"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 369
    .end local v0           #bUseAnim:Z
    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    :catch_2
    move-exception v7

    goto :goto_5
.end method

.method public static hibernate(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x1

    .line 318
    sput-boolean v4, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 319
    const-string v2, "sys.shutdown.mode"

    const-string v3, "hibernate"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    .local v1, nowait:I
    :goto_0
    if-ne v1, v4, :cond_0

    .line 329
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 332
    return-void

    .line 325
    .end local v1           #nowait:I
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #nowait:I
    goto :goto_0
.end method

.method private static isUseAnimation()Z
    .locals 12

    .prologue
    .line 1015
    new-instance v6, Lcom/htc/shutdown/ConfigReader;

    invoke-direct {v6}, Lcom/htc/shutdown/ConfigReader;-><init>()V

    .line 1016
    .local v6, mReader:Lcom/htc/shutdown/ConfigReader;
    new-instance v5, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v5}, Lcom/htc/shutdown/ConfigData;-><init>()V

    .line 1017
    .local v5, mData:Lcom/htc/shutdown/ConfigData;
    const/4 v8, 0x0

    .line 1018
    .local v8, useAnimation:Z
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1022
    .local v7, str_cid:Ljava/lang/String;
    const-string v3, "/data/data/cw/animation.xml"

    .line 1023
    .local v3, cw_config_path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v2, cwConfig:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1026
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cw_config_path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {v6, v3}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1029
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1031
    const-string v9, "HtcShutdownThread"

    const-string v10, "use cw animation"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v9, 0x1

    .line 1094
    :goto_0
    return v9

    .line 1036
    :cond_0
    if-eqz v7, :cond_6

    .line 1038
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customize/CID/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, config_path:Ljava/lang/String;
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "config_path:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1045
    .local v0, config:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1046
    invoke-virtual {v6, v1}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1048
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_3

    .line 1050
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "failed.  Use default.xml."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1053
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1055
    const-string v9, "HtcShutdownThread"

    const-string v10, "Parse default.xml failed.  Use default dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :goto_1
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 1088
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/customize/resource/shutdown.zip"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v4, defaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1090
    const/4 v8, 0x1

    .end local v4           #defaultFile:Ljava/io/File;
    :cond_1
    move v9, v8

    .line 1094
    goto/16 :goto_0

    .line 1057
    .restart local v0       #config:Ljava/io/File;
    .restart local v1       #config_path:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    .line 1060
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 1064
    :cond_4
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".  Use default.xml."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1067
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 1069
    const-string v9, "HtcShutdownThread"

    const-string v10, "Parse default.xml failed.  Use default dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1071
    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    .line 1076
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_6
    const-string v9, "HtcShutdownThread"

    const-string v10, "Can\'t find CID.  Use default.xml."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1079
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_7

    .line 1081
    const-string v9, "HtcShutdownThread"

    const-string v10, "Parse default.xml failed.  Use default dialog"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1083
    :cond_7
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 312
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    .line 313
    sput-object p1, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 314
    invoke-static {p0, p2}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 315
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 133
    sget-object v9, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 134
    :try_start_0
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_0

    .line 136
    const-string v8, "HtcShutdownThread"

    const-string v10, "Request to shutdown already running, returning."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v9

    .line 216
    :goto_0
    return-void

    .line 139
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    const-string v8, "HtcShutdownThread"

    const-string v9, "Notifying thread to start shutdown"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p1, :cond_2

    .line 155
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v8, :cond_1

    .line 156
    const v6, 0x20c00c6

    .line 157
    .local v6, idTitle:I
    const v3, 0x20c00c7

    .line 158
    .local v3, idMessage:I
    const v5, 0x20c00c8

    .line 159
    .local v5, idPositive:I
    const v4, 0x1040009

    .line 167
    .local v4, idNegative:I
    :goto_1
    new-instance v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$2;

    invoke-direct {v9, p0}, Lcom/htc/app/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$1;

    invoke-direct {v9}, Lcom/htc/app/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v8, v4, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 194
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    iput-object v1, v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 195
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 197
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 139
    .end local v0           #closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v3           #idMessage:I
    .end local v4           #idNegative:I
    .end local v5           #idPositive:I
    .end local v6           #idTitle:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 161
    :cond_1
    const v6, 0x104011e

    .line 162
    .restart local v6       #idTitle:I
    const v3, 0x1040120

    .line 163
    .restart local v3       #idMessage:I
    const v5, 0x1040013

    .line 164
    .restart local v5       #idPositive:I
    const v4, 0x1040009

    .restart local v4       #idNegative:I
    goto :goto_1

    .line 205
    .end local v3           #idMessage:I
    .end local v4           #idNegative:I
    .end local v5           #idPositive:I
    .end local v6           #idTitle:I
    :cond_2
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCIQFlag:Z

    if-eqz v8, :cond_3

    .line 207
    :try_start_2
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.policy.impl.SHUTDOWN_CIQ"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v2

    .line 211
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "HtcShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send system shutdown intext fail! Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 474
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8
    .parameter "dialog"

    .prologue
    .line 490
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 491
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/htc/app/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/htc/app/HtcShutdownThread$5;-><init>(Lcom/htc/app/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 503
    .local v2, endTime:J
    iget-object v5, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 504
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 506
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 508
    const-string v4, "HtcShutdownThread"

    const-string v6, "Dismiss shutdown screen timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v0           #delay:J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    return-void

    .line 512
    .restart local v0       #delay:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v4

    goto :goto_0

    .line 516
    .end local v0           #delay:J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 486
    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 481
    return-void
.end method

.method public run()V
    .locals 46

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 527
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 531
    const/16 v41, 0x0

    .line 532
    .local v41, wifiOff:Z
    const/16 v39, 0x0

    .line 533
    .local v39, wifiApOff:Z
    const/16 v44, 0x0

    .line 535
    .local v44, wimaxOff:Z
    const/16 v34, 0x0

    .line 536
    .local v34, radioWasOn:Z
    const/16 v42, 0x0

    .line 537
    .local v42, wifiWasOn:Z
    const/16 v40, 0x0

    .line 538
    .local v40, wifiApWasOn:Z
    const/16 v45, 0x0

    .line 540
    .local v45, wimaxWasOn:Z
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 542
    const/4 v2, 0x1

    const-string v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    .line 544
    new-instance v5, Lcom/htc/app/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/app/HtcShutdownThread$6;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 551
    .local v5, br:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v11

    .line 553
    .local v11, alarm:Landroid/app/IAlarmManager;
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_23

    .line 555
    :try_start_0
    invoke-interface {v11}, Landroid/app/IAlarmManager;->startHibernate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_17

    .line 559
    :goto_1
    const-string v2, "HtcShutdownThread"

    const-string v3, "Sending quickboot poweroff broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 572
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v24, v2, v6

    .line 574
    .local v24, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 575
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v24, v6

    .line 577
    .local v15, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_24

    .line 579
    const-string v2, "HtcShutdownThread"

    const-string v4, "Shutdown/quickboot poweroff broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v15           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v31

    .line 591
    .local v31, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v13

    .line 594
    .local v13, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v29

    .line 598
    .local v29, mount:Landroid/os/storage/IMountService;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v38

    .line 600
    .local v38, wifi:Landroid/net/wifi/IWifiManager;
    const-string v2, "wimax"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/wimax/IWimaxController;

    move-result-object v43

    .line 602
    .local v43, wimax:Lcom/htc/net/wimax/IWimaxController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 604
    .local v10, IsAirplaneMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .line 608
    .local v37, screenBrightnessMode:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v36

    .line 614
    .local v36, screenBrightness:I
    :goto_4
    if-nez v37, :cond_25

    .line 615
    const-string v2, "sys.shutdown.brightness"

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_5
    if-eqz v13, :cond_2

    :try_start_3
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_26

    :cond_2
    const/4 v14, 0x1

    .line 624
    .local v14, bluetoothOff:Z
    :goto_6
    if-nez v14, :cond_3

    .line 626
    const-string v2, "HtcShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 636
    :cond_3
    :goto_7
    if-eqz v31, :cond_4

    :try_start_4
    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_4
    const/16 v33, 0x1

    .line 637
    .local v33, radioOff:Z
    :goto_8
    if-eqz v31, :cond_6

    .line 638
    if-nez v10, :cond_5

    .line 639
    const/16 v34, 0x1

    .line 641
    :cond_5
    const-string v2, "HtcShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 651
    :cond_6
    :goto_9
    if-eqz v38, :cond_7

    :try_start_5
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    :cond_7
    const/16 v41, 0x1

    .line 653
    :goto_a
    if-nez v41, :cond_8

    .line 655
    const-string v2, "HtcShutdownThread"

    const-string v3, "Disabling Wifi..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 657
    const/16 v42, 0x1

    .line 666
    :cond_8
    :goto_b
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_2c

    .line 668
    if-eqz v38, :cond_9

    :try_start_6
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_29

    :cond_9
    const/16 v39, 0x1

    .line 670
    :goto_c
    if-nez v39, :cond_a

    .line 672
    const-string v2, "HtcShutdownThread"

    const-string v3, "Disabling Wifi ap..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 674
    const/16 v40, 0x1

    .line 683
    :cond_a
    :goto_d
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v2, :cond_2b

    .line 685
    if-eqz v43, :cond_b

    :try_start_7
    invoke-interface/range {v43 .. v43}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    :cond_b
    const/16 v44, 0x1

    .line 687
    :goto_e
    if-nez v44, :cond_c

    .line 689
    const-string v2, "HtcShutdownThread"

    const-string v3, "Disabling Wimax..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-interface {v0, v2, v3}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 691
    const/16 v45, 0x1

    .line 708
    :cond_c
    :goto_f
    new-instance v27, Landroid/content/Intent;

    const-string v2, "com.htc.fm.servicecommand"

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v27, fmPauseIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "stop"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    const-string v2, "HtcShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/16 v28, 0x0

    .local v28, i:I
    :goto_10
    const/16 v2, 0x40

    move/from16 v0, v28

    if-ge v0, v2, :cond_12

    .line 717
    if-nez v14, :cond_d

    .line 719
    :try_start_8
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2d

    const/4 v14, 0x1

    .line 727
    :cond_d
    :goto_11
    if-nez v33, :cond_e

    .line 729
    :try_start_9
    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v2

    if-nez v2, :cond_2e

    const/16 v33, 0x1

    .line 736
    :cond_e
    :goto_12
    if-nez v41, :cond_f

    .line 738
    :try_start_a
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    const/16 v41, 0x1

    .line 746
    :cond_f
    :goto_13
    if-nez v39, :cond_10

    .line 748
    :try_start_b
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_30

    const/16 v39, 0x1

    .line 756
    :cond_10
    :goto_14
    if-nez v44, :cond_11

    .line 758
    :try_start_c
    invoke-interface/range {v43 .. v43}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_b

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    const/16 v44, 0x1

    .line 765
    :cond_11
    :goto_15
    if-eqz v33, :cond_32

    if-eqz v14, :cond_32

    if-eqz v41, :cond_32

    if-eqz v39, :cond_32

    if-eqz v44, :cond_32

    .line 767
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_12
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz v33, :cond_13

    if-eqz v14, :cond_13

    if-eqz v41, :cond_13

    if-eqz v39, :cond_13

    if-nez v44, :cond_14

    .line 778
    :cond_13
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_14

    .line 779
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 781
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_14
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_16

    .line 787
    new-instance v30, Lcom/htc/app/HtcShutdownThread$7;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/HtcShutdownThread$7;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 796
    .local v30, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "HtcShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v22, v2, v6

    .line 800
    .local v22, endShutdownTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 802
    if-eqz v29, :cond_33

    .line 803
    :try_start_d
    invoke-interface/range {v29 .. v30}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 812
    :goto_16
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_15

    .line 813
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v22, v6

    .line 814
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_34

    .line 816
    const-string v2, "HtcShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .end local v15           #delay:J
    :cond_15
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 827
    .end local v22           #endShutdownTime:J
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_16
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v12

    .line 831
    .local v12, am:Landroid/app/IActivityManager;
    const-string v2, "HtcShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-eqz v12, :cond_17

    .line 835
    :try_start_f
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_35

    .line 836
    invoke-interface {v12}, Landroid/app/IActivityManager;->hibernate()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_e

    .line 845
    :cond_17
    :goto_17
    const-string v2, "HtcShutdownThread"

    const-string v3, "Waiting for shutdown animation complete..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v18, v2, v6

    .line 847
    .local v18, endAnimTime:J
    :goto_18
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    .line 848
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v15, v18, v2

    .line 849
    .restart local v15       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gtz v2, :cond_36

    .line 851
    const-string v2, "HtcShutdownThread"

    const-string v3, "Shutdown animation timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v15           #delay:J
    :cond_18
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v2, :cond_19

    .line 863
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :try_start_10
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 881
    :cond_19
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1a

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 883
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1b

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 885
    :cond_1b
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v32

    .line 887
    .local v32, pm:Landroid/os/IPowerManager;
    const-string v2, "HtcShutdownThread"

    const-string v3, "Cleaning up power manager state..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    .line 896
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissProgressDialog()V

    .line 898
    const-string v2, "sys.shutdown.resume.count"

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v2, "HtcShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissShutdownScreen()V

    .line 904
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 907
    const-string v2, "HtcShutdownThread"

    const-string v3, "Back from hibernation state..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v2, "shutdown"

    invoke-static {v2}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    .line 912
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v3, v4, v6}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    .line 919
    :goto_1b
    const-string v2, "dev.bootreason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rtc_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 921
    .local v35, rtc_alarm:Z
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioWasOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rtc_alarm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-eqz v34, :cond_1c

    if-nez v35, :cond_1c

    .line 924
    const/4 v2, 0x1

    :try_start_13
    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 926
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio restarted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    .line 934
    :cond_1c
    :goto_1c
    if-eqz v42, :cond_1d

    .line 936
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_14
    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z

    .line 938
    const-string v2, "HtcShutdownThread"

    const-string v3, "Wifi restarted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    .line 946
    :cond_1d
    :goto_1d
    if-eqz v40, :cond_1e

    .line 948
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_15
    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 950
    const-string v2, "HtcShutdownThread"

    const-string v3, "Wifi ap restarted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    .line 958
    :cond_1e
    :goto_1e
    if-eqz v45, :cond_1f

    .line 960
    const/4 v2, 0x1

    :try_start_16
    move-object/from16 v0, v43

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z

    .line 962
    const-string v2, "HtcShutdownThread"

    const-string v3, "wimax restarted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    .line 970
    :cond_1f
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v20, v2, v6

    .line 972
    .local v20, endRestartTime:J
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v15, v20, v2

    .line 973
    .restart local v15       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gtz v2, :cond_37

    .line 975
    const-string v2, "HtcShutdownThread"

    const-string v3, "Boot animation timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_20
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 990
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v2, "sys.shutdown.resume.date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v2, "sys.shutdown.resume.timestamp"

    new-instance v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    if-eqz v12, :cond_21

    .line 995
    invoke-interface {v12}, Landroid/app/IActivityManager;->resumeFromHibernate()V

    .line 998
    :cond_21
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_22

    .line 1000
    :try_start_17
    invoke-interface {v11}, Landroid/app/IAlarmManager;->stopHibernate()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_18

    .line 1005
    :cond_22
    :goto_21
    sget-object v3, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1006
    const/4 v2, 0x0

    :try_start_18
    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 1007
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 1008
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 1009
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1010
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    throw v2

    .line 566
    .end local v10           #IsAirplaneMode:I
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v15           #delay:J
    .end local v18           #endAnimTime:J
    .end local v20           #endRestartTime:J
    .end local v24           #endTime:J
    .end local v27           #fmPauseIntent:Landroid/content/Intent;
    .end local v28           #i:I
    .end local v29           #mount:Landroid/os/storage/IMountService;
    .end local v31           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v32           #pm:Landroid/os/IPowerManager;
    .end local v33           #radioOff:Z
    .end local v35           #rtc_alarm:Z
    .end local v36           #screenBrightness:I
    .end local v37           #screenBrightnessMode:I
    .end local v38           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v43           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :cond_23
    const-string v2, "HtcShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 583
    .restart local v15       #delay:J
    .restart local v24       #endTime:J
    :cond_24
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_0

    goto/16 :goto_3

    .line 584
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 587
    .end local v15           #delay:J
    :catchall_1
    move-exception v2

    :try_start_1a
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    throw v2

    .line 610
    .restart local v10       #IsAirplaneMode:I
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v29       #mount:Landroid/os/storage/IMountService;
    .restart local v31       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v37       #screenBrightnessMode:I
    .restart local v38       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v43       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_1
    move-exception v17

    .line 611
    .local v17, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v36, 0x0

    .restart local v36       #screenBrightness:I
    goto/16 :goto_4

    .line 618
    .end local v17           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_25
    const-string v2, "sys.shutdown.brightness"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 622
    :cond_26
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 629
    :catch_2
    move-exception v26

    .line 631
    .local v26, ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    const/4 v14, 0x1

    .restart local v14       #bluetoothOff:Z
    goto/16 :goto_7

    .line 636
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_27
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 644
    :catch_3
    move-exception v26

    .line 646
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    const/16 v33, 0x1

    .restart local v33       #radioOff:Z
    goto/16 :goto_9

    .line 651
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_28
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 660
    :catch_4
    move-exception v26

    .line 662
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    const/16 v41, 0x1

    goto/16 :goto_b

    .line 668
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_29
    const/16 v39, 0x0

    goto/16 :goto_c

    .line 677
    :catch_5
    move-exception v26

    .line 679
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi ap shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    const/16 v39, 0x1

    goto/16 :goto_d

    .line 685
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2a
    const/16 v44, 0x0

    goto/16 :goto_e

    .line 694
    :catch_6
    move-exception v26

    .line 696
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wimax shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    const/16 v44, 0x1

    .line 698
    goto/16 :goto_f

    .line 701
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2b
    const/16 v44, 0x1

    goto/16 :goto_f

    .line 704
    :cond_2c
    const/16 v39, 0x1

    .line 705
    const/16 v44, 0x1

    goto/16 :goto_f

    .line 719
    .restart local v27       #fmPauseIntent:Landroid/content/Intent;
    .restart local v28       #i:I
    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_11

    .line 721
    :catch_7
    move-exception v26

    .line 723
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    const/4 v14, 0x1

    goto/16 :goto_11

    .line 729
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2e
    const/16 v33, 0x0

    goto/16 :goto_12

    .line 730
    :catch_8
    move-exception v26

    .line 732
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    const/16 v33, 0x1

    goto/16 :goto_12

    .line 738
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2f
    const/16 v41, 0x0

    goto/16 :goto_13

    .line 739
    :catch_9
    move-exception v26

    .line 741
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    const/16 v41, 0x1

    goto/16 :goto_13

    .line 748
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_30
    const/16 v39, 0x0

    goto/16 :goto_14

    .line 749
    :catch_a
    move-exception v26

    .line 751
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi ap shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    const/16 v39, 0x1

    goto/16 :goto_14

    .line 758
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_31
    const/16 v44, 0x0

    goto/16 :goto_15

    .line 759
    :catch_b
    move-exception v26

    .line 761
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi ap shutdown"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    const/16 v44, 0x1

    goto/16 :goto_15

    .line 770
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_32
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 716
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_10

    .line 806
    .restart local v22       #endShutdownTime:J
    .restart local v30       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_33
    :try_start_1b
    const-string v2, "HtcShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_16

    .line 808
    :catch_c
    move-exception v17

    .line 810
    .local v17, e:Ljava/lang/Exception;
    :try_start_1c
    const-string v2, "HtcShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 824
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    throw v2

    .line 820
    .restart local v15       #delay:J
    :cond_34
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_d

    goto/16 :goto_16

    .line 821
    :catch_d
    move-exception v2

    goto/16 :goto_16

    .line 839
    .end local v15           #delay:J
    .end local v22           #endShutdownTime:J
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v12       #am:Landroid/app/IActivityManager;
    :cond_35
    const/16 v2, 0x2710

    :try_start_1e
    invoke-interface {v12, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_e

    goto/16 :goto_17

    .line 840
    :catch_e
    move-exception v2

    goto/16 :goto_17

    .line 855
    .restart local v15       #delay:J
    .restart local v18       #endAnimTime:J
    :cond_36
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_f

    goto/16 :goto_18

    .line 857
    :catch_f
    move-exception v2

    goto/16 :goto_18

    .line 866
    .end local v15           #delay:J
    :catch_10
    move-exception v17

    .line 868
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v2, "HtcShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 891
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v32       #pm:Landroid/os/IPowerManager;
    :catch_11
    move-exception v26

    .line 893
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during goToSleep"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 914
    .end local v26           #ex:Landroid/os/RemoteException;
    :catch_12
    move-exception v26

    .line 916
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during userActivityWithForce"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 928
    .end local v26           #ex:Landroid/os/RemoteException;
    .restart local v35       #rtc_alarm:Z
    :catch_13
    move-exception v26

    .line 930
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during radio restart"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 940
    .end local v26           #ex:Landroid/os/RemoteException;
    :catch_14
    move-exception v26

    .line 942
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi restart"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 952
    .end local v26           #ex:Landroid/os/RemoteException;
    :catch_15
    move-exception v26

    .line 954
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi restart"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 964
    .end local v26           #ex:Landroid/os/RemoteException;
    :catch_16
    move-exception v26

    .line 966
    .restart local v26       #ex:Landroid/os/RemoteException;
    const-string v2, "HtcShutdownThread"

    const-string v3, "RemoteException during wifi restart"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 979
    .end local v26           #ex:Landroid/os/RemoteException;
    .restart local v15       #delay:J
    .restart local v20       #endRestartTime:J
    :cond_37
    const-string v2, "HtcShutdownThread"

    const-string v3, "init.svc.bootanim"

    const-string v4, "stopped"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_19

    .line 985
    :goto_22
    const-string v2, "init.svc.bootanim"

    const-string v3, "stopped"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stopped"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_20

    .line 556
    .end local v10           #IsAirplaneMode:I
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v15           #delay:J
    .end local v18           #endAnimTime:J
    .end local v20           #endRestartTime:J
    .end local v24           #endTime:J
    .end local v27           #fmPauseIntent:Landroid/content/Intent;
    .end local v28           #i:I
    .end local v29           #mount:Landroid/os/storage/IMountService;
    .end local v31           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v32           #pm:Landroid/os/IPowerManager;
    .end local v33           #radioOff:Z
    .end local v35           #rtc_alarm:Z
    .end local v36           #screenBrightness:I
    .end local v37           #screenBrightnessMode:I
    .end local v38           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v43           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_17
    move-exception v2

    goto/16 :goto_1

    .line 1001
    .restart local v10       #IsAirplaneMode:I
    .restart local v12       #am:Landroid/app/IActivityManager;
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v14       #bluetoothOff:Z
    .restart local v15       #delay:J
    .restart local v18       #endAnimTime:J
    .restart local v20       #endRestartTime:J
    .restart local v24       #endTime:J
    .restart local v27       #fmPauseIntent:Landroid/content/Intent;
    .restart local v28       #i:I
    .restart local v29       #mount:Landroid/os/storage/IMountService;
    .restart local v31       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v32       #pm:Landroid/os/IPowerManager;
    .restart local v33       #radioOff:Z
    .restart local v35       #rtc_alarm:Z
    .restart local v36       #screenBrightness:I
    .restart local v37       #screenBrightnessMode:I
    .restart local v38       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v43       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_18
    move-exception v2

    goto/16 :goto_21

    .line 983
    :catch_19
    move-exception v2

    goto :goto_22
.end method
