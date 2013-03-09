.class Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;
.super Ljava/lang/Thread;
.source "EASRequestController.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/core/EASRequestController$SyncSourceRequestController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseRequestThread"
.end annotation


# instance fields
.field mConparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/android/mail/eassvc/core/EASRequest;",
            ">;"
        }
    .end annotation
.end field

.field mIsStop:Z

.field mName:Ljava/lang/String;

.field mQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/htc/android/mail/eassvc/core/EASRequest;",
            ">;"
        }
    .end annotation
.end field

.field mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

.field mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

.field mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field mSyncObject:Ljava/lang/Object;

.field final mSyncSourceType:I

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;I)V
    .locals 3
    .parameter
    .parameter "syncManager"
    .parameter "syncSrcType"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 779
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 752
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread$1;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mConparator:Ljava/util/Comparator;

    .line 769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mIsStop:Z

    .line 772
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mConparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 774
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    .line 780
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 781
    iput p3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncSourceType:I

    .line 782
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->setName(Ljava/lang/String;)V

    .line 784
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 9
    .parameter "request"

    .prologue
    .line 860
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EASRequestController"

    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".addRequest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 863
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EASRequestController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v3, :cond_3

    .line 872
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    iget-object v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-interface {v3, p1, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncStartBefore(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 874
    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v4

    .line 876
    :try_start_1
    iget-boolean v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mIsStop:Z

    if-eqz v3, :cond_5

    .line 877
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    :cond_4
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 879
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 880
    .local v2, req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #calls: Lcom/htc/android/mail/eassvc/core/EASRequestController;->requestEqual(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequest;)Z
    invoke-static {v3, v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1000(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequest;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 881
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "EASRequestController"

    iget-wide v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".addRequest: request already exist in queue, skip."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 882
    :cond_7
    monitor-exit v4

    goto :goto_0

    .line 886
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 885
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 886
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mIsStop:Z

    .line 947
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->removeAllRequest()V

    .line 952
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->interrupt()V

    .line 955
    return-void

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->start()V

    goto :goto_0
.end method

.method public getListener()Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    return-object v0
.end method

.method public getRunningExchangeSyncSources()Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .locals 2

    .prologue
    .line 941
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    return-object v0
.end method

.method hasRequestInQueue()Z
    .locals 2

    .prologue
    .line 845
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v1

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasRequestInQueue(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    .line 850
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v3

    .line 851
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 852
    .local v1, req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-wide v4, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 853
    const/4 v2, 0x1

    monitor-exit v3

    .line 856
    .end local v1           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 857
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 800
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBusy(J)Z
    .locals 4
    .parameter "accountId"

    .prologue
    .line 805
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 807
    const/4 v0, 0x1

    monitor-exit v1

    .line 810
    :goto_0
    return v0

    .line 809
    :cond_0
    monitor-exit v1

    .line 810
    const/4 v0, 0x0

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnlyRequest(I)Z
    .locals 9
    .parameter "priority"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 814
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v5

    .line 815
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 816
    .local v1, req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    const-string v4, "EASRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOnlyRequest():req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget v4, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    if-eq v4, p1, :cond_0

    .line 818
    const-string v3, "EASRequestController"

    const-string v4, "isOnlyRequest():return false"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    monitor-exit v5

    .line 833
    .end local v1           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :goto_0
    return v2

    .line 824
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    if-ne v4, p1, :cond_2

    .line 826
    const-string v2, "EASRequestController"

    const-string v4, "isOnlyRequest():return true"

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto :goto_0

    .line 828
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-eqz v4, :cond_4

    .line 829
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "EASRequestController"

    const-string v4, "isOnlyRequest():return false (RunningRequest not)"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5

    goto :goto_0

    .line 836
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 832
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_5
    const-string v7, "EASRequestController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOnlyRequest():return (mQueue.size()>0):"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v3

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v4

    if-lez v4, :cond_5

    move v2, v3

    :cond_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_6
    move v4, v2

    .line 832
    goto :goto_1

    .line 835
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public isRequestEmpty()Z
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->hasRequestInQueue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestEmpty(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->hasRequestInQueue(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->isBusy(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllRequest()V
    .locals 5

    .prologue
    .line 889
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EASRequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".removeAllRequest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v3

    .line 891
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 892
    .local v1, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v2, :cond_1

    .line 893
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 897
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 896
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 897
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    return-void
.end method

.method public removeRequestByAccountId(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 900
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EASRequestController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".removeRequestByAccountId()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, p2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 901
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v4

    .line 902
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .local v2, reqList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 904
    .local v1, req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-wide v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v3, v5, p1

    if-nez v3, :cond_1

    .line 905
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v3, :cond_2

    .line 906
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 908
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 912
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    .end local v2           #reqList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 911
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #reqList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAll(Ljava/util/Collection;)Z

    .line 912
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    return-void
.end method

.method public removeRequestByAccountId(JILjava/lang/Object;)V
    .locals 7
    .parameter "accountId"
    .parameter "cmd"
    .parameter "returnCode"

    .prologue
    .line 915
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EASRequestController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".removeRequestByAccountId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, p2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 916
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v4

    .line 917
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v2, reqList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 919
    .local v1, req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-wide v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v3, v5, p1

    if-nez v3, :cond_1

    iget v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    if-ne v3, p3, :cond_1

    .line 920
    iput-object p4, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 921
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v3, :cond_2

    .line 922
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 924
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 928
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    .end local v2           #reqList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 927
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #reqList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/core/EASRequest;>;"
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAll(Ljava/util/Collection;)Z

    .line 928
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    return-void
.end method

.method public setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 786
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    .line 787
    return-void
.end method

.method public setPause(Z)V
    .locals 3
    .parameter "isPause"

    .prologue
    .line 934
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncSourceType:I

    invoke-virtual {v0, v2, p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(IZ)V

    .line 938
    :cond_0
    monitor-exit v1

    .line 939
    return-void

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->removeAllRequest()V

    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mIsStop:Z

    .line 794
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->interrupt()V

    .line 797
    return-void
.end method
