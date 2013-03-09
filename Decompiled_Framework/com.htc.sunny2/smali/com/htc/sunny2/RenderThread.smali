.class public Lcom/htc/sunny2/RenderThread;
.super Lcom/htc/sunny2/IterationThread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/RenderThread$EventListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private actions:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private actionsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsToRestore:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

.field private eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

.field private events:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private eventsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field public forceRender:Z

.field public forceRenderOnce:Z

.field private frameIndex:I

.field private isRenderThreadExpired:Z

.field private isRenderThreadReady:Z

.field private iterationCount:I

.field private lastPresentTimeMillis:J

.field private lastTimeRequestRenderThreadRunning:J

.field private needRenderDueToAction:Z

.field private needRenderDueToEvent:Z

.field private needRenderDueToInterruption:Z

.field private pauseRenderFlag:Z

.field private preparations:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private preparationsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsToRestore:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private renderCount:I

.field private renderWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runInterruptionLocker:Ljava/lang/Integer;

.field private taskRequestRenderThreadRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/sunny2/RenderThread$EventListener;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/IterationThread;-><init>(Ljava/lang/String;)V

    const-string v0, "SunnyRT"

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    iput v1, p0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->runInterruptionLocker:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->forceRender:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    iput v1, p0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    iput v1, p0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    iput-object p2, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    return-void
.end method

.method private doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/htc/sunny2/RenderThreadTask;->onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadTask;->onRemovedIRT()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadTask;->onRemovedIRT()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear events"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadEvent;

    if-nez v1, :cond_9

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_b

    :cond_1
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_2

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear actions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;

    if-nez v0, :cond_c

    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_e

    :cond_4
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_5

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear preparations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_4
    :try_start_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;

    if-nez v2, :cond_f

    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_11

    :cond_7
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_8

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_9
    :try_start_3
    invoke-direct {p0, v1, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_a

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_b
    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_c
    :try_start_5
    invoke-direct {p0, v0, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_d

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    :cond_d
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_e
    :try_start_6
    invoke-direct {p0, v0, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    :cond_f
    :try_start_7
    invoke-direct {p0, v2, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_10

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    :cond_10
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_11
    :try_start_8
    invoke-direct {p0, v2, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5
.end method

.method private processActions(IJ)Z
    .locals 9

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    goto :goto_0

    :cond_3
    iget v3, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    if-nez v3, :cond_4

    iget-wide v5, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    iput p1, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    iput-wide p2, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;->onDoActionIRT(IJ)Z

    move-result v2

    iget-boolean v3, v1, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    :cond_5
    iget-boolean v3, v1, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_6

    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    :cond_6
    if-nez v2, :cond_7

    invoke-direct {p0, v1}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save action to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore action NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private processEvents()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    iget-boolean v2, v0, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    :cond_2
    iget-boolean v2, v0, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_0
.end method

.method private processPreparations(J)Z
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/RenderThreadPreparation;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/htc/sunny2/RenderThreadPreparation;->onProcessPreparationIRT(J)Z

    move-result v1

    iget-boolean v3, v2, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    :cond_4
    if-nez v1, :cond_5

    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save preparation to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore preparation NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushAction() NG - already in queue, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadAction;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    iput v3, p1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushAction() NG - null actions"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_4
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    goto :goto_0
.end method

.method private pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushEvent() NG - events null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    goto :goto_0
.end method

.method private pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushPreparation() NG - null preparations."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/htc/sunny2/RenderThread$1ActionComparator;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/RenderThread$1ActionComparator;-><init>(Lcom/htc/sunny2/RenderThread;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0
.end method

.method public isRenderThreadReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    return v0
.end method

.method public iterate()Z
    .locals 18

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    invoke-virtual {v14}, Lcom/htc/sunny2/RenderThreadInterruption;->onProcessInterruptionIRT()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    iget-boolean v14, v14, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    iget-boolean v14, v14, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    const-wide/16 v16, 0x5

    add-long v14, v14, v16

    cmp-long v14, v1, v14

    if-gez v14, :cond_3

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/RenderThread;->processEvents()Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v2}, Lcom/htc/sunny2/RenderThread;->processActions(IJ)Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRender:Z

    if-eqz v14, :cond_6

    :cond_4
    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v9, 0x0

    const/4 v3, 0x0

    :cond_5
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v14, v13}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderToWindowIRT(I)V

    invoke-static {v13}, Lcom/htc/sunny2/Sunny2;->Window_RenderWithoutPresent(I)V

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    const-wide/16 v7, 0x0

    if-eqz v9, :cond_8

    const-wide/16 v14, 0xd

    add-long v7, v1, v14

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/htc/sunny2/RenderThread;->processPreparations(J)Z

    const/4 v4, 0x0

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/htc/sunny2/Sunny2;->Window_Present(I)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const-wide/16 v14, 0x10

    add-long v7, v1, v14

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_a

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    :cond_b
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    :cond_c
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    :cond_d
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    rem-int/lit16 v14, v14, 0x12c

    if-nez v14, :cond_e

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    const-wide/16 v16, 0x2710

    add-long v14, v14, v16

    cmp-long v14, v1, v14

    if-lez v14, :cond_e

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v15, "RenderThread decides to pause."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v6

    :cond_f
    const-wide/16 v14, 0x10

    add-long/2addr v14, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v10, v14, v16

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_c

    const-wide/16 v14, 0x3c

    cmp-long v14, v10, v14

    if-lez v14, :cond_10

    const-wide/16 v10, 0x3c

    :cond_10
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v14

    goto :goto_4
.end method

.method public onThreadBegin()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/RenderThread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RenderThread begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_1
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT E"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT EP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT A"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT AP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT AR"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT P"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT PP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT PR"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v3}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStartIRT()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    iput-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    const/4 v2, 0x0

    :goto_2
    return v2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    goto :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public onThreadEnd()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "onThreadEnd() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v0}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStopIRT()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "onThreadEnd() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderThread end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseRender()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public pushActionIHT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushActionIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIRT(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEventIRT () "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadEvent;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushEventIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIHT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushPreparationIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerRenderWindowIRT(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindowIRT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - null window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindow() NG - has window = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - add window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_2
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    move v0, v1

    goto :goto_0
.end method

.method public removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAllTaskIRT()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "removeAllTaskIRT()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    return-void
.end method

.method public removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call removePreparationIRT in non-RenderThread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "removePreparationIRT() NG - null action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_3
    sget-object v2, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v2}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    sget-object v2, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-virtual {p1, v2}, Lcom/htc/sunny2/RenderThreadPreparation;->onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadPreparation;->onRemovedIRT()V

    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v0, v1

    goto :goto_0
.end method

.method public resumeRender()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - already has interruption."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run interruptionIHT in RenderThread - current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. +  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. -  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregisterRenderWindowIRT(I)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterRenderWindowIRT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - null window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - can not find the window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitForRenderThreadReady()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() +"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    if-nez v1, :cond_2

    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "waitForRenderThreadReady() - expired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
