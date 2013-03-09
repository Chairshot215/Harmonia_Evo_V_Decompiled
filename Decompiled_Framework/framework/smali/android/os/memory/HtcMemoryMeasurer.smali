.class public Landroid/os/memory/HtcMemoryMeasurer;
.super Ljava/lang/Object;
.source "HtcMemoryMeasurer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;,
        Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mInternalListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

.field private mMeasurementListener:Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;

.field private mState:Landroid/os/memory/RunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/os/memory/HtcMemoryMeasurer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/memory/HtcMemoryMeasurer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/memory/HtcMemoryMeasurer$1;

    invoke-direct {v0, p0}, Landroid/os/memory/HtcMemoryMeasurer$1;-><init>(Landroid/os/memory/HtcMemoryMeasurer;)V

    iput-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mInternalListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    iput-object p1, p0, Landroid/os/memory/HtcMemoryMeasurer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/memory/RunningState;->getInstance(Landroid/content/Context;)Landroid/os/memory/RunningState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mState:Landroid/os/memory/RunningState;

    iget-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/os/memory/HtcMemoryMeasurer;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Landroid/os/memory/HtcMemoryMeasurer;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/memory/HtcMemoryMeasurer;->onRefreshUi(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/os/memory/HtcMemoryMeasurer;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/memory/HtcMemoryMeasurer;->measureInBackground()V

    return-void
.end method

.method private measureInBackground()V
    .locals 12

    const-wide/16 v10, 0x0

    iget-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;

    invoke-direct {v2}, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;-><init>()V

    iget-object v4, p0, Landroid/os/memory/HtcMemoryMeasurer;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;->totalMem:J

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;->freeMem:J

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;->cacheMem:J

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v4, v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;->totalMem:J

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;->usedMem:J

    iget-object v4, p0, Landroid/os/memory/HtcMemoryMeasurer;->mMeasurementListener:Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/os/memory/HtcMemoryMeasurer;->mMeasurementListener:Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;

    invoke-interface {v4, v2}, Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;->onApproximatelyMeasured(Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;)V

    new-instance v3, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;

    invoke-direct {v3, v2}, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;-><init>(Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;)V

    move-object v2, v3

    :cond_0
    iget-object v4, p0, Landroid/os/memory/HtcMemoryMeasurer;->mState:Landroid/os/memory/RunningState;

    iget-object v5, v4, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v4, v6, v10

    if-gez v4, :cond_1

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    :cond_1
    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-object v4, p0, Landroid/os/memory/HtcMemoryMeasurer;->mState:Landroid/os/memory/RunningState;

    iget-wide v8, v4, Landroid/os/memory/RunningState;->mBackgroundProcessMemory:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v6, v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;->totalMem:J

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;->usedMem:J

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Landroid/os/memory/HtcMemoryMeasurer;->mMeasurementListener:Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/os/memory/HtcMemoryMeasurer;->mMeasurementListener:Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;

    invoke-interface {v4, v2}, Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;->onExactlyMeasured(Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private onRefreshUi(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/memory/HtcMemoryMeasurer;->measure()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/memory/HtcMemoryMeasurer;->measure()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doPause()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mMeasurementListener:Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;

    iget-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mState:Landroid/os/memory/RunningState;

    invoke-virtual {v0}, Landroid/os/memory/RunningState;->pause()V

    return-void
.end method

.method public doResume(Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;)V
    .locals 2

    iput-object p1, p0, Landroid/os/memory/HtcMemoryMeasurer;->mMeasurementListener:Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;

    iget-object v0, p0, Landroid/os/memory/HtcMemoryMeasurer;->mState:Landroid/os/memory/RunningState;

    iget-object v1, p0, Landroid/os/memory/HtcMemoryMeasurer;->mInternalListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState;->resume(Landroid/os/memory/RunningState$OnRefreshUiListener;)V

    return-void
.end method

.method public measure()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/os/memory/HtcMemoryMeasurer$2;

    invoke-direct {v1, p0}, Landroid/os/memory/HtcMemoryMeasurer$2;-><init>(Landroid/os/memory/HtcMemoryMeasurer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
