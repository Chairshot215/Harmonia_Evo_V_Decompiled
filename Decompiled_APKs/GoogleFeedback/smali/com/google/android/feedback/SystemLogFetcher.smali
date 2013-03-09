.class public Lcom/google/android/feedback/SystemLogFetcher;
.super Ljava/lang/Object;
.source "SystemLogFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;,
        Lcom/google/android/feedback/SystemLogFetcher$Listener;
    }
.end annotation


# static fields
.field private static final KILL_LOGCAT_RUNNABLE:Ljava/lang/Runnable;

.field private static mFetcherThread:Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;

.field private static mHandler:Landroid/os/Handler;

.field private static mListener:Lcom/google/android/feedback/SystemLogFetcher$Listener;

.field private static volatile mLogcatProcess:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/feedback/SystemLogFetcher$1;

    invoke-direct {v0}, Lcom/google/android/feedback/SystemLogFetcher$1;-><init>()V

    sput-object v0, Lcom/google/android/feedback/SystemLogFetcher;->KILL_LOGCAT_RUNNABLE:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/google/android/feedback/SystemLogFetcher;->killLogcat()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/android/feedback/SystemLogFetcher$Listener;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mListener:Lcom/google/android/feedback/SystemLogFetcher$Listener;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/google/android/feedback/SystemLogFetcher;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-object p0, Lcom/google/android/feedback/SystemLogFetcher;->mLogcatProcess:Ljava/lang/Process;

    return-object p0
.end method

.method public static declared-synchronized fetch()V
    .locals 5

    .prologue
    .line 72
    const-class v1, Lcom/google/android/feedback/SystemLogFetcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mFetcherThread:Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;-><init>(Lcom/google/android/feedback/SystemLogFetcher$1;)V

    sput-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mFetcherThread:Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;

    .line 74
    sget-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mFetcherThread:Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;

    invoke-virtual {v0}, Lcom/google/android/feedback/SystemLogFetcher$FetcherThread;->start()V

    .line 76
    sget-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/google/android/feedback/SystemLogFetcher;->KILL_LOGCAT_RUNNABLE:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit v1

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static killLogcat()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mLogcatProcess:Ljava/lang/Process;

    .line 82
    .local v0, proc:Ljava/lang/Process;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 85
    :cond_0
    return-void
.end method

.method private static reportResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "systemLog"
    .parameter "eventLog"

    .prologue
    .line 94
    sget-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/feedback/SystemLogFetcher;->KILL_LOGCAT_RUNNABLE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    sget-object v0, Lcom/google/android/feedback/SystemLogFetcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/feedback/SystemLogFetcher$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/feedback/SystemLogFetcher$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public static setListener(Lcom/google/android/feedback/SystemLogFetcher$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 62
    sput-object p0, Lcom/google/android/feedback/SystemLogFetcher;->mListener:Lcom/google/android/feedback/SystemLogFetcher$Listener;

    .line 63
    return-void
.end method
