.class Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;
.super Ljava/lang/Thread;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandlerThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;
    }
.end annotation


# instance fields
.field mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

.field mIsStop:Z

.field mName:Ljava/lang/String;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mRunningRequest:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1433
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    .line 1434
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mIsStop:Z

    .line 1420
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    .line 1421
    new-instance v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;Lcom/htc/android/mail/eassvc/EASAppSvc$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    .line 1422
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->setName(Ljava/lang/String;)V

    .line 1437
    return-void
.end method


# virtual methods
.method public addRequest(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1461
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v3

    .line 1462
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1463
    .local v1, req:Landroid/os/Message;
    invoke-virtual {p0, v1, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->requestEqual(Landroid/os/Message;Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1464
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EASAppSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".addRequest: request already exist in queue, skip."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :cond_1
    monitor-exit v3

    .line 1470
    .end local v1           #req:Landroid/os/Message;
    :goto_0
    return-void

    .line 1468
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1469
    monitor-exit v3

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addRequestDelay(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1473
    return-void
.end method

.method public removeAllRequest()V
    .locals 3

    .prologue
    .line 1490
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".removeAllRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->removeMessages(I)V

    .line 1492
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->removeMessages(I)V

    .line 1493
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->removeMessages(I)V

    .line 1494
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 1495
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1496
    monitor-exit v1

    .line 1497
    return-void

    .line 1496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMessages(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 1476
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->removeRequest(I)V

    .line 1477
    return-void
.end method

.method public removeRequest(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 1479
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->removeMessages(I)V

    .line 1480
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v3

    .line 1481
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Message;

    invoke-interface {v2, v4}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Message;

    .line 1482
    .local v1, list:[Landroid/os/Message;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1483
    aget-object v2, v1, v0

    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_0

    .line 1484
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1482
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1487
    :cond_1
    monitor-exit v3

    .line 1488
    return-void

    .line 1487
    .end local v0           #i:I
    .end local v1           #list:[Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected requestEqual(Landroid/os/Message;Landroid/os/Message;)Z
    .locals 2
    .parameter "msg1"
    .parameter "msg2"

    .prologue
    .line 2056
    if-ne p1, p2, :cond_0

    .line 2057
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p2, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p2, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2058
    const/4 v0, 0x1

    .line 2061
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 54

    .prologue
    .line 1501
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mIsStop:Z

    if-nez v3, :cond_1

    .line 1503
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    .line 1504
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": msg:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    .line 1506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1507
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": service already destroy."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 2050
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    .line 2053
    :cond_1
    return-void

    .line 1511
    :cond_2
    const/16 v46, 0x0

    .line 1512
    .local v46, taskIntent:Landroid/content/Intent;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sparse-switch v3, :sswitch_data_0

    .line 2049
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 2050
    .end local v46           #taskIntent:Landroid/content/Intent;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    goto/16 :goto_0

    .line 1514
    .restart local v46       #taskIntent:Landroid/content/Intent;
    :sswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->initEASService()V
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1200(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2044
    .end local v46           #taskIntent:Landroid/content/Intent;
    :catch_0
    move-exception v19

    .line 2045
    .local v19, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":stop running"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2049
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    goto :goto_2

    .line 1517
    .end local v19           #e:Ljava/lang/InterruptedException;
    .restart local v46       #taskIntent:Landroid/content/Intent;
    :sswitch_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->uninitEASService()V
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1300(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2046
    .end local v46           #taskIntent:Landroid/content/Intent;
    :catch_1
    move-exception v19

    .line 2047
    .local v19, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    goto :goto_2

    .line 1520
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v46       #taskIntent:Landroid/content/Intent;
    :sswitch_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/content/Intent;

    .line 1521
    .local v38, serviceIntent:Landroid/content/Intent;
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 1522
    .local v12, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget v0, v3, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    .line 1524
    .local v40, startId:I
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1526
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "EASAppSvc"

    invoke-static {v3, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_6
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1528
    .local v4, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->updateScheduleAlarm()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 2049
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v12           #action:Ljava/lang/String;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v38           #serviceIntent:Landroid/content/Intent;
    .end local v40           #startId:I
    .end local v46           #taskIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->recycle()V

    .line 2050
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    .line 2049
    throw v3

    .line 1534
    .restart local v12       #action:Ljava/lang/String;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v38       #serviceIntent:Landroid/content/Intent;
    .restart local v40       #startId:I
    .restart local v46       #taskIntent:Landroid/content/Intent;
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->deleteAccountInfo(Landroid/content/Context;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.mail.boot_complete"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->sendBroadcast(Landroid/content/Intent;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1539
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_8
    const-string v3, "com.htc.eas.scheduled.sync.action"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.htc.eas.schedule.power_saving.action"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1541
    :cond_9
    const-string v3, "accountId"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1542
    .local v9, accountId:J
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1543
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v4, :cond_a

    .line 1544
    const-string v3, "EASAppSvc"

    const-string v6, "ACTION_SCHEDULED_* Error, cannot find account"

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1545
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASScheduleService;->releaseScheduleWakeLock()V

    .line 1546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1551
    :cond_a
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->needDoScheduleSync()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1552
    const-string v3, "EASAppSvc"

    const-string v6, "ACTION_SCHEDULED_* : the sync time too close, skip this one"

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;JLjava/lang/String;)V

    .line 1553
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASScheduleService;->releaseScheduleWakeLock()V

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1557
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "EASAppSvc"

    const-string v6, "Schedule sync"

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1558
    :cond_c
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setSchedulePowerLock()V

    .line 1560
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1561
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseSchedulePowerLock()V

    .line 1562
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASScheduleService;->releaseScheduleWakeLock()V

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1568
    :cond_d
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASScheduleService;->releaseScheduleWakeLock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1570
    :try_start_8
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->resetNextScheduleTimeFromNow()V

    .line 1572
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->doScheduledSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1400(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1574
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseSchedulePowerLock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 1605
    :catch_2
    move-exception v19

    .line 1606
    .local v19, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1607
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseSchedulePowerLock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 1575
    .end local v19           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_e
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_on"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_f

    .line 1577
    const-string v3, "EASAppSvc"

    const-string v6, "Schedule - Wait for Wifi network"

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1580
    new-instance v49, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFIACTIVE"

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v49, wifiActive:Landroid/content/Intent;
    const-string v3, "extra.com.htc.eas.wifi_active"

    const/4 v6, 0x1

    move-object/from16 v0, v49

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1582
    const/high16 v3, 0x4000

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->sendBroadcast(Landroid/content/Intent;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v6, 0x1

    #setter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mWasWakeupWifi:Z
    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$102(Lcom/htc/android/mail/eassvc/EASAppSvc;Z)Z

    .line 1586
    new-instance v48, Landroid/os/Message;

    invoke-direct/range {v48 .. v48}, Landroid/os/Message;-><init>()V

    .line 1587
    .local v48, waitWifiMsg:Landroid/os/Message;
    const/16 v3, 0x14

    move-object/from16 v0, v48

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1588
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v9, v10}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v48

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1589
    move/from16 v0, v40

    move-object/from16 v1, v48

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1500(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    move-result-object v3

    const-wide/16 v50, 0x3a98

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->addRequestDelay(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 1591
    .end local v48           #waitWifiMsg:Landroid/os/Message;
    .end local v49           #wifiActive:Landroid/content/Intent;
    :cond_f
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1592
    const-string v3, "EASAppSvc"

    const-string v6, "Schedule - Wait for 3G network"

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1593
    new-instance v47, Landroid/os/Message;

    invoke-direct/range {v47 .. v47}, Landroid/os/Message;-><init>()V

    .line 1594
    .local v47, wait3GMsg:Landroid/os/Message;
    const/16 v3, 0x15

    move-object/from16 v0, v47

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1595
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v9, v10}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v47

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1596
    move/from16 v0, v40

    move-object/from16 v1, v47

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1500(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    move-result-object v3

    const-wide/16 v50, 0x1388

    move-object/from16 v0, v47

    move-wide/from16 v1, v50

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->addRequestDelay(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 1599
    .end local v47           #wait3GMsg:Landroid/os/Message;
    :cond_10
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1600
    const-string v3, "EASAppSvc"

    const-string v6, "Schedule - Network unavailable. Try next time."

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1601
    :cond_11
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->bScheduleInDisconnect:Z

    .line 1602
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseSchedulePowerLock()V

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 1612
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v9           #accountId:J
    :cond_12
    :try_start_b
    const-string v3, "com.htc.eas.peaktime.check.action"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v3

    if-eqz v3, :cond_14

    .line 1615
    :try_start_c
    const-string v3, "accountId"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1616
    .restart local v9       #accountId:J
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "EASAppSvc"

    const-string v6, "ACTION_PEAK_TIME_CHECK"

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1617
    :cond_13
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1618
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1625
    :try_start_d
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASScheduleService;->releaseScheduleWakeLock()V

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1625
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v9           #accountId:J
    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/htc/android/mail/eassvc/EASScheduleService;->releaseScheduleWakeLock()V

    throw v3

    .line 1629
    :cond_14
    const-string v3, "com.htc.android.eas.syncContacts"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1630
    const-string v3, "extra.eas.account_name"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1631
    .local v11, accountName:Ljava/lang/String;
    const-string v3, "com.htc.eas.extra.sync_manually"

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 1632
    .local v26, isManually:Z
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v6, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EASManager.INTENT_SYNC_CONTACTS "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v11, :cond_17

    move-object v3, v11

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :cond_15
    if-nez v11, :cond_19

    .line 1634
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1635
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v26, :cond_16

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v3, :cond_18

    .line 1636
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    const/4 v6, 0x0

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncContacts(JZ)V

    goto :goto_5

    .line 1632
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_17
    const-string v3, ""

    goto :goto_4

    .line 1638
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_18
    const-string v3, "EASAppSvc"

    const-string v6, "EASManager.INTENT_SYNC_CONTACTS: schedule is manually, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1642
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_19
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1643
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v4, :cond_1a

    .line 1644
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "EASAppSvc"

    const-string v6, "EASManager.INTENT_SYNC_CONTACTS: account already delete, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1645
    :cond_1a
    if-nez v26, :cond_1b

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v3, :cond_1c

    .line 1646
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    const/4 v6, 0x0

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncContacts(JZ)V

    goto/16 :goto_1

    .line 1648
    :cond_1c
    const-string v3, "EASAppSvc"

    const-string v6, "EASManager.INTENT_SYNC_CONTACTS: schedule is manually, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1652
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v26           #isManually:Z
    :cond_1d
    const-string v3, "com.htc.android.eas.syncCalendar"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1653
    const-string v3, "extra.eas.account_name"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1654
    .restart local v11       #accountName:Ljava/lang/String;
    const-string v3, "com.htc.eas.extra.calendar.event_id"

    const-wide/16 v50, 0x0

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1655
    .local v14, calendarEventId:J
    const-string v3, "com.htc.eas.extra.sync_manually"

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 1656
    .restart local v26       #isManually:Z
    const-string v3, "com.htc.eas.extra.sync_when_open"

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    .line 1657
    .local v28, isSyncWhenOpen:Z
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v6, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EASManager.INTENT_SYNC_CALENDAR "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v11, :cond_21

    move-object v3, v11

    :goto_6
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_1e
    if-nez v11, :cond_25

    .line 1659
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_1f
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1660
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v26, :cond_20

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v3, :cond_24

    .line 1661
    :cond_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    if-nez v28, :cond_22

    const/4 v3, 0x1

    :goto_8
    move-wide/from16 v0, v50

    invoke-virtual {v6, v0, v1, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isAllowToSyncWhenRoaming(JZ)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    const/4 v6, 0x0

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncCalendar(JZ)V

    goto :goto_7

    .line 1657
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_21
    const-string v3, ""

    goto :goto_6

    .line 1661
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_22
    const/4 v3, 0x0

    goto :goto_8

    .line 1664
    :cond_23
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "EASAppSvc"

    const-string v6, "Abort Sync Calendar due to Roaming Policy:1"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1667
    :cond_24
    const-string v3, "EASAppSvc"

    const-string v6, "EASManager.INTENT_SYNC_CALENDAR: schedule is manually, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1671
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_25
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1672
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v4, :cond_26

    .line 1673
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "EASAppSvc"

    const-string v6, "EASManager.INTENT_SYNC_CALENDAR: account already delete, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1675
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v3, v4, v14, v15}, Lcom/htc/android/mail/eassvc/EASAppSvc;->sendMeetingMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;J)V

    .line 1676
    if-nez v26, :cond_27

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v3, :cond_2a

    .line 1677
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    if-nez v28, :cond_28

    const/4 v3, 0x1

    :goto_9
    move-wide/from16 v0, v50

    invoke-virtual {v6, v0, v1, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isAllowToSyncWhenRoaming(JZ)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    const/4 v6, 0x0

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncCalendar(JZ)V

    goto/16 :goto_1

    .line 1677
    :cond_28
    const/4 v3, 0x0

    goto :goto_9

    .line 1680
    :cond_29
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "EASAppSvc"

    const-string v6, "Abort Sync Calendar due to Roaming Policy:2"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1683
    :cond_2a
    const-string v3, "EASAppSvc"

    const-string v6, "EASManager.INTENT_SYNC_CALENDAR: schedule is manually, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1689
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v14           #calendarEventId:J
    .end local v26           #isManually:Z
    .end local v28           #isSyncWhenOpen:Z
    :cond_2b
    const-string v3, "com.htc.task.ACTION_REQUEST_SYNC"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1690
    const-string v3, "com.htc.extra.task.account"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1691
    .restart local v11       #accountName:Ljava/lang/String;
    const-string v3, "com.htc.extra.task.sync_manually"

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 1692
    .restart local v26       #isManually:Z
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v6, "EASAppSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.htc.task.ACTION_REQUEST_SYNC"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v11, :cond_2e

    move-object v3, v11

    :goto_a
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    :cond_2c
    if-nez v11, :cond_30

    .line 1694
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1695
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v26, :cond_2d

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v3, :cond_2f

    .line 1696
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    const/4 v6, 0x0

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncTasks(JZ)V

    goto :goto_b

    .line 1692
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_2e
    const-string v3, ""

    goto :goto_a

    .line 1698
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_2f
    const-string v3, "EASAppSvc"

    const-string v6, "com.htc.task.ACTION_REQUEST_SYNC : schedule is manually, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1702
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_30
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1703
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v4, :cond_31

    .line 1704
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "EASAppSvc"

    const-string v6, "com.htc.task.ACTION_REQUEST_SYNC account already delete, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1706
    :cond_31
    if-nez v26, :cond_32

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->options:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    if-eqz v3, :cond_33

    .line 1707
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    const/4 v6, 0x0

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncTasks(JZ)V

    goto/16 :goto_1

    .line 1709
    :cond_33
    const-string v3, "EASAppSvc"

    const-string v6, "com.htc.task.ACTION_REQUEST_SYNC : schedule is manually, skip"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1714
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v26           #isManually:Z
    :cond_34
    const-string v3, "com.htc.android.eas.syncEMail"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1716
    const-string v3, "accountId"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1717
    .restart local v9       #accountId:J
    const-string v3, "mailboxId"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v33

    .line 1719
    .local v33, mailboxId:J
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1720
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v4, :cond_35

    .line 1721
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": startSync - cannot find exchange account "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1726
    :cond_35
    const-wide/16 v50, -0x1

    cmp-long v3, v50, v33

    if-eqz v3, :cond_38

    .line 1727
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-wide/from16 v0, v33

    invoke-static {v0, v1, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdbyMailboxId(JLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    .line 1728
    .local v18, collId:Ljava/lang/String;
    if-nez v18, :cond_36

    .line 1729
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":syncMailbox error, collId is null: mailboxId:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1732
    :cond_36
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "EASAppSvc"

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v50, ": startSyncEmail, mailboxId:"

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v33

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v50, ", collId:"

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1733
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v9, v10, v0, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncMailbox(JLjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1735
    .end local v18           #collId:Ljava/lang/String;
    :cond_38
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "EASAppSvc"

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v50, ": startSyncEMail"

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1736
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v3, v9, v10}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncMail(J)V

    goto/16 :goto_1

    .line 1739
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v9           #accountId:J
    .end local v33           #mailboxId:J
    :cond_3a
    const-string v3, "com.htc.android.mail.intent.startSync"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1741
    const-string v3, "accountName"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1742
    .restart local v11       #accountName:Ljava/lang/String;
    const-string v3, "accountId"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1743
    .restart local v9       #accountId:J
    const-wide/16 v50, 0x0

    cmp-long v3, v9, v50

    if-ltz v3, :cond_3b

    .line 1744
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1748
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_c
    const-string v3, "extra.isDirectpush"

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1749
    .local v7, isDirectpush:Z
    const-string v3, "syncColls"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 1750
    .local v42, syncCols:[Ljava/lang/String;
    if-nez v4, :cond_3d

    .line 1751
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": startSync - cannot find exchange account "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v50, 0x0

    cmp-long v8, v9, v50

    if-gez v8, :cond_3c

    .end local v11           #accountName:Ljava/lang/String;
    :goto_d
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1746
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v7           #isDirectpush:Z
    .end local v42           #syncCols:[Ljava/lang/String;
    .restart local v11       #accountName:Ljava/lang/String;
    :cond_3b
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    goto :goto_c

    .line 1751
    .restart local v7       #isDirectpush:Z
    .restart local v42       #syncCols:[Ljava/lang/String;
    :cond_3c
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_d

    .line 1755
    :cond_3d
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "EASAppSvc"

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v50, ": startSync"

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1757
    :cond_3e
    if-nez v42, :cond_3f

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v6, 0x0

    const/4 v8, 0x1

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->startSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V
    invoke-static {v3, v4, v6, v8}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1600(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ZZ)V

    goto/16 :goto_1

    .line 1762
    :cond_3f
    move-object/from16 v13, v42

    .local v13, arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v32, v0

    .local v32, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    move/from16 v23, v21

    .end local v21           #i$:I
    .local v23, i$:I
    :goto_e
    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    aget-object v5, v13, v23

    .line 1763
    .local v5, strColID:Ljava/lang/String;
    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v23           #i$:I
    :cond_40
    :goto_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 1764
    .local v43, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface/range {v43 .. v43}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_42

    .line 1765
    iget-object v3, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getSyncCollection()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_41
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 1766
    .local v16, col:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v6, 0x0

    const/4 v8, 0x0

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->queueMailSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V
    invoke-static/range {v3 .. v8}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1700(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;ZZLandroid/os/ConditionVariable;)V

    goto :goto_f

    .line 1774
    .end local v16           #col:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_42
    invoke-interface/range {v43 .. v43}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getColID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-interface/range {v43 .. v43}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v6

    const/4 v8, 0x1

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->queueDoSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZZ)V
    invoke-static {v3, v4, v6, v8, v7}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1800(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZZ)V

    goto :goto_f

    .line 1762
    .end local v43           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_43
    add-int/lit8 v21, v23, 0x1

    .restart local v21       #i$:I
    move/from16 v23, v21

    .end local v21           #i$:I
    .restart local v23       #i$:I
    goto :goto_e

    .line 1781
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v5           #strColID:Ljava/lang/String;
    .end local v7           #isDirectpush:Z
    .end local v9           #accountId:J
    .end local v11           #accountName:Ljava/lang/String;
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v23           #i$:I
    .end local v32           #len$:I
    .end local v42           #syncCols:[Ljava/lang/String;
    :cond_44
    const-string v3, "com.htc.android.mail.intent.cancelSync"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1782
    const/4 v4, 0x0

    .line 1783
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const-string v3, "accountName"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1784
    .restart local v11       #accountName:Ljava/lang/String;
    const-string v3, "accountId"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1785
    .restart local v9       #accountId:J
    const-wide/16 v50, 0x0

    cmp-long v3, v9, v50

    if-ltz v3, :cond_46

    .line 1786
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1790
    :cond_45
    :goto_10
    if-nez v4, :cond_47

    .line 1791
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1792
    .local v45, syncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_11

    .line 1787
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v45           #syncSrcs:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_46
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1788
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    goto :goto_10

    .line 1795
    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1797
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1799
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v9           #accountId:J
    .end local v11           #accountName:Ljava/lang/String;
    :cond_49
    const-string v3, "com.htc.android.mail.intent.folderUpdate"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1801
    const-string v3, "accountName"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1802
    .restart local v11       #accountName:Ljava/lang/String;
    const-string v3, "accountId"

    const-wide/16 v50, -0x1

    move-object/from16 v0, v38

    move-wide/from16 v1, v50

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1803
    .local v9, accountId:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    const-wide/16 v52, 0x0

    cmp-long v3, v50, v52

    if-ltz v3, :cond_4a

    .line 1804
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1809
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_12
    if-nez v4, :cond_4b

    .line 1810
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": startSync - cannot find exchange account="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accountId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1806
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_4a
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    goto :goto_12

    .line 1815
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v50, v0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-wide/from16 v0, v50

    invoke-virtual {v3, v0, v1, v6, v8}, Lcom/htc/android/mail/eassvc/EASAppSvc;->updateFolderHierarchy(JZZ)I

    goto/16 :goto_1

    .line 1817
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v9           #accountId:Ljava/lang/Long;
    .end local v11           #accountName:Ljava/lang/String;
    :cond_4c
    const-string v3, "com.htc.android.mail.intent.dp.restart"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1818
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1819
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startDirectpush()V

    goto :goto_13

    .line 1821
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1824
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_4e
    const-string v3, "com.htc.android.mail.eas.checkScheduler"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1826
    :cond_4f
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1827
    .local v44, syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    goto :goto_14

    .line 1829
    .end local v44           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1831
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_51
    const-string v3, "com.htc.eas.deleteaccount"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1832
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$1;-><init>(Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1854
    :cond_52
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1855
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_53

    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get airplane mode changed"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :cond_53
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1858
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1859
    .restart local v44       #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    goto :goto_15

    .line 1863
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v44           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_54
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getPhoneStatus()I

    move-result v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastPhoneStatus(Landroid/content/Context;I)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1865
    :cond_55
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1866
    const-string v3, "state"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1867
    .local v41, state:Ljava/lang/String;
    const-string v3, "reason"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1869
    .local v37, reason:Ljava/lang/String;
    const-string v3, "roamingOn"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "roamingOff"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1871
    :cond_56
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_ANY_DATA_CONNECTION_STATE_CHANGED :state = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", reason = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :cond_57
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 1875
    .local v20, handlerMsg:Landroid/os/Message;
    const/16 v3, 0x32

    move-object/from16 v0, v20

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1876
    move/from16 v0, v40

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1500(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1879
    .end local v20           #handlerMsg:Landroid/os/Message;
    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1882
    .end local v37           #reason:Ljava/lang/String;
    .end local v41           #state:Ljava/lang/String;
    :cond_59
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1883
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5a

    if-eqz v38, :cond_5a

    .line 1884
    const-string v3, "networkInfo"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/NetworkInfo;

    .line 1886
    .local v24, info:Landroid/net/NetworkInfo;
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectivityManager.CONNECTIVITY_ACTION :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    .end local v24           #info:Landroid/net/NetworkInfo;
    :cond_5a
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 1889
    .restart local v20       #handlerMsg:Landroid/os/Message;
    const/16 v3, 0x32

    move-object/from16 v0, v20

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1890
    move/from16 v0, v40

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mMainHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1500(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1892
    .end local v20           #handlerMsg:Landroid/os/Message;
    :cond_5b
    const-string v3, "android.net.wifi.SMART_WIFI_STATE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1893
    const-string v3, "newState"

    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v41

    .line 1894
    .local v41, state:I
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMART_WIFI_STATE_CHANGED_ACTION :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    :cond_5c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v3, 0x1

    move/from16 v0, v41

    if-ne v0, v3, :cond_5d

    const/4 v3, 0x1

    :goto_16
    #setter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsSmartWifi:Z
    invoke-static {v6, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1902(Lcom/htc/android/mail/eassvc/EASAppSvc;Z)Z

    .line 1896
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1897
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsSmartWifi:Z
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1900(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setSmartWifiCheck(Z)V

    goto :goto_17

    .line 1895
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_5d
    const/4 v3, 0x0

    goto :goto_16

    .line 1899
    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1900
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v41           #state:I
    :cond_5f
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1903
    :cond_60
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1904
    .restart local v44       #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    goto :goto_18

    .line 1906
    .end local v44           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1907
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_62
    const-string v3, "com.htc.cs.requestSchedule"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->sendScheduleChangeBroadcast()V
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$700(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1911
    :cond_63
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    const-string v3, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 1913
    :cond_64
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v36

    .line 1914
    .local v36, pkgUri:Landroid/net/Uri;
    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v35

    .line 1915
    .local v35, pkg:Ljava/lang/String;
    const-string v3, "com.htc.task"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1920
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_65

    const-string v3, "EASAppSvc"

    const-string v6, "Tasks AP installed or added"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    :cond_65
    new-instance v46, Landroid/content/Intent;

    .end local v46           #taskIntent:Landroid/content/Intent;
    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    .line 1922
    .restart local v46       #taskIntent:Landroid/content/Intent;
    const-string v3, "com.htc.task.dm.TaskSource.ACTION_CHECK_PLUGINS"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1923
    const-string v3, "com.htc.task"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1928
    :cond_66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1930
    .end local v35           #pkg:Ljava/lang/String;
    .end local v36           #pkgUri:Landroid/net/Uri;
    :cond_67
    const-string v3, "com.htc.task.permission.TaskSource.ACTION_GRANTED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1936
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v3, "EASAppSvc"

    const-string v6, "Tasks DB is ready"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :cond_68
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_69
    :goto_19
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1941
    .restart local v44       #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->getTaskColID()Ljava/lang/String;

    move-result-object v17

    .line 1942
    .local v17, colId:Ljava/lang/String;
    if-nez v17, :cond_6a

    .line 1946
    const-string v3, "EASAppSvc"

    const-string v6, "FOTA : there is no Tasks Collection ID"

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->initEasData(Z)V

    .line 1955
    :goto_1a
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_69

    .line 1956
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopDirectpush()V

    .line 1957
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startDirectpush()V

    goto :goto_19

    .line 1950
    :cond_6a
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->initEasData(Z)V

    .line 1951
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->setColID(Ljava/lang/String;)V

    goto :goto_1a

    .line 1961
    .end local v17           #colId:Ljava/lang/String;
    .end local v44           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1963
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_6c
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1969
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v36

    .line 1970
    .restart local v36       #pkgUri:Landroid/net/Uri;
    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v35

    .line 1971
    .restart local v35       #pkg:Ljava/lang/String;
    const-string v3, "com.htc.task"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1973
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAvailableAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_6d
    :goto_1b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1976
    .restart local v44       #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->initEasData(Z)V

    .line 1978
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6d

    .line 1979
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->stopDirectpush()V

    .line 1980
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->startDirectpush()V

    goto :goto_1b

    .line 1984
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v44           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_6e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1987
    .end local v35           #pkg:Ljava/lang/String;
    .end local v36           #pkgUri:Landroid/net/Uri;
    :cond_6f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1993
    .end local v12           #action:Ljava/lang/String;
    .end local v38           #serviceIntent:Landroid/content/Intent;
    .end local v40           #startId:I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1994
    .local v9, accountId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget v0, v3, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    .line 1995
    .local v39, serviceStartId:I
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v4

    .line 1996
    .restart local v4       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-nez v4, :cond_70

    .line 1997
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error! wait network "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget v8, v8, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " do not find account."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v9, v10, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2002
    :goto_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    goto/16 :goto_1

    .line 1999
    :cond_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->doScheduledSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1400(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 2000
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseSchedulePowerLock()V

    goto :goto_1c

    .line 2005
    .end local v4           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v9           #accountId:J
    .end local v39           #serviceStartId:I
    :sswitch_4
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getPhoneStatus()I

    move-result v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastPhoneStatus(Landroid/content/Context;I)V

    .line 2006
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v30

    .line 2007
    .local v30, isWifiNw:Z
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v27

    .line 2008
    .local v27, isMobileNw:Z
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isUSBNetwork(Landroid/content/Context;)Z

    move-result v29

    .line 2009
    .local v29, isUsbNet:Z
    if-nez v30, :cond_71

    if-nez v27, :cond_71

    if-eqz v29, :cond_76

    :cond_71
    const/16 v25, 0x1

    .line 2010
    .local v25, isConnected:Z
    :goto_1d
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_STATE_CHANGED: isWifi:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", isMobile:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", isUsbNet:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v3, :cond_73

    .line 2012
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWiMaxNetwork(Landroid/content/Context;)Z

    move-result v31

    .line 2013
    .local v31, isWimaxNw:Z
    const-string v3, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_STATE_CHANGED: isWimax: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    if-nez v25, :cond_72

    if-eqz v31, :cond_77

    :cond_72
    const/16 v25, 0x1

    .line 2017
    .end local v31           #isWimaxNw:Z
    :cond_73
    :goto_1e
    if-eqz v25, :cond_74

    .line 2018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->checkAutosyncWhenNetworkReady()V
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$2000(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    .line 2021
    :cond_74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_75

    .line 2022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mRunningRequest:Landroid/os/Message;

    iget v6, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService(I)V

    .line 2026
    :cond_75
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2027
    .restart local v44       #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    invoke-virtual/range {v44 .. v44}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->checkScheduler()V

    goto :goto_1f

    .line 2009
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v25           #isConnected:Z
    .end local v44           #syncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_76
    const/16 v25, 0x0

    goto/16 :goto_1d

    .line 2014
    .restart local v25       #isConnected:Z
    .restart local v31       #isWimaxNw:Z
    :cond_77
    const/16 v25, 0x0

    goto :goto_1e

    .line 2032
    .end local v25           #isConnected:Z
    .end local v27           #isMobileNw:Z
    .end local v29           #isUsbNet:Z
    .end local v30           #isWifiNw:Z
    .end local v31           #isWimaxNw:Z
    :sswitch_5
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$2100()Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 2033
    :try_start_e
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$2100()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_78

    .line 2034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->resume()V
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$2200(Lcom/htc/android/mail/eassvc/EASAppSvc;)V

    .line 2035
    :cond_78
    monitor-exit v6

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v3

    .line 2038
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->setPause(Z)V

    goto/16 :goto_1

    .line 2041
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->setPause(Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_1

    .line 1512
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_5
        0x1e -> :sswitch_2
        0x21 -> :sswitch_6
        0x22 -> :sswitch_7
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public sendEmptyMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1448
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1449
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1450
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->addRequest(Landroid/os/Message;)V

    .line 1451
    return-void
.end method

.method public sendEmptyMessageAtTime(IJ)V
    .locals 1
    .parameter "what"
    .parameter "uptimeMillis"

    .prologue
    .line 1453
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1454
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1455
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->sendEmptyMessageAtTime(Landroid/os/Message;J)V

    .line 1456
    return-void
.end method

.method public sendEmptyMessageAtTime(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "uptimeMillis"

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mDelayHandler:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$DelayHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1459
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1445
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->addRequest(Landroid/os/Message;)V

    .line 1446
    return-void
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->removeAllRequest()V

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->mIsStop:Z

    .line 1441
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->interrupt()V

    .line 1442
    return-void
.end method
