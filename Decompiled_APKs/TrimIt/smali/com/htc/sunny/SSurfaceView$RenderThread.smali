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
    .parameter
    .parameter "threadName"

    .prologue
    const/4 v1, 0x0

    .line 601
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    .line 602
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    .line 596
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 597
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 598
    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 599
    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    .line 603
    return-void
.end method


# virtual methods
.method public addOperator(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "operator"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v0, v1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 693
    monitor-enter p0

    .line 694
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 695
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

    .prologue
    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 669
    monitor-enter p0

    .line 670
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 671
    monitor-exit p0

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public render()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_1
    monitor-enter p0

    .line 707
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 708
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

    .prologue
    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 678
    monitor-exit p0

    .line 679
    return-void

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 607
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 610
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 611
    .local v2, runableOP:Ljava/lang/Runnable;
    const/4 v3, 0x0

    .line 612
    .local v3, runableStateOP:Ljava/lang/Runnable;
    const/4 v1, 0x0

    .line 614
    .local v1, render:Ljava/lang/Object;
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    if-ne v5, v4, :cond_3

    .line 615
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

    .line 617
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->unBindSurfaceR()V

    .line 618
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->destroySunnyR()V

    .line 658
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_1

    .line 659
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 661
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v4, :cond_2

    .line 662
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 664
    :cond_2
    const-string v4, "3DGlideMode"

    const-string v5, "[SSurfaceView] 3D Render thread exit."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void

    .line 622
    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mPause:Z

    if-ne v5, v4, :cond_4

    .line 623
    monitor-enter p0

    .line 625
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    :cond_4
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 633
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mOperatorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #runableOP:Ljava/lang/Runnable;
    check-cast v2, Ljava/lang/Runnable;

    .line 634
    .restart local v2       #runableOP:Ljava/lang/Runnable;
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 635
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    .line 637
    .end local v1           #render:Ljava/lang/Object;
    :cond_6
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    .line 638
    monitor-enter p0

    .line 640
    :try_start_2
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v5, v4, :cond_7

    .line 641
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 626
    .restart local v1       #render:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 629
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 643
    .end local v1           #render:Ljava/lang/Object;
    :cond_7
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 644
    :try_start_6
    monitor-exit p0

    goto/16 :goto_0

    .line 645
    :catch_1
    move-exception v0

    .line 646
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 648
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 651
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 652
    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 653
    :cond_a
    if-eqz v1, :cond_0

    .line 654
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;
    invoke-static {v4}, Lcom/htc/sunny/SSurfaceView;->access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V

    .line 655
    iget-object v4, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v4}, Lcom/htc/sunny/SSurfaceView;->render3D()V

    goto/16 :goto_0
.end method

.method public stopWorker()V
    .locals 2

    .prologue
    .line 682
    monitor-enter p0

    .line 683
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mStop:Z

    .line 684
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mRenderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$RenderThread;->mFakeObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 686
    monitor-exit p0

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
