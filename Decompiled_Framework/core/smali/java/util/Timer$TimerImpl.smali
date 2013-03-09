.class final Ljava/util/Timer$TimerImpl;
.super Ljava/lang/Thread;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$TimerImpl$TimerHeap;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private finished:Z

.field private tasks:Ljava/util/Timer$TimerImpl$TimerHeap;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/Timer$TimerImpl$TimerHeap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer$TimerImpl$TimerHeap;-><init>(Ljava/util/Timer$1;)V

    iput-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {p0, p1}, Ljava/util/Timer$TimerImpl;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/util/Timer$TimerImpl;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->start()V

    return-void
.end method

.method static synthetic access$302(Ljava/util/Timer$TimerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    return p1
.end method

.method static synthetic access$400(Ljava/util/Timer$TimerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$500(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    return-void
.end method

.method private insertTask(Ljava/util/TimerTask;)V
    .locals 1

    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->insert(Ljava/util/TimerTask;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->reset()V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public purge()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v1}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #setter for: Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I
    invoke-static {v1, v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$202(Ljava/util/Timer$TimerImpl$TimerHeap;I)I

    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->deleteIfCancelled()V

    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #getter for: Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I
    invoke-static {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$200(Ljava/util/Timer$TimerImpl$TimerHeap;)I

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 15

    const-wide/16 v13, 0x0

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    if-eqz v7, :cond_1

    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v7}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    if-eqz v7, :cond_2

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v7}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    move-result-object v3

    iget-object v8, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v7, v3, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_5
    iget-wide v9, v3, Ljava/util/TimerTask;->when:J

    sub-long v5, v9, v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    cmp-long v7, v5, v13

    if-lez v7, :cond_5

    :try_start_6
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v7

    :cond_5
    iget-object v8, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v2, 0x0

    :try_start_a
    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v7}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    move-result-object v7

    iget-wide v9, v7, Ljava/util/TimerTask;->when:J

    iget-wide v11, v3, Ljava/util/TimerTask;->when:J

    cmp-long v7, v9, v11

    if-eqz v7, :cond_6

    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #calls: Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I
    invoke-static {v7, v3}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$100(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    move-result v2

    :cond_6
    iget-boolean v7, v3, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    iget-object v9, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #calls: Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I
    invoke-static {v9, v3}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$100(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    :cond_7
    :try_start_c
    iget-wide v9, v3, Ljava/util/TimerTask;->when:J

    invoke-virtual {v3, v9, v10}, Ljava/util/TimerTask;->setScheduledTime(J)V

    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v7, v2}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    iget-wide v9, v3, Ljava/util/TimerTask;->period:J

    cmp-long v7, v9, v13

    if-ltz v7, :cond_9

    iget-boolean v7, v3, Ljava/util/TimerTask;->fixedRate:Z

    if-eqz v7, :cond_8

    iget-wide v9, v3, Ljava/util/TimerTask;->when:J

    iget-wide v11, v3, Ljava/util/TimerTask;->period:J

    add-long/2addr v9, v11

    iput-wide v9, v3, Ljava/util/TimerTask;->when:J

    :goto_4
    invoke-direct {p0, v3}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    :goto_5
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {v3}, Ljava/util/TimerTask;->run()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/4 v4, 0x1

    if-nez v4, :cond_0

    monitor-enter p0

    const/4 v7, 0x1

    :try_start_f
    iput-boolean v7, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v7

    :cond_8
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v3, Ljava/util/TimerTask;->period:J

    add-long/2addr v9, v11

    iput-wide v9, v3, Ljava/util/TimerTask;->when:J

    goto :goto_4

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_9
    const-wide/16 v9, 0x0

    :try_start_12
    iput-wide v9, v3, Ljava/util/TimerTask;->when:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_5

    :catchall_4
    move-exception v7

    if-nez v4, :cond_a

    monitor-enter p0

    const/4 v8, 0x1

    :try_start_13
    iput-boolean v8, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :cond_a
    throw v7

    :catchall_5
    move-exception v7

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v7

    :catch_0
    move-exception v7

    goto/16 :goto_2

    :catch_1
    move-exception v7

    goto/16 :goto_3
.end method
