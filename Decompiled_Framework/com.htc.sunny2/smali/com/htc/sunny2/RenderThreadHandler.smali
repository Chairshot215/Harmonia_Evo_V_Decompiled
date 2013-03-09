.class public Lcom/htc/sunny2/RenderThreadHandler;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "RenderThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    }
.end annotation


# instance fields
.field private log_tag:Ljava/lang/String;

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mInProcess:Z

.field private mIsReleased:Z

.field protected mQueued:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThread:Lcom/htc/sunny2/RenderThread;

.field private final mThreadLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RenderThreadHandler"

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->log_tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysNeedRenderAfterProcess(Z)V

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    invoke-virtual {p0, p3}, Lcom/htc/sunny2/RenderThreadHandler;->attachRenderThread(Lcom/htc/sunny2/RenderThread;)V

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->log_tag:Ljava/lang/String;

    return-void
.end method

.method private addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeMessage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public attachRenderThread(Lcom/htc/sunny2/RenderThread;)V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->log_tag:Ljava/lang/String;

    const-string v1, "Can\'t attach RenderThread into released handler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit v1

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t attach to another RenderThread"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iput-object p1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p1, :cond_4

    invoke-virtual {p1, p0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    monitor-exit v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/RenderThread;->pushActionIHT(Lcom/htc/sunny2/RenderThreadAction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 0

    return-void
.end method

.method public hasMessages(I)Z
    .locals 4

    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v5, v8, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    :goto_0
    return v7

    :cond_0
    iput-boolean v7, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_1

    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    :cond_1
    iget-object v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v3

    if-gtz v5, :cond_2

    iget-object v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-boolean v7, v5, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    :cond_2
    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_3

    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v3

    if-gtz v5, :cond_4

    :cond_3
    iget-object v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/RenderThreadHandler;->handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-boolean v7, v5, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v8, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    iput-object p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    return-void
.end method

.method public postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    iput-object p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    iput-object p2, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    iput-wide p3, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 3

    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    iput-object p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    return-void
.end method

.method public removeMessages(I)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    return-void
.end method

.method public sendEmptyMessage(ILjava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    iput-object p2, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    return-void
.end method

.method public sendEmptyMessageAtTime(IJ)V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    iput-wide p2, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 5

    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    return-void
.end method
