.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v5, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Main thread not allowed to quit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    monitor-exit p0

    :cond_2
    :goto_0
    return v4

    :cond_3
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_4

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/os/MessageQueue;->mQuiting:Z

    :cond_4
    iput-wide p2, p1, Landroid/os/Message;->when:J

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_5

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_5

    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_6

    :cond_5
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget v5, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v5}, Landroid/os/MessageQueue;->nativeWake(I)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_7

    :try_start_1
    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, v5, p2

    if-gtz v5, :cond_7

    move-object v3, v2

    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    :cond_7
    iget-object v5, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final next()Landroid/os/Message;
    .locals 15

    const/4 v7, -0x1

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_0
    iget v11, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v11, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_3

    iget-wide v9, v3, Landroid/os/Message;->when:J

    cmp-long v11, v5, v9

    if-ltz v11, :cond_1

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    iget-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v11, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v11, 0x0

    iput-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    monitor-exit p0

    return-object v3

    :cond_1
    sub-long v11, v9, v5

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v4, v11

    :goto_1
    if-gez v7, :cond_2

    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_2
    if-nez v7, :cond_4

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v11, :cond_5

    const/4 v11, 0x4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    :cond_5
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v12, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_7

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v11, v0

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v0

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    :goto_3
    if-nez v2, :cond_6

    monitor-enter p0

    :try_start_3
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v11, "MessageQueue"

    const-string v12, "IdleHandler threw exception"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    :cond_7
    const/4 v7, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    :cond_0
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    move-object v2, v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_3

    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    move-object v2, v0

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    move-object v2, v0

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    move-object v2, v0

    goto :goto_2

    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z
    .locals 6

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const/4 v0, 0x0

    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_3

    iget v5, v3, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_3

    :cond_0
    if-nez p4, :cond_1

    monitor-exit p0

    :goto_1
    return v4

    :cond_1
    const/4 v0, 0x1

    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    move-object v3, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_5

    iget-object v5, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_5

    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_5

    :cond_4
    if-nez p4, :cond_2

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    move-object v3, v1

    goto :goto_2

    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    goto :goto_1
.end method
