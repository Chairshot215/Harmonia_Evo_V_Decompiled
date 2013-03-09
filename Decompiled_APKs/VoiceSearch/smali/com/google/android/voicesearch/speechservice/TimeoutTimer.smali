.class public Lcom/google/android/voicesearch/speechservice/TimeoutTimer;
.super Ljava/lang/Object;
.source "TimeoutTimer.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private mUntil:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->DEBUG:Z

    .line 27
    const-string v0, "TimeoutTimer"

    sput-object v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 46
    const-string v0, ""

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;-><init>(Ljava/lang/String;J)V

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;-><init>(Ljava/lang/String;J)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter "name"
    .parameter "delayMillis"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mName:Ljava/lang/String;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized extend(J)V
    .locals 6
    .parameter "delayMillis"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    .line 69
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#extend("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") expire in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remaining()J
    .locals 6

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#remaining "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(J)V
    .locals 6
    .parameter "delayMillis"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    .line 56
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") expire in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->mUntil:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
