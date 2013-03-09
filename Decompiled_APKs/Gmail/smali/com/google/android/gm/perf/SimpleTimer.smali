.class public Lcom/google/android/gm/perf/SimpleTimer;
.super Ljava/lang/Object;
.source "SimpleTimer.java"


# instance fields
.field private final mEnabled:Z

.field private mSessionName:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/perf/SimpleTimer;-><init>(Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/google/android/gm/perf/SimpleTimer;->mEnabled:Z

    .line 29
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .prologue
    .line 32
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/perf/SimpleTimer;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mark(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gm/perf/SimpleTimer;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/gm/perf/SimpleTimer;->mSessionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/google/android/gm/perf/SimpleTimer;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gm/perf/SimpleTimer;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "ms elapsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "Gmail"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .parameter "sessionName"

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/perf/SimpleTimer;->mStartTime:J

    .line 42
    iput-object p1, p0, Lcom/google/android/gm/perf/SimpleTimer;->mSessionName:Ljava/lang/String;

    .line 43
    return-void
.end method
