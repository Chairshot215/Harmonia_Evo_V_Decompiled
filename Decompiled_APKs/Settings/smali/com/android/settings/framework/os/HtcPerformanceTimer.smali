.class public Lcom/android/settings/framework/os/HtcPerformanceTimer;
.super Ljava/lang/Object;
.source "HtcPerformanceTimer.java"


# instance fields
.field private mElapsedTime:J

.field private mEndTime:J

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimestamp()J
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getEndingLog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t elapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mElapsedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartingLog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mStartTime:J

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getStartingLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stop()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mEndTime:J

    .line 40
    iget-wide v0, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mEndTime:J

    iget-wide v2, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mElapsedTime:J

    .line 42
    iget-wide v0, p0, Lcom/android/settings/framework/os/HtcPerformanceTimer;->mElapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Have you invoked start()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getEndingLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
