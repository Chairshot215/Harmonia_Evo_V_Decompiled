.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$1;,
        Ljava/util/Timer$FinalizerHelper;,
        Ljava/util/Timer$TimerImpl;
    }
.end annotation


# static fields
.field private static timerId:J


# instance fields
.field private final finalizer:Ljava/util/Timer$FinalizerHelper;

.field private final impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Timer$TimerImpl;

    invoke-direct {v0, p1, p2}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    new-instance v0, Ljava/util/Timer$FinalizerHelper;

    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-direct {v0, v1}, Ljava/util/Timer$FinalizerHelper;-><init>(Ljava/util/Timer$TimerImpl;)V

    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/util/Timer$FinalizerHelper;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Timer;->nextId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private static declared-synchronized nextId()J
    .locals 6

    const-class v1, Ljava/util/Timer;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Ljava/util/Timer;->timerId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Ljava/util/Timer;->timerId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleImpl(Ljava/util/TimerTask;JJZ)V
    .locals 6

    iget-object v3, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #getter for: Ljava/util/Timer$TimerImpl;->cancelled:Z
    invoke-static {v2}, Ljava/util/Timer$TimerImpl;->access$400(Ljava/util/Timer$TimerImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Timer was canceled"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, p2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal delay to start the TimerTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v4, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/util/TimerTask;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "TimerTask is scheduled already"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-boolean v2, p1, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "TimerTask is canceled"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput-wide v0, p1, Ljava/util/TimerTask;->when:J

    iput-wide p4, p1, Ljava/util/TimerTask;->period:J

    iput-boolean p6, p1, Ljava/util/TimerTask;->fixedRate:Z

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #calls: Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V
    invoke-static {v2, p1}, Ljava/util/Timer$TimerImpl;->access$500(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->cancel()V

    return-void
.end method

.method public purge()I
    .locals 2

    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->purge()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .locals 7

    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-ltz v0, :cond_0

    cmp-long v0, p4, v1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .locals 9

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v7, v0, v4

    cmp-long v0, v7, v2

    if-gez v0, :cond_1

    :goto_0
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    return-void

    :cond_1
    move-wide v2, v7

    goto :goto_0
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 9

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v7, v0, v4

    cmp-long v0, v7, v2

    if-gez v0, :cond_2

    :goto_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    return-void

    :cond_2
    move-wide v2, v7

    goto :goto_0
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .locals 7

    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-ltz v0, :cond_0

    cmp-long v0, p4, v1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v0, v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    return-void
.end method
