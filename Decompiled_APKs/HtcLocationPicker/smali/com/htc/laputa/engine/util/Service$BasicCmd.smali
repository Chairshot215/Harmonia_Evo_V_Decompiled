.class public abstract Lcom/htc/laputa/engine/util/Service$BasicCmd;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BasicCmd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;
    }
.end annotation


# instance fields
.field private mAsyncTaskId:I

.field protected mListener:Lcom/htc/laputa/engine/util/CmdListener;

.field protected mParam:Landroid/os/Bundle;

.field protected mRetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mRetListener:Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;

.field private mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "cmdType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 510
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    .line 494
    iput-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mListener:Lcom/htc/laputa/engine/util/CmdListener;

    .line 495
    iput-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    .line 497
    new-instance v0, Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;-><init>(Lcom/htc/laputa/engine/util/Service$BasicCmd;Lcom/htc/laputa/engine/util/Service$1;)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetListener:Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;

    .line 498
    iput-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mAsyncTaskId:I

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-direct {v0, p1}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 513
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    if-nez v1, :cond_0

    .line 569
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel() failed due to mSvcAdpr is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :goto_0
    monitor-exit p0

    return-void

    .line 574
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    iget v2, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mAsyncTaskId:I

    invoke-virtual {v1, v2}, Lcom/htc/laputa/engine/util/Service$Adapter;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 565
    .end local v0           #e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized exec(Lcom/htc/laputa/engine/util/CmdListener;)I
    .locals 7
    .parameter "listener"

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exec()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mListener:Lcom/htc/laputa/engine/util/CmdListener;

    .line 524
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mAsyncTaskId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    const/4 v1, 0x0

    .line 529
    .local v1, ret:I
    :try_start_1
    iget-object v4, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    if-nez v4, :cond_0

    .line 531
    new-instance v4, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    iput-object v4, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 534
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    .line 537
    if-nez p1, :cond_2

    .line 540
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v3, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    iget-object v5, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->runS(Landroid/os/Bundle;Ljava/util/ArrayList;)I

    move-result v1

    .line 542
    if-ltz v1, :cond_1

    .line 543
    invoke-virtual {p0, v3}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->parseReturnBndlList(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    .end local v3           #retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 548
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    iget-object v5, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mParam:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetListener:Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;

    invoke-virtual {v4, v5, v6}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I

    move-result v2

    iput v2, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mAsyncTaskId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #ret:I
    .local v2, ret:I
    move v1, v2

    .end local v2           #ret:I
    .restart local v1       #ret:I
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exec() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    const/16 v1, -0x3e8

    goto :goto_0

    .line 521
    .end local v0           #e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    .end local v1           #ret:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected onRetReceive(IILandroid/os/Bundle;)V
    .locals 6
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    const/4 v5, 0x0

    .line 590
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRetReceive(%1$d, %2$d, bndl)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v1, "2"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    .line 595
    const-string v1, "1"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRetReceive() Fianl and notifyComplete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    monitor-enter p0

    .line 602
    const-wide/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v2, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mListener:Lcom/htc/laputa/engine/util/CmdListener;

    invoke-interface {v1, p1, p2}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    .line 608
    monitor-exit p0

    .line 610
    :cond_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRetReceive(), thread sleep interrupted."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 608
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected parseReturnBndlList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, retBndlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mRetList:Ljava/util/List;

    .line 615
    return-void
.end method

.method public declared-synchronized releaseResourse()V
    .locals 1

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-virtual {v0}, Lcom/htc/laputa/engine/util/Service$Adapter;->releaseResource()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd;->mSvcAdpr:Lcom/htc/laputa/engine/util/Service$Adapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
