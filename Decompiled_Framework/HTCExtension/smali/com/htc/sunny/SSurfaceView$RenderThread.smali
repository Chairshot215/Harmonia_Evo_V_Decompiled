.class public Lcom/htc/sunny/SSurfaceView$RenderThread;
.super Ljava/lang/Thread;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RenderThread"
.end annotation


# instance fields
.field mFakeObj:Ljava/lang/Object;

.field private mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPause:Z

.field private mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    return-void
.end method


# virtual methods
.method public addOperator(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseWorker()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public render()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeWorker()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v5, v4, :cond_3

    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SSurfaceView] stop work thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->unBindSurfaceR()V

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->destroySunnyR()V

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_2
    const-string v4, "3DGlideMode"

    const-string v5, "[SSurfaceView] 3D Render thread exit."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    if-ne v5, v4, :cond_4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    :cond_5
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z
    invoke-static {v4}, Lcom/htc/sunny/SSurfaceView;->access$500(Lcom/htc/sunny/SSurfaceView;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    :cond_6
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    monitor-enter p0

    :try_start_2
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v5, v4, :cond_7

    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :cond_7
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    monitor-exit p0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_a
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;
    invoke-static {v4}, Lcom/htc/sunny/SSurfaceView;->access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V

    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->render3D()V

    goto/16 :goto_0
.end method

.method public stopWorker()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
