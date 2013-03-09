.class public abstract Lcom/google/android/gm/provider/DelayedTaskHandler;
.super Landroid/os/Handler;
.source "DelayedTaskHandler.java"


# instance fields
.field private final mDelayMs:I

.field private mLastTaskExecuteTime:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 2
    .parameter "looper"
    .parameter "defaultDelayMs"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/provider/DelayedTaskHandler;->mLastTaskExecuteTime:J

    .line 25
    iput p2, p0, Lcom/google/android/gm/provider/DelayedTaskHandler;->mDelayMs:I

    .line 26
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gm/provider/DelayedTaskHandler;->onTaskExecution()V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gm/provider/DelayedTaskHandler;->performTask()V

    .line 49
    return-void
.end method

.method public onTaskExecution()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/DelayedTaskHandler;->mLastTaskExecuteTime:J

    .line 59
    return-void
.end method

.method protected abstract performTask()V
.end method

.method public scheduleTask()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 33
    .local v0, currentTime:J
    invoke-virtual {p0, v6}, Lcom/google/android/gm/provider/DelayedTaskHandler;->removeMessages(I)V

    .line 34
    iget-wide v2, p0, Lcom/google/android/gm/provider/DelayedTaskHandler;->mLastTaskExecuteTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gm/provider/DelayedTaskHandler;->mLastTaskExecuteTime:J

    iget v4, p0, Lcom/google/android/gm/provider/DelayedTaskHandler;->mDelayMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/android/gm/provider/DelayedTaskHandler;->sendEmptyMessage(I)Z

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_1
    iget v2, p0, Lcom/google/android/gm/provider/DelayedTaskHandler;->mDelayMs:I

    int-to-long v2, v2

    invoke-virtual {p0, v6, v2, v3}, Lcom/google/android/gm/provider/DelayedTaskHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
