.class public Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;
.super Ljava/lang/Object;
.source "TimeoutWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$1;,
        Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;
    }
.end annotation


# instance fields
.field private final mOnTimeoutRunnable:Ljava/lang/Runnable;

.field private mOnTimeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mTimeOutMillis:I

.field private volatile mTimeoutTimestamp:J


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1
    .parameter "timeoutMillis"
    .parameter "timeoutRunnable"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;-><init>(ILjava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "timeoutMillis"
    .parameter "executorService"
    .parameter "timeoutRunnable"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p3, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mOnTimeoutRunnable:Ljava/lang/Runnable;

    .line 48
    iput p1, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mTimeOutMillis:I

    .line 49
    iput-object p2, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mTimeoutTimestamp:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mOnTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->scheduleTask()V

    return-void
.end method

.method private scheduleTask()V
    .locals 8

    .prologue
    .line 80
    const-wide/16 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mTimeoutTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 83
    .local v0, sleepTime:J
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$WatchdogTask;-><init>(Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog$1;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mOnTimeoutTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public extend()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mTimeOutMillis:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mTimeoutTimestamp:J

    .line 58
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->extend()V

    .line 65
    invoke-direct {p0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->scheduleTask()V

    .line 66
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mOnTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mOnTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 77
    return-void
.end method
