.class public Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
.super Ljava/lang/Object;
.source "WakeLockDiagnostics.java"


# instance fields
.field private mLastWakeLockAcquiredTs:J

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->mTag:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public timeElapsedSinceWakelockAcquired()J
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->mLastWakeLockAcquiredTs:J

    sub-long v0, v2, v4

    .line 40
    .local v0, diff:J
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 41
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 42
    const-string v2, "GTalkService/wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "held wakelock(tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-wide v0
.end method

.method public wakeLockAcquired()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->mLastWakeLockAcquiredTs:J

    .line 35
    return-void
.end method
