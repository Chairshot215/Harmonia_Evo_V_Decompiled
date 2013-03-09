.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;
.super Ljava/lang/Object;
.source "ConnectionWarmUpManager.java"


# instance fields
.field private clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private pendingKey:Ljava/lang/Object;

.field private pendingSource:Ljava/lang/String;

.field private pendingWarmUpTime:J

.field private requestSource:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/common/Clock;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-void
.end method

.method private logUsed(Ljava/lang/String;III)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|fb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|lb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-direct {p0, v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "|"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public onFinishServiceRequests(Ljava/lang/Object;JII)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    if-eq v4, p1, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    const/4 v4, 0x0

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v4, p2, v2

    long-to-int v0, v4

    invoke-direct {p0, v1, v0, p4, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->logUsed(Ljava/lang/String;III)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onStartServiceRequests(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
