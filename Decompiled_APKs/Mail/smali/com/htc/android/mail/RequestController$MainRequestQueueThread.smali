.class Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
.super Ljava/lang/Thread;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainRequestQueueThread"
.end annotation


# static fields
.field private static final mWaitTime:J = 0x1388L


# instance fields
.field private mIsStop:Z

.field private mRequest:Lcom/htc/android/mail/Request;

.field private mRequestLock:Ljava/lang/Object;

.field private mRequestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/htc/android/mail/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Lcom/htc/android/mail/server/Server;

.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 305
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mIsStop:Z

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    .line 309
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/RequestController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;-><init>(Lcom/htc/android/mail/RequestController;)V

    return-void
.end method

.method private deleteMail(Lcom/htc/android/mail/Account;Landroid/os/Bundle;Lcom/htc/android/mail/server/Server;)V
    .locals 8
    .parameter "account"
    .parameter "parameter"
    .parameter "server"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 525
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "RequestController"

    const-string v7, "EXCHG_deleteMail"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-virtual {v6, p1}, Lcom/htc/android/mail/RequestController;->enableUICallback(Lcom/htc/android/mail/Account;)V

    .line 528
    const-string v6, "Mailbox"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 529
    .local v4, mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v6, "addToTracking"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 530
    .local v0, addToTracking:Ljava/lang/Boolean;
    const-string v6, "MailMessageList"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 533
    .local v3, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const/4 v2, 0x0

    .line 534
    .local v2, isNeedToSync:Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/MailMessage;

    .line 535
    .local v5, msg:Lcom/htc/android/mail/MailMessage;
    iget-object v6, v5, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/htc/android/mail/MailMessage;->uid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 536
    const/4 v2, 0x1

    .line 541
    .end local v5           #msg:Lcom/htc/android/mail/MailMessage;
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 542
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "RequestController"

    const-string v7, "(Delete mail) Refresh mailbox"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_3
    invoke-virtual {p3, v4}, Lcom/htc/android/mail/server/Server;->refresh(Lcom/htc/android/mail/Mailbox;)I

    .line 548
    .end local v0           #addToTracking:Ljava/lang/Boolean;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isNeedToSync:Z
    .end local v3           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    :cond_4
    :goto_0
    return-void

    .line 546
    :cond_5
    invoke-virtual {p3}, Lcom/htc/android/mail/server/Server;->syncPendingRequests()V

    goto :goto_0
.end method

.method private deleteOldDraft(Lcom/htc/android/mail/server/Server;)V
    .locals 0
    .parameter "server"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/htc/android/mail/server/Server;->syncPendingRequests()V

    .line 521
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/htc/android/mail/Request;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mIsStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->start()V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkRequestQueue(JI)Z
    .locals 8
    .parameter "accountId"
    .parameter "command"

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, hasCmd:Z
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v6, :cond_0

    .line 475
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/htc/android/mail/Request;

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/android/mail/Request;

    .line 476
    .local v5, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 477
    .local v4, r:Lcom/htc/android/mail/Request;
    iget v6, v4, Lcom/htc/android/mail/Request;->command:I

    if-ne v6, p3, :cond_1

    invoke-virtual {v4}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    .line 478
    const/4 v1, 0x1

    .line 484
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #r:Lcom/htc/android/mail/Request;
    .end local v5           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_0
    return v1

    .line 476
    .restart local v0       #arr$:[Lcom/htc/android/mail/Request;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #r:Lcom/htc/android/mail/Request;
    .restart local v5       #reqArr:[Lcom/htc/android/mail/Request;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getRequestsInQueue()[Lcom/htc/android/mail/Request;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/android/mail/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/Request;

    return-object v0
.end method

.method public getRunningRequest()Lcom/htc/android/mail/Request;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    return-object v0
.end method

.method public removeAllRequest()V
    .locals 8

    .prologue
    .line 323
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v5, :cond_1

    .line 324
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 325
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 326
    .local v3, r:Lcom/htc/android/mail/Request;
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v3           #r:Lcom/htc/android/mail/Request;
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 331
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 332
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_2

    .line 333
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 334
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 335
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_2

    .line 336
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 340
    :cond_2
    monitor-exit v6

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    .line 425
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v5, :cond_2

    .line 426
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 427
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 428
    .local v3, r:Lcom/htc/android/mail/Request;
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    cmp-long v5, p1, v9

    if-nez v5, :cond_1

    .line 429
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 427
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #r:Lcom/htc/android/mail/Request;
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 436
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v7

    cmp-long v5, v7, p1

    if-eqz v5, :cond_3

    cmp-long v5, p1, v9

    if-nez v5, :cond_4

    .line 438
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 439
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 440
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_4

    .line 441
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/htc/android/mail/server/Server;->stop(Z)V

    .line 445
    :cond_4
    monitor-exit v6

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(JI)V
    .locals 11
    .parameter "accountId"
    .parameter "command"

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    .line 399
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v5, :cond_2

    .line 400
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 401
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 402
    .local v3, r:Lcom/htc/android/mail/Request;
    iget v5, v3, Lcom/htc/android/mail/Request;->command:I

    if-ne v5, p3, :cond_1

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    cmp-long v5, p1, v9

    if-nez v5, :cond_1

    .line 404
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 401
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #r:Lcom/htc/android/mail/Request;
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 411
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v5, v5, Lcom/htc/android/mail/Request;->command:I

    if-ne v5, p3, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v7

    cmp-long v5, v7, p1

    if-eqz v5, :cond_3

    cmp-long v5, p1, v9

    if-nez v5, :cond_4

    .line 413
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 414
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 415
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_4

    .line 416
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 420
    :cond_4
    monitor-exit v6

    .line 422
    return-void

    .line 420
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(JJ)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 369
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v6, :cond_2

    .line 370
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/htc/android/mail/Request;

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/android/mail/Request;

    .line 371
    .local v5, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v5

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 372
    .local v4, r:Lcom/htc/android/mail/Request;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    if-nez v6, :cond_1

    .line 371
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v6, v4, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v7, "Mailbox"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    .line 374
    .local v3, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v3, :cond_0

    .line 376
    iget-wide v6, v3, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v6, p3

    if-nez v6, :cond_0

    .line 377
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v4}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    goto :goto_1

    .line 383
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v4           #r:Lcom/htc/android/mail/Request;
    .end local v5           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v7

    .line 384
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v6, v6, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    if-nez v6, :cond_4

    :cond_3
    monitor-exit v7

    .line 396
    :goto_2
    return-void

    .line 385
    :cond_4
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v6, v6, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v8, "Mailbox"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailbox;

    .line 386
    .restart local v3       #mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v3, :cond_5

    monitor-exit v7

    goto :goto_2

    .line 395
    .end local v3           #mailbox:Lcom/htc/android/mail/Mailbox;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 387
    .restart local v3       #mailbox:Lcom/htc/android/mail/Mailbox;
    :cond_5
    :try_start_1
    iget-wide v8, v3, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v6, v8, p3

    if-nez v6, :cond_6

    .line 388
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v6}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 389
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 390
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v6, :cond_6

    .line 391
    const-string v6, "RequestController"

    const-string v8, "stop server"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v6}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 395
    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public removeRequest(JLjava/lang/ref/WeakReference;)V
    .locals 11
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const-wide v9, 0x7fffffffffffffffL

    .line 344
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v5, :cond_2

    .line 345
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/htc/android/mail/Request;

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/android/mail/Request;

    .line 346
    .local v4, reqArr:[Lcom/htc/android/mail/Request;
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/android/mail/Request;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 347
    .local v3, r:Lcom/htc/android/mail/Request;
    iget-object v5, v3, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    cmp-long v5, p1, v9

    if-nez v5, :cond_1

    .line 349
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 346
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v0           #arr$:[Lcom/htc/android/mail/Request;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #r:Lcom/htc/android/mail/Request;
    .end local v4           #reqArr:[Lcom/htc/android/mail/Request;
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v6

    .line 356
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v5, v5, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->getAccountId()J

    move-result-wide v7

    cmp-long v5, v7, p1

    if-eqz v5, :cond_3

    cmp-long v5, p1, v9

    if-nez v5, :cond_4

    .line 358
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v5}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 359
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 360
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_4

    .line 361
    const-string v5, "RequestController"

    const-string v7, "stop server"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 365
    :cond_4
    monitor-exit v6

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeRequest(Lcom/htc/android/mail/Request;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeRequest(Lcom/htc/android/mail/Request;Z)V

    .line 450
    return-void
.end method

.method public removeRequest(Lcom/htc/android/mail/Request;Z)V
    .locals 3
    .parameter "r"
    .parameter "isImmediate"

    .prologue
    .line 453
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RequestController"

    const-string v1, "removeRequest"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {p1}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v0}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 463
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 464
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_2

    .line 465
    const-string v0, "RequestController"

    const-string v2, "stop server"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/server/Server;->stop(Z)V

    .line 469
    :cond_2
    monitor-exit v1

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 88

    .prologue
    .line 551
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v74

    .line 557
    .local v74, serverpool:Lcom/htc/android/mail/server/ServerPool;
    const/16 v65, -0x1

    .line 558
    .local v65, messageWhat:I
    const/16 v66, -0x1

    .line 560
    .local v66, messageWhatError:I
    const/16 v36, 0x0

    .line 561
    .local v36, b:Landroid/os/Bundle;
    const/16 v54, 0x0

    .line 562
    .local v54, isError:Z
    const/16 v43, 0x0

    .line 563
    .local v43, exception:Ljava/lang/Exception;
    const/16 v68, 0x0

    .line 564
    .local v68, r:Lcom/htc/android/mail/Request;
    const/4 v8, 0x2

    .line 565
    .local v8, ioRetryTime:I
    const/16 v73, 0x0

    .line 567
    .local v73, returnObject:Ljava/lang/Object;
    const/16 v29, 0x0

    .line 568
    .local v29, account:Lcom/htc/android/mail/Account;
    const/16 v70, 0x0

    .local v70, resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    move-object/from16 v71, v70

    .line 570
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v73           #returnObject:Ljava/lang/Object;
    .local v71, resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mIsStop:Z

    if-nez v3, :cond_9d

    .line 571
    const/16 v83, 0x0

    .line 572
    .local v83, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    const/16 v67, 0x0

    .line 573
    .local v67, parameter:Landroid/os/Bundle;
    new-instance v36, Landroid/os/Bundle;

    .end local v36           #b:Landroid/os/Bundle;
    invoke-direct/range {v36 .. v36}, Landroid/os/Bundle;-><init>()V

    .line 574
    .restart local v36       #b:Landroid/os/Bundle;
    const/16 v54, 0x0

    .line 575
    const/16 v43, 0x0

    .line 576
    const/16 v73, 0x0

    .line 577
    .restart local v73       #returnObject:Ljava/lang/Object;
    const/16 v53, 0x0

    .line 580
    .local v53, isBroadcast:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 581
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 582
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    .line 583
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    const/16 v29, 0x0

    .line 585
    const/16 v68, 0x0

    .line 586
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_16

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/android/mail/Request;

    move-object/from16 v68, v0

    .line 590
    :goto_1
    invoke-virtual/range {v68 .. v68}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    move-result-object v29

    .line 591
    if-nez v29, :cond_17

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_1

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_3

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_3

    .line 982
    :cond_2
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_3
    if-eqz v29, :cond_5

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_5

    .line 992
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_5
    if-eqz v83, :cond_a

    .line 997
    const/16 v84, -0x1

    .line 999
    .local v84, what:I
    if-eqz v54, :cond_b6

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_b7

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_2
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_6

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_8

    .line 1012
    :cond_6
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_8
    throw v83

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .local v49, handler:Landroid/os/Handler;
    if-nez v53, :cond_b8

    .line 1020
    if-eqz v49, :cond_a

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_9
    move-object/from16 v0, v49

    move/from16 v1, v84

    throw v0

    move-result-object v62

    .line 1023
    .local v62, message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    throw v1

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    throw v0

    .line 1025
    throw v62

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_a
    :goto_3
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setActiveModeRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1900(Lcom/htc/android/mail/RequestController;)V

    goto/16 :goto_0

    .line 583
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    .line 836
    :catch_0
    move-exception v41

    move-object/from16 v70, v71

    .line 837
    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v73           #returnObject:Ljava/lang/Object;
    .local v41, e:Ljava/lang/InterruptedException;
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :goto_4
    const/16 v54, 0x1

    .line 838
    move-object/from16 v43, v41

    .line 839
    :try_start_5
    const-string v3, "RequestController"

    const-string v10, "catch InterruptedException"

    move-object/from16 v0, v41

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_b

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_d

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_d

    .line 982
    :cond_c
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_d
    if-eqz v29, :cond_f

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_f

    .line 992
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_f
    if-eqz v83, :cond_14

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_a1

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_a2

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_5
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_10

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_12

    .line 1012
    :cond_10
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_12
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_a3

    .line 1020
    if-eqz v49, :cond_14

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_13
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_14
    :goto_6
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    .end local v41           #e:Ljava/lang/InterruptedException;
    :goto_7
    #calls: Lcom/htc/android/mail/RequestController;->setActiveModeRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1900(Lcom/htc/android/mail/RequestController;)V

    :cond_15
    move-object/from16 v71, v70

    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    goto/16 :goto_0

    .line 588
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_16
    const/16 v68, 0x0

    goto/16 :goto_1

    .line 592
    :cond_17
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 593
    :try_start_7
    move-object/from16 v0, v68

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/mail/server/ServerPool;->getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    .line 595
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 596
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_32

    .line 597
    const/4 v8, 0x5

    .line 601
    :goto_8
    new-instance v70, Ljava/util/HashMap;

    invoke-direct/range {v70 .. v70}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    .line 608
    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :goto_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$402(Lcom/htc/android/mail/RequestController;Z)Z

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    move-object/from16 v83, v0

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v0, v3, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    move/from16 v56, v0

    .line 611
    .local v56, isStopOnLeave:Z
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "RequestController"

    const-string v10, "take request"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiLock()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$600(Lcom/htc/android/mail/RequestController;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerLock()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$700(Lcom/htc/android/mail/RequestController;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    #calls: Lcom/htc/android/mail/RequestController;->setActiveMode(Lcom/htc/android/mail/Request;)V
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$800(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Request;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_1c

    if-eqz v56, :cond_19

    if-eqz v56, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 618
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v0, v3, Lcom/htc/android/mail/Request;->command:I

    move/from16 v39, v0

    .line 620
    .local v39, command:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    move-object/from16 v67, v0

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v0, v3, Lcom/htc/android/mail/Request;->messageWhat:I

    move/from16 v65, v0

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v0, v3, Lcom/htc/android/mail/Request;->messageWhatError:I

    move/from16 v66, v0

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v0, v3, Lcom/htc/android/mail/Request;->returnObject:Ljava/lang/Object;

    move-object/from16 v73, v0

    .line 625
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "RequestController"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "command= %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v22, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v12, v22

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_1a
    const/4 v3, 0x1

    move/from16 v0, v39

    if-ne v0, v3, :cond_48

    .line 628
    const/16 v53, 0x1

    .line 629
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_40

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/RequestController;->enableUICallback(Lcom/htc/android/mail/Account;)V

    .line 632
    if-eqz v67, :cond_1b

    const-string v3, "resetRetryCount"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v29, :cond_1b

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 634
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "_account = \'%d\' AND _mailboxId = \'%d\' AND _del = \'-1\' AND _done = 1 AND _retryCount <= 0"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v86

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v11, v12

    const/4 v12, 0x1

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v86, v0

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v11, v12

    invoke-static {v3, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    .line 637
    .local v85, where:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMessageTableName()Ljava/lang/String;

    move-result-object v79

    .line 638
    .local v79, table:Ljava/lang/String;
    new-instance v82, Landroid/content/ContentValues;

    invoke-direct/range {v82 .. v82}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .local v82, values:Landroid/content/ContentValues;
    const-string v3, "_retryCount"

    sget v10, Lcom/htc/android/mail/ComposeActivity;->RETRY_COUNT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v82

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://mail/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v79

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, v82

    move-object/from16 v1, v85

    invoke-virtual {v3, v10, v0, v1, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v40

    .line 641
    .local v40, count:I
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "RequestController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset retryCount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " records"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .end local v40           #count:I
    .end local v79           #table:Ljava/lang/String;
    .end local v82           #values:Landroid/content/ContentValues;
    .end local v85           #where:Ljava/lang/String;
    :cond_1b
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 645
    .local v4, mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mProgressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$ProgressHandler;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 646
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncStart(J)V

    .line 647
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v67

    invoke-virtual {v3, v4, v0}, Lcom/htc/android/mail/server/Server;->refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 971
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v39           #command:I
    .end local v73           #returnObject:Ljava/lang/Object;
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_1d

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_1f

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_1f

    .line 982
    :cond_1e
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_1f
    if-eqz v29, :cond_21

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_21

    .line 992
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_21
    if-eqz v83, :cond_26

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_b9

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_ba

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_b
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_22

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_24

    .line 1012
    :cond_22
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_24
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_bb

    .line 1020
    if-eqz v49, :cond_26

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_25
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_26
    :goto_c
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_7

    .line 595
    .end local v56           #isStopOnLeave:Z
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v73       #returnObject:Ljava/lang/Object;
    :catchall_1
    move-exception v3

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_b .. :try_end_b} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    .line 840
    :catch_1
    move-exception v41

    move-object/from16 v70, v71

    .line 841
    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v73           #returnObject:Ljava/lang/Object;
    .local v41, e:Ljava/security/cert/CertificateException;
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :goto_d
    :try_start_c
    const-string v3, "RequestController"

    const-string v10, "CertificateException"

    move-object/from16 v0, v41

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 843
    const/16 v54, 0x1

    .line 844
    move-object/from16 v43, v41

    .line 846
    if-eqz v83, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v10}, Lcom/htc/android/mail/server/Server;->getSslError()Lcom/htc/android/mail/ssl/MailSslError;

    move-result-object v10

    move-object/from16 v0, v83

    #calls: Lcom/htc/android/mail/RequestController;->handleSslError(Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/ssl/MailSslError;)V
    invoke-static {v3, v0, v10}, Lcom/htc/android/mail/RequestController;->access$1300(Lcom/htc/android/mail/RequestController;Ljava/lang/ref/WeakReference;Lcom/htc/android/mail/ssl/MailSslError;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 971
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_28

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_2a

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_2a

    .line 982
    :cond_29
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_2a
    if-eqz v29, :cond_2c

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_2c

    .line 992
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_2c
    if-eqz v83, :cond_31

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_a4

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_a5

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_e
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_2f

    .line 1012
    :cond_2d
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_2f
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_a6

    .line 1020
    if-eqz v49, :cond_31

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_30
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_31
    :goto_f
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_7

    .line 599
    .end local v41           #e:Ljava/security/cert/CertificateException;
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_32
    const/4 v8, 0x2

    goto/16 :goto_8

    .line 603
    :cond_33
    :try_start_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_d .. :try_end_d} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 604
    :try_start_e
    move-object/from16 v0, v68

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/mail/server/ServerPool;->getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    .line 606
    monitor-exit v10

    move-object/from16 v70, v71

    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    goto/16 :goto_9

    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :catchall_2
    move-exception v3

    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_f .. :try_end_f} :catch_10
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 850
    :catch_2
    move-exception v41

    move-object/from16 v70, v71

    .line 851
    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v73           #returnObject:Ljava/lang/Object;
    .local v41, e:Ljava/io/IOException;
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :goto_10
    :try_start_10
    const-string v3, "RequestController"

    const-string v10, "enter IOException"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const/16 v54, 0x1

    .line 853
    move-object/from16 v43, v41

    .line 855
    const-string v3, "RequestController"

    const-string v10, "catch IOException"

    move-object/from16 v0, v41

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_34

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->close()V

    .line 861
    :cond_34
    invoke-virtual/range {v41 .. v41}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "No space left on device"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 862
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 863
    .restart local v49       #handler:Landroid/os/Handler;
    if-eqz v49, :cond_35

    .line 864
    const/16 v3, 0xcb

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 971
    .end local v49           #handler:Landroid/os/Handler;
    :cond_35
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_36

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_38

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_38

    .line 982
    :cond_37
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_38
    if-eqz v29, :cond_3a

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_3a

    .line 992
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_3a
    if-eqz v83, :cond_3f

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_a7

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_a8

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_12
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_3d

    .line 1012
    :cond_3b
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_3d
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_a9

    .line 1020
    if-eqz v49, :cond_3f

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_3e
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_3f
    :goto_13
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_7

    .line 650
    .end local v41           #e:Ljava/io/IOException;
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_40
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$SmtpThread;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 651
    if-eqz v67, :cond_41

    const-string v3, "resetRetryCount"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz v29, :cond_41

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 653
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "_account = \'%d\' AND _mailboxId = \'%d\' AND _del = \'-1\' AND _done = 1 AND _retryCount <= 0"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v86

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v11, v12

    const/4 v12, 0x1

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v86, v0

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v11, v12

    invoke-static {v3, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    .line 656
    .restart local v85       #where:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMessageTableName()Ljava/lang/String;

    move-result-object v79

    .line 657
    .restart local v79       #table:Ljava/lang/String;
    new-instance v82, Landroid/content/ContentValues;

    invoke-direct/range {v82 .. v82}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .restart local v82       #values:Landroid/content/ContentValues;
    const-string v3, "_retryCount"

    sget v10, Lcom/htc/android/mail/ComposeActivity;->RETRY_COUNT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v82

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://mail/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v79

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, v82

    move-object/from16 v1, v85

    invoke-virtual {v3, v10, v0, v1, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v40

    .line 660
    .restart local v40       #count:I
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "RequestController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset retryCount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " records"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .end local v40           #count:I
    .end local v79           #table:Ljava/lang/String;
    .end local v82           #values:Landroid/content/ContentValues;
    .end local v85           #where:Ljava/lang/String;
    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mSmtpThread:Lcom/htc/android/mail/RequestController$SmtpThread;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1100(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$SmtpThread;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/RequestController$SmtpThread;->sendAllMail(Lcom/htc/android/mail/Account;)V

    .line 665
    :cond_42
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 666
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    iget-boolean v3, v4, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    if-eqz v3, :cond_47

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    sget-object v10, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V

    .line 668
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncStart(J)V

    .line 669
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mProgressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$ProgressHandler;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 671
    invoke-virtual {v4}, Lcom/htc/android/mail/Mailbox;->getMailboxIds()[J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    move-result-object v61

    .line 674
    .local v61, mailboxIds:[J
    move-object/from16 v33, v61

    .local v33, arr$:[J
    :try_start_12
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v57, v0

    .local v57, len$:I
    const/16 v50, 0x0

    .local v50, i$:I
    move/from16 v51, v50

    .end local v33           #arr$:[J
    .end local v50           #i$:I
    .end local v57           #len$:I
    .local v51, i$:I
    :goto_14
    move/from16 v0, v51

    move/from16 v1, v57

    if-ge v0, v1, :cond_46

    aget-wide v59, v33, v51

    .line 675
    .local v59, mailboxId:J
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    move-wide/from16 v0, v59

    invoke-virtual {v3, v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v32

    .line 676
    .local v32, actualMailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v3, :cond_45

    .line 678
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v32

    move-object/from16 v1, v67

    invoke-virtual {v3, v0, v1}, Lcom/htc/android/mail/server/Server;->refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I

    .line 679
    move-object/from16 v0, v32

    iget v3, v0, Lcom/htc/android/mail/Mailbox;->kind:I

    const v10, 0x7fffffff

    if-ne v3, v10, :cond_43

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->clearPushMailSyncError(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 683
    :cond_43
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->getSyncResult()[Lcom/htc/android/mail/server/Server$SyncResult;

    move-result-object v72

    .line 684
    .local v72, results:[Lcom/htc/android/mail/server/Server$SyncResult;
    move-object/from16 v34, v72

    .local v34, arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v58, v0

    .local v58, len$:I
    const/16 v50, 0x0

    .end local v51           #i$:I
    .restart local v50       #i$:I
    :goto_15
    move/from16 v0, v50

    move/from16 v1, v58

    if-ge v0, v1, :cond_45

    aget-object v69, v34, v50

    .line 685
    .local v69, result:Lcom/htc/android/mail/server/Server$SyncResult;
    move-object/from16 v0, v69

    iget-wide v0, v0, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    move-wide/from16 v30, v0

    .line 686
    .local v30, accountId:J
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Lcom/htc/android/mail/server/Server$SyncResult;

    .line 687
    .local v75, storeResult:Lcom/htc/android/mail/server/Server$SyncResult;
    if-nez v75, :cond_bd

    .line 688
    move-object/from16 v75, v69

    .line 689
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v70

    move-object/from16 v1, v69

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :goto_16
    add-int/lit8 v50, v50, 0x1

    goto :goto_15

    .line 683
    .end local v30           #accountId:J
    .end local v34           #arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    .end local v58           #len$:I
    .end local v69           #result:Lcom/htc/android/mail/server/Server$SyncResult;
    .end local v75           #storeResult:Lcom/htc/android/mail/server/Server$SyncResult;
    .local v33, arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    .restart local v57       #len$:I
    :cond_44
    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 698
    .end local v32           #actualMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v33           #arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    .end local v50           #i$:I
    .end local v57           #len$:I
    .end local v59           #mailboxId:J
    .end local v72           #results:[Lcom/htc/android/mail/server/Server$SyncResult;
    :catchall_3
    move-exception v3

    move-object v10, v3

    :try_start_15
    invoke-virtual/range {v70 .. v70}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    .line 699
    .local v37, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/android/mail/server/Server$SyncResult;>;"
    const-string v11, "ServerSyncResults"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/htc/android/mail/server/Server$SyncResult;

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    move-object/from16 v0, v36

    invoke-virtual {v0, v11, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 698
    throw v10

    .line 836
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v37           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v39           #command:I
    .end local v56           #isStopOnLeave:Z
    .end local v61           #mailboxIds:[J
    .end local v73           #returnObject:Ljava/lang/Object;
    :catch_3
    move-exception v41

    goto/16 :goto_4

    .line 674
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v32       #actualMailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v59       #mailboxId:J
    .restart local v61       #mailboxIds:[J
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_45
    add-int/lit8 v50, v51, 0x1

    .restart local v50       #i$:I
    move/from16 v51, v50

    .end local v50           #i$:I
    .restart local v51       #i$:I
    goto/16 :goto_14

    .line 698
    .end local v32           #actualMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v59           #mailboxId:J
    :cond_46
    invoke-virtual/range {v70 .. v70}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    .line 699
    .restart local v37       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/android/mail/server/Server$SyncResult;>;"
    const-string v10, "ServerSyncResults"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/htc/android/mail/server/Server$SyncResult;

    move-object/from16 v0, v37

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 702
    .end local v37           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v51           #i$:I
    .end local v61           #mailboxIds:[J
    :cond_47
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/htc/android/mail/MailProvider;->updateAccountLastUpdateTime(J)I

    goto/16 :goto_a

    .line 840
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v39           #command:I
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    :catch_4
    move-exception v41

    goto/16 :goto_d

    .line 704
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_48
    const/4 v3, 0x3

    move/from16 v0, v39

    if-ne v0, v3, :cond_4a

    .line 705
    const/16 v53, 0x1

    .line 706
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 707
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    iget-boolean v3, v4, Lcom/htc/android/mail/Mailbox;->isServerFolder:Z

    if-eqz v3, :cond_49

    .line 708
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncStart(J)V

    .line 709
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mProgressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$ProgressHandler;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/server/Server;->checkMore(Lcom/htc/android/mail/Mailbox;)V

    .line 713
    :cond_49
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/htc/android/mail/MailProvider;->updateAccountLastUpdateTime(J)I

    goto/16 :goto_a

    .line 850
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v39           #command:I
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    :catch_5
    move-exception v41

    goto/16 :goto_10

    .line 714
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_4a
    const/4 v3, 0x2

    move/from16 v0, v39

    if-ne v0, v3, :cond_63

    .line 715
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_56

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/RequestController;->enableUICallback(Lcom/htc/android/mail/Account;)V

    .line 718
    const-string v3, "EASMoveItems"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v42

    check-cast v42, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    .line 719
    .local v42, easMoveItem:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    if-eqz v42, :cond_1c

    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    check-cast v3, Lcom/htc/android/mail/server/ExchangeServer;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/server/ExchangeServer;->moveMail(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_a

    .line 904
    .end local v39           #command:I
    .end local v42           #easMoveItem:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    :catch_6
    move-exception v41

    .line 906
    .local v41, e:Lcom/htc/android/mail/exception/MailNotFoundException;
    :goto_17
    :try_start_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mIsStop:Z

    if-nez v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_4b

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x1

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 908
    if-eqz v83, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 909
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 910
    .restart local v49       #handler:Landroid/os/Handler;
    if-eqz v49, :cond_4b

    .line 911
    const/16 v3, 0xcc

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 971
    .end local v49           #handler:Landroid/os/Handler;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_4c

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_4e

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_4e

    .line 982
    :cond_4d
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_4e
    if-eqz v29, :cond_50

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_50

    .line 992
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_50
    if-eqz v83, :cond_55

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_aa

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_ab

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_18
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_51

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_53

    .line 1012
    :cond_51
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_52

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_53
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_ac

    .line 1020
    if-eqz v49, :cond_55

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_54

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_54
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_55
    :goto_19
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_7

    .line 724
    .end local v41           #e:Lcom/htc/android/mail/exception/MailNotFoundException;
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_56
    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->syncPendingRequests()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_a

    .line 916
    .end local v39           #command:I
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    :catch_7
    move-exception v41

    .line 917
    .local v41, e:Lcom/htc/android/mail/exception/MailException;
    :goto_1a
    const/16 v54, 0x1

    .line 918
    move-object/from16 v43, v41

    .line 919
    :try_start_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mIsStop:Z

    if-nez v3, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_58

    .line 920
    if-eqz v83, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 921
    move-object/from16 v0, v41

    instance-of v3, v0, Lcom/htc/android/mail/exception/AuthorizationException;

    if-nez v3, :cond_57

    move-object/from16 v0, v41

    instance-of v3, v0, Lcom/htc/android/mail/exception/YahooIDException;

    if-eqz v3, :cond_99

    .line 922
    :cond_57
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 923
    .restart local v49       #handler:Landroid/os/Handler;
    if-eqz v49, :cond_58

    .line 924
    const/16 v3, 0xcd

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 971
    .end local v49           #handler:Landroid/os/Handler;
    :cond_58
    :goto_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_59

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_5b

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_5a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_5b

    .line 982
    :cond_5a
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_5b
    if-eqz v29, :cond_5d

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_5c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_5d

    .line 992
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_5d
    if-eqz v83, :cond_62

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_ad

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_ae

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_1c
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_5e

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_60

    .line 1012
    :cond_5e
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_5f

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_60
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_af

    .line 1020
    if-eqz v49, :cond_62

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_61
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_62
    :goto_1d
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_7

    .line 726
    .end local v41           #e:Lcom/htc/android/mail/exception/MailException;
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_63
    const/4 v3, 0x4

    move/from16 v0, v39

    if-ne v0, v3, :cond_7a

    .line 727
    :try_start_19
    const-string v3, "IsOldDraft"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v55

    .line 728
    .local v55, isOldDraft:Z
    if-nez v55, :cond_6f

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v67

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->deleteMail(Lcom/htc/android/mail/Account;Landroid/os/Bundle;Lcom/htc/android/mail/server/Server;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_8
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    goto/16 :goto_a

    .line 950
    .end local v39           #command:I
    .end local v55           #isOldDraft:Z
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    :catch_8
    move-exception v41

    .line 951
    .local v41, e:Ljava/lang/OutOfMemoryError;
    :goto_1e
    const/16 v54, 0x1

    .line 954
    :try_start_1a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v38

    .line 955
    .local v38, comRun:Ljava/lang/Runtime;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Runtime;->gc()V

    .line 956
    if-eqz v83, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 957
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 958
    .restart local v49       #handler:Landroid/os/Handler;
    if-eqz v49, :cond_64

    .line 959
    const/16 v3, 0xcf

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 971
    .end local v49           #handler:Landroid/os/Handler;
    :cond_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_65

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_67

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_66

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_67

    .line 982
    :cond_66
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_67
    if-eqz v29, :cond_69

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_69

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_69

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_68

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_69

    .line 992
    :cond_68
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_69
    if-eqz v83, :cond_6e

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_b0

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_b1

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_1f
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_6a

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_6c

    .line 1012
    :cond_6a
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_6b

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_6c
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_b2

    .line 1020
    if-eqz v49, :cond_6e

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_6d
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_6e
    :goto_20
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_7

    .line 731
    .end local v38           #comRun:Ljava/lang/Runtime;
    .end local v41           #e:Ljava/lang/OutOfMemoryError;
    .restart local v39       #command:I
    .restart local v55       #isOldDraft:Z
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_6f
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->deleteOldDraft(Lcom/htc/android/mail/server/Server;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    goto/16 :goto_a

    .line 962
    .end local v39           #command:I
    .end local v55           #isOldDraft:Z
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    :catch_9
    move-exception v41

    .line 964
    .local v41, e:Ljava/lang/Exception;
    :goto_21
    const/16 v54, 0x1

    .line 965
    move-object/from16 v43, v41

    .line 967
    :try_start_1c
    new-instance v78, Ljava/io/StringWriter;

    invoke-direct/range {v78 .. v78}, Ljava/io/StringWriter;-><init>()V

    .line 968
    .local v78, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object/from16 v0, v78

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 969
    const-string v3, "RequestController"

    invoke-virtual/range {v78 .. v78}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v3, :cond_70

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v10, 0x0

    iput v10, v3, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1, v10}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_72

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v3}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_71

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_72

    .line 982
    :cond_71
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_72
    if-eqz v29, :cond_74

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_73

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_74

    .line 992
    :cond_73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_74
    if-eqz v83, :cond_79

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_b3

    .line 1000
    const-string v3, "Return"

    const/4 v10, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v3, -0x1

    move/from16 v0, v66

    if-ne v0, v3, :cond_b4

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_22
    const/16 v3, 0x8

    move/from16 v0, v65

    if-eq v0, v3, :cond_75

    const/4 v3, 0x7

    move/from16 v0, v65

    if-ne v0, v3, :cond_77

    .line 1012
    :cond_75
    const-string v3, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v3

    if-eqz v3, :cond_76

    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v3}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_77
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_b5

    .line 1020
    if-eqz v49, :cond_79

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "RequestController"

    const-string v10, "handler is not null in mainrequestthread"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_78
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_79
    :goto_23
    const/16 v83, 0x0

    .line 1039
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    goto/16 :goto_7

    .line 733
    .end local v41           #e:Ljava/lang/Exception;
    .end local v78           #sw:Ljava/io/StringWriter;
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_7a
    const/16 v3, 0xa

    move/from16 v0, v39

    if-ne v0, v3, :cond_87

    .line 734
    :try_start_1d
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_86

    .line 735
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 736
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    iget-wide v0, v4, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v86, v0

    move-wide/from16 v0, v86

    invoke-virtual {v3, v10, v11, v0, v1}, Lcom/htc/android/mail/server/Server;->emptyMailbox(JJ)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1d .. :try_end_1d} :catch_4
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    goto/16 :goto_a

    .line 971
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v39           #command:I
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    :catchall_4
    move-exception v3

    :goto_24
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v10, :cond_7b

    .line 972
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/server/Server;->setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/server/Server;->setWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    const/4 v11, 0x0

    iput v11, v10, Lcom/htc/android/mail/server/Server;->state:I

    .line 975
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v10, v1, v11}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 977
    :cond_7b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$400(Lcom/htc/android/mail/RequestController;)Z

    move-result v10

    if-nez v10, :cond_85

    .line 978
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v10, :cond_7d

    .line 979
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v10}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 980
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v10, v10, Lcom/htc/android/mail/Request;->command:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v10, v10, Lcom/htc/android/mail/Request;->command:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7d

    .line 982
    :cond_7c
    sget-object v10, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v10}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 983
    sget-object v10, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 987
    :cond_7d
    if-eqz v29, :cond_7f

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_7f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v10, :cond_7f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v10, v10, Lcom/htc/android/mail/Request;->command:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v10, v10, Lcom/htc/android/mail/Request;->command:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7f

    .line 992
    :cond_7e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 996
    :cond_7f
    if-eqz v83, :cond_84

    .line 997
    const/16 v84, -0x1

    .line 999
    .restart local v84       #what:I
    if-eqz v54, :cond_9e

    .line 1000
    const-string v10, "Return"

    const/4 v11, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    const/4 v10, -0x1

    move/from16 v0, v66

    if-ne v0, v10, :cond_9f

    .line 1002
    move/from16 v84, v65

    .line 1010
    :goto_25
    const/16 v10, 0x8

    move/from16 v0, v65

    if-eq v0, v10, :cond_80

    const/4 v10, 0x7

    move/from16 v0, v65

    if-ne v0, v10, :cond_82

    .line 1012
    :cond_80
    const-string v10, "MailNotFound"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v11

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1500(Lcom/htc/android/mail/RequestController;)I

    move-result v10

    if-eqz v10, :cond_81

    sget-object v10, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v10}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 1014
    :cond_81
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v11, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mMailNotFound:I
    invoke-static {v10, v11}, Lcom/htc/android/mail/RequestController;->access$1502(Lcom/htc/android/mail/RequestController;I)I

    .line 1018
    :cond_82
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 1019
    .restart local v49       #handler:Landroid/os/Handler;
    if-nez v53, :cond_a0

    .line 1020
    if-eqz v49, :cond_84

    .line 1021
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v10

    if-eqz v10, :cond_83

    const-string v10, "RequestController"

    const-string v11, "handler is not null in mainrequestthread"

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_83
    move-object/from16 v0, v49

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 1023
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-virtual/range {v62 .. v62}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    :cond_84
    :goto_26
    const/16 v83, 0x0

    .line 1039
    sget-object v10, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getApplicationContext()Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$500(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setActiveModeRelease()V
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1900(Lcom/htc/android/mail/RequestController;)V

    .line 971
    :cond_85
    throw v3

    .line 738
    .restart local v39       #command:I
    .restart local v56       #isStopOnLeave:Z
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_86
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->syncPendingRequests()V

    goto/16 :goto_a

    .line 740
    :cond_87
    const/16 v3, 0x9

    move/from16 v0, v39

    if-ne v0, v3, :cond_88

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->syncPendingRequests()V

    goto/16 :goto_a

    .line 742
    :cond_88
    const/4 v3, 0x7

    move/from16 v0, v39

    if-ne v0, v3, :cond_89

    .line 743
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 744
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "Uid"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, uid:Ljava/lang/String;
    const-string v3, "MsgId"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 746
    .local v6, msgId:J
    const-string v3, "suggestCharset"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 747
    .local v9, charset:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual/range {v3 .. v9}, Lcom/htc/android/mail/server/Server;->fetchMailAgain(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1e .. :try_end_1e} :catch_4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_1e .. :try_end_1e} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_1e .. :try_end_1e} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_a

    .line 748
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v5           #uid:Ljava/lang/String;
    .end local v6           #msgId:J
    .end local v9           #charset:Ljava/lang/String;
    :cond_89
    const/4 v3, 0x5

    move/from16 v0, v39

    if-ne v0, v3, :cond_8a

    .line 751
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    sget-object v10, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->syncPendingRequests()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1f .. :try_end_1f} :catch_4
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_1f .. :try_end_1f} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_1f} :catch_8

    goto/16 :goto_a

    .line 753
    :catch_a
    move-exception v41

    .line 754
    .restart local v41       #e:Ljava/lang/Exception;
    :try_start_20
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "RequestController"

    const-string v10, "catch exception"

    move-object/from16 v0, v41

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_20 .. :try_end_20} :catch_4
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_20 .. :try_end_20} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_20 .. :try_end_20} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_20} :catch_8
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_a

    .line 756
    .end local v41           #e:Ljava/lang/Exception;
    :cond_8a
    const/4 v3, 0x6

    move/from16 v0, v39

    if-ne v0, v3, :cond_8b

    .line 759
    :try_start_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    sget-object v10, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-virtual {v3, v10}, Lcom/htc/android/mail/server/Server;->setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->syncPendingRequests()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_21 .. :try_end_21} :catch_4
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_21 .. :try_end_21} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_21} :catch_8

    goto/16 :goto_a

    .line 761
    :catch_b
    move-exception v41

    .line 762
    .restart local v41       #e:Ljava/lang/Exception;
    :try_start_22
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "RequestController"

    const-string v10, "catch exception"

    move-object/from16 v0, v41

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_a

    .line 764
    .end local v41           #e:Ljava/lang/Exception;
    :cond_8b
    const/16 v3, 0xb

    move/from16 v0, v39

    if-ne v0, v3, :cond_8c

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->syncMailToServer()V

    goto/16 :goto_a

    .line 768
    :cond_8c
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_8d

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    if-nez v3, :cond_8f

    .line 770
    :cond_8d
    const/16 v3, 0xca

    move/from16 v0, v39

    if-ne v0, v3, :cond_8e

    .line 771
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 773
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "UIDL"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 774
    .local v81, uidl:Ljava/lang/String;
    const-string v3, "TotalSize"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v80

    .line 775
    .local v80, totalSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v81

    move/from16 v1, v80

    invoke-virtual {v3, v4, v0, v1}, Lcom/htc/android/mail/server/Server;->fetchAll(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 776
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v80           #totalSize:I
    .end local v81           #uidl:Ljava/lang/String;
    :cond_8e
    const/16 v3, 0xcb

    move/from16 v0, v39

    if-ne v0, v3, :cond_1c

    .line 777
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 779
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "UIDL"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 780
    .restart local v81       #uidl:Ljava/lang/String;
    const-string v3, "TotalSize"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v80

    .line 781
    .restart local v80       #totalSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v81

    move/from16 v1, v80

    invoke-virtual {v3, v4, v0, v1}, Lcom/htc/android/mail/server/Server;->fetchPart(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V

    .line 783
    const-string v3, "messageId"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v63

    .line 784
    .local v63, messageId:J
    sget-object v3, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aput-wide v63, v22, v24

    move-object/from16 v0, v22

    invoke-virtual {v3, v10, v11, v12, v0}, Lcom/htc/android/mail/MailEventBroadcaster;->sendReloadMailIntent(Landroid/content/Context;J[J)V

    goto/16 :goto_a

    .line 787
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v63           #messageId:J
    .end local v80           #totalSize:I
    .end local v81           #uidl:Ljava/lang/String;
    :cond_8f
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x2

    if-eq v3, v10, :cond_90

    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x6

    if-ne v3, v10, :cond_92

    .line 788
    :cond_90
    const/16 v3, 0x66

    move/from16 v0, v39

    if-ne v0, v3, :cond_91

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v3}, Lcom/htc/android/mail/server/Server;->fetchMailBoxList()V

    goto/16 :goto_a

    .line 790
    :cond_91
    const/16 v3, 0x67

    move/from16 v0, v39

    if-ne v0, v3, :cond_1c

    .line 791
    const-string v3, "Mailbox"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/Mailbox;

    .line 793
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v3, "UID"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5       #uid:Ljava/lang/String;
    const-string v3, "MSGID"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 795
    .local v13, msgid:J
    const-string v3, "BodyID"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 796
    .local v15, bodyid:J
    const-string v3, "Index"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 797
    .local v17, index:Ljava/lang/String;
    const-string v3, "ENCODE"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 798
    .local v18, encode:Ljava/lang/String;
    const-string v3, "CharsetOrFileName"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 800
    .local v19, charsetOrfilename:Ljava/lang/String;
    const-string v3, "MimeType"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 801
    .local v20, mimetype:Ljava/lang/String;
    const-string v3, "SaveAsFile"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 802
    .local v21, saveAsFile:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    sget v22, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v10 .. v25}, Lcom/htc/android/mail/server/Server;->fetchPartByUid(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 805
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v5           #uid:Ljava/lang/String;
    .end local v13           #msgid:J
    .end local v15           #bodyid:J
    .end local v17           #index:Ljava/lang/String;
    .end local v18           #encode:Ljava/lang/String;
    .end local v19           #charsetOrfilename:Ljava/lang/String;
    .end local v20           #mimetype:Ljava/lang/String;
    .end local v21           #saveAsFile:Z
    :cond_92
    invoke-virtual/range {v29 .. v29}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_1c

    .line 806
    const/16 v3, 0x1f7

    move/from16 v0, v39

    if-ne v0, v3, :cond_93

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/RequestController;->enableUICallback(Lcom/htc/android/mail/Account;)V

    .line 809
    const-string v3, "collId"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 810
    .local v23, collId:Ljava/lang/String;
    const-string v3, "UID"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 811
    .restart local v5       #uid:Ljava/lang/String;
    const-string v3, "protocol"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 812
    .local v25, protocol:Ljava/lang/String;
    const-string v3, "type"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 813
    .local v26, type:Ljava/lang/String;
    const-string v3, "truncationSize"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 814
    .local v27, truncationSize:Ljava/lang/String;
    const-string v3, "AllOrNone"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 815
    .local v28, AllOrNone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v22, v0

    check-cast v22, Lcom/htc/android/mail/server/ExchangeServer;

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v28}, Lcom/htc/android/mail/server/ExchangeServer;->fetchMailItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 818
    .end local v5           #uid:Ljava/lang/String;
    .end local v23           #collId:Ljava/lang/String;
    .end local v25           #protocol:Ljava/lang/String;
    .end local v26           #type:Ljava/lang/String;
    .end local v27           #truncationSize:Ljava/lang/String;
    .end local v28           #AllOrNone:Ljava/lang/String;
    :cond_93
    const/16 v3, 0x1fe

    move/from16 v0, v39

    if-ne v0, v3, :cond_1c

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/RequestController;->enableUICallback(Lcom/htc/android/mail/Account;)V

    .line 821
    const-string v3, "fileRef"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 822
    .local v46, fileRef:Ljava/lang/String;
    const-string v3, "CharsetOrFileName"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 823
    .local v45, fileName:Ljava/lang/String;
    const-string v3, "attachType"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v35

    .line 824
    .local v35, attachType:I
    const-string v3, "MSGID"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    .line 825
    .local v44, fileMessageId:Ljava/lang/Long;
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v77

    .line 826
    .local v77, strMessageId:Ljava/lang/String;
    const-string v3, "FromSearchSvrMailView"

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_22} :catch_4
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_5
    .catch Lcom/htc/android/mail/exception/MailNotFoundException; {:try_start_22 .. :try_end_22} :catch_6
    .catch Lcom/htc/android/mail/exception/MailException; {:try_start_22 .. :try_end_22} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_22} :catch_8
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9

    move-result v48

    .line 827
    .local v48, globalMail:Z
    if-eqz v46, :cond_1c

    if-eqz v45, :cond_1c

    goto/16 :goto_a

    .line 867
    .end local v35           #attachType:I
    .end local v39           #command:I
    .end local v44           #fileMessageId:Ljava/lang/Long;
    .end local v45           #fileName:Ljava/lang/String;
    .end local v46           #fileRef:Ljava/lang/String;
    .end local v48           #globalMail:Z
    .end local v56           #isStopOnLeave:Z
    .end local v73           #returnObject:Ljava/lang/Object;
    .end local v77           #strMessageId:Ljava/lang/String;
    .local v41, e:Ljava/io/IOException;
    :cond_94
    :try_start_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mIsStop:Z

    if-nez v3, :cond_35

    .line 868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v3, v3, Lcom/htc/android/mail/Request;->isStopped:Z

    if-nez v3, :cond_35

    .line 869
    if-lez v8, :cond_95

    .line 870
    const-string v3, "RequestController"

    const-string v10, "try again"

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v10, 0x1

    #setter for: Lcom/htc/android/mail/RequestController;->mRedo:Z
    invoke-static {v3, v10}, Lcom/htc/android/mail/RequestController;->access$402(Lcom/htc/android/mail/RequestController;Z)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    .line 872
    add-int/lit8 v8, v8, -0x1

    .line 874
    :try_start_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mUnknowHostLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1400(Lcom/htc/android/mail/RequestController;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_c

    .line 875
    :try_start_25
    const-string v3, "RequestController"

    const-string v11, "Enter wait.5000"

    invoke-static {v3, v11}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mUnknowHostLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1400(Lcom/htc/android/mail/RequestController;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v11, 0x1388

    invoke-virtual {v3, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 877
    monitor-exit v10

    goto/16 :goto_11

    :catchall_5
    move-exception v3

    monitor-exit v10
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :try_start_26
    throw v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_26} :catch_c

    .line 878
    :catch_c
    move-exception v52

    .line 879
    .local v52, ie:Ljava/lang/InterruptedException;
    :try_start_27
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "RequestController"

    const-string v10, "catch InterruptedException"

    move-object/from16 v0, v52

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_11

    .line 882
    .end local v52           #ie:Ljava/lang/InterruptedException;
    :cond_95
    if-eqz v29, :cond_96

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v3, :cond_96

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget v3, v3, Lcom/htc/android/mail/Request;->command:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_96

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-object v3, v3, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    if-eqz v3, :cond_96

    .line 883
    move-object/from16 v0, v68

    iget-object v3, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    const-string v10, "isPushMail"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/Account;->handlePushMailSyncError(Landroid/content/Context;)V

    .line 887
    :cond_96
    if-eqz v83, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakHandlerSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$900(Lcom/htc/android/mail/RequestController;)Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 889
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 890
    .restart local v49       #handler:Landroid/os/Handler;
    if-eqz v49, :cond_35

    .line 891
    move-object/from16 v0, v41

    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_97

    .line 892
    const/16 v3, 0xc9

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_11

    .line 893
    :cond_97
    move-object/from16 v0, v41

    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_98

    .line 894
    const/16 v3, 0xc8

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_11

    .line 896
    :cond_98
    const/16 v3, 0xca

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_11

    .line 926
    .end local v49           #handler:Landroid/os/Handler;
    .local v41, e:Lcom/htc/android/mail/exception/MailException;
    :cond_99
    move-object/from16 v0, v41

    instance-of v3, v0, Lcom/htc/android/mail/exception/MailBoxNotFoundException;

    if-eqz v3, :cond_9b

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1600(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0b0060

    invoke-virtual {v3, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v76

    .line 928
    .local v76, str:Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/exception/MailException;->getMessage()Ljava/lang/String;

    move-result-object v47

    .line 929
    .local v47, folder:Ljava/lang/String;
    if-nez v47, :cond_9a

    .line 930
    const-string v47, ""

    .line 932
    :cond_9a
    const-string v3, "\\$folder"

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/exception/MailException;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v76

    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .line 933
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 934
    .restart local v49       #handler:Landroid/os/Handler;
    if-eqz v49, :cond_58

    .line 935
    const/16 v3, 0xce

    move-object/from16 v0, v49

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1b

    .line 937
    .end local v47           #folder:Ljava/lang/String;
    .end local v49           #handler:Landroid/os/Handler;
    .end local v76           #str:Ljava/lang/String;
    :cond_9b
    move-object/from16 v0, v41

    instance-of v3, v0, Lcom/htc/android/mail/exception/ServerReplyErrorException;

    if-eqz v3, :cond_9c

    .line 938
    invoke-virtual/range {v83 .. v83}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/Handler;

    .line 939
    .restart local v49       #handler:Landroid/os/Handler;
    if-eqz v49, :cond_58

    .line 940
    const/16 v3, 0xd2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getContext()Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$1600(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b0318

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/exception/MailException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v49

    invoke-virtual {v0, v3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1b

    .line 943
    .end local v49           #handler:Landroid/os/Handler;
    :cond_9c
    new-instance v78, Ljava/io/StringWriter;

    invoke-direct/range {v78 .. v78}, Ljava/io/StringWriter;-><init>()V

    .line 944
    .restart local v78       #sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object/from16 v0, v78

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/exception/MailException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 945
    const-string v3, "RequestController"

    invoke-virtual/range {v78 .. v78}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v3, "RequestController"

    const-string v10, "catch MailException"

    move-object/from16 v0, v41

    invoke-static {v3, v10, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    goto/16 :goto_1b

    .line 1047
    .end local v41           #e:Lcom/htc/android/mail/exception/MailException;
    .end local v53           #isBroadcast:Z
    .end local v67           #parameter:Landroid/os/Bundle;
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v78           #sw:Ljava/io/StringWriter;
    .end local v83           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :cond_9d
    return-void

    .line 1007
    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v53       #isBroadcast:Z
    .restart local v67       #parameter:Landroid/os/Bundle;
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v83       #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    .restart local v84       #what:I
    :cond_9e
    move/from16 v84, v65

    goto/16 :goto_25

    .line 1004
    :cond_9f
    move/from16 v84, v66

    goto/16 :goto_25

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_a0
    if-eqz v29, :cond_84

    .line 1029
    const/4 v10, 0x0

    move/from16 v0, v84

    invoke-static {v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v10, v0, v1, v11, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_26

    .line 1007
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .local v41, e:Ljava/lang/InterruptedException;
    :cond_a1
    move/from16 v84, v65

    goto/16 :goto_5

    .line 1004
    :cond_a2
    move/from16 v84, v66

    goto/16 :goto_5

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_a3
    if-eqz v29, :cond_14

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 1007
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .local v41, e:Ljava/security/cert/CertificateException;
    :cond_a4
    move/from16 v84, v65

    goto/16 :goto_e

    .line 1004
    :cond_a5
    move/from16 v84, v66

    goto/16 :goto_e

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_a6
    if-eqz v29, :cond_31

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_f

    .line 1007
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .local v41, e:Ljava/io/IOException;
    :cond_a7
    move/from16 v84, v65

    goto/16 :goto_12

    .line 1004
    :cond_a8
    move/from16 v84, v66

    goto/16 :goto_12

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_a9
    if-eqz v29, :cond_3f

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_13

    .line 1007
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .local v41, e:Lcom/htc/android/mail/exception/MailNotFoundException;
    :cond_aa
    move/from16 v84, v65

    goto/16 :goto_18

    .line 1004
    :cond_ab
    move/from16 v84, v66

    goto/16 :goto_18

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_ac
    if-eqz v29, :cond_55

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_19

    .line 1007
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .local v41, e:Lcom/htc/android/mail/exception/MailException;
    :cond_ad
    move/from16 v84, v65

    goto/16 :goto_1c

    .line 1004
    :cond_ae
    move/from16 v84, v66

    goto/16 :goto_1c

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_af
    if-eqz v29, :cond_62

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_1d

    .line 1007
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .restart local v38       #comRun:Ljava/lang/Runtime;
    .local v41, e:Ljava/lang/OutOfMemoryError;
    :cond_b0
    move/from16 v84, v65

    goto/16 :goto_1f

    .line 1004
    :cond_b1
    move/from16 v84, v66

    goto/16 :goto_1f

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_b2
    if-eqz v29, :cond_6e

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_20

    .line 1007
    .end local v38           #comRun:Ljava/lang/Runtime;
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .local v41, e:Ljava/lang/Exception;
    .restart local v78       #sw:Ljava/io/StringWriter;
    :cond_b3
    move/from16 v84, v65

    goto/16 :goto_22

    .line 1004
    :cond_b4
    move/from16 v84, v66

    goto/16 :goto_22

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_b5
    if-eqz v29, :cond_79

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_23

    .line 1007
    .end local v41           #e:Ljava/lang/Exception;
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v78           #sw:Ljava/io/StringWriter;
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v73       #returnObject:Ljava/lang/Object;
    :cond_b6
    move/from16 v84, v65

    goto/16 :goto_2

    .line 1004
    :cond_b7
    move/from16 v84, v66

    goto/16 :goto_2

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_b8
    if-eqz v29, :cond_a

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    throw v1

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    throw v0

    .line 1032
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    throw v3

    goto/16 :goto_3

    .line 1007
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v73           #returnObject:Ljava/lang/Object;
    .restart local v56       #isStopOnLeave:Z
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :cond_b9
    move/from16 v84, v65

    goto/16 :goto_b

    .line 1004
    :cond_ba
    move/from16 v84, v66

    goto/16 :goto_b

    .line 1028
    .restart local v49       #handler:Landroid/os/Handler;
    :cond_bb
    if-eqz v29, :cond_26

    .line 1029
    const/4 v3, 0x0

    move/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v62

    .line 1030
    .restart local v62       #message:Landroid/os/Message;
    move-object/from16 v0, v73

    move-object/from16 v1, v62

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1031
    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    move-object/from16 v0, v29

    move/from16 v1, v84

    move-object/from16 v2, v62

    invoke-virtual {v3, v0, v1, v10, v2}, Lcom/htc/android/mail/RequestController;->broadcastResult(Lcom/htc/android/mail/Account;ILcom/htc/android/mail/Request;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 683
    .end local v49           #handler:Landroid/os/Handler;
    .end local v62           #message:Landroid/os/Message;
    .end local v84           #what:I
    .restart local v4       #mailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v32       #actualMailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v39       #command:I
    .restart local v51       #i$:I
    .restart local v59       #mailboxId:J
    .restart local v61       #mailboxIds:[J
    .restart local v73       #returnObject:Ljava/lang/Object;
    :catchall_6
    move-exception v3

    :try_start_28
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v10}, Lcom/htc/android/mail/server/Server;->getSyncResult()[Lcom/htc/android/mail/server/Server$SyncResult;

    move-result-object v72

    .line 684
    .restart local v72       #results:[Lcom/htc/android/mail/server/Server$SyncResult;
    move-object/from16 v33, v72

    .restart local v33       #arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v57, v0

    .restart local v57       #len$:I
    const/16 v50, 0x0

    .end local v51           #i$:I
    .restart local v50       #i$:I
    :goto_27
    move/from16 v0, v50

    move/from16 v1, v57

    if-ge v0, v1, :cond_44

    aget-object v69, v33, v50

    .line 685
    .restart local v69       #result:Lcom/htc/android/mail/server/Server$SyncResult;
    move-object/from16 v0, v69

    iget-wide v0, v0, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    move-wide/from16 v30, v0

    .line 686
    .restart local v30       #accountId:J
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Lcom/htc/android/mail/server/Server$SyncResult;

    .line 687
    .restart local v75       #storeResult:Lcom/htc/android/mail/server/Server$SyncResult;
    if-nez v75, :cond_bc

    .line 688
    move-object/from16 v75, v69

    .line 689
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v70

    move-object/from16 v1, v69

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :goto_28
    add-int/lit8 v50, v50, 0x1

    goto :goto_27

    .line 691
    :cond_bc
    move-object/from16 v0, v75

    iget v10, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    move-object/from16 v0, v69

    iget v11, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    add-int/2addr v10, v11

    move-object/from16 v0, v75

    iput v10, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    goto :goto_28

    .end local v33           #arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    .end local v57           #len$:I
    .restart local v34       #arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    .restart local v58       #len$:I
    :cond_bd
    move-object/from16 v0, v75

    iget v3, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    move-object/from16 v0, v69

    iget v10, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    add-int/2addr v3, v10

    move-object/from16 v0, v75

    iput v3, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto/16 :goto_16

    .line 971
    .end local v4           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v30           #accountId:J
    .end local v32           #actualMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v34           #arr$:[Lcom/htc/android/mail/server/Server$SyncResult;
    .end local v39           #command:I
    .end local v50           #i$:I
    .end local v56           #isStopOnLeave:Z
    .end local v58           #len$:I
    .end local v59           #mailboxId:J
    .end local v61           #mailboxIds:[J
    .end local v69           #result:Lcom/htc/android/mail/server/Server$SyncResult;
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .end local v72           #results:[Lcom/htc/android/mail/server/Server$SyncResult;
    .end local v75           #storeResult:Lcom/htc/android/mail/server/Server$SyncResult;
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :catchall_7
    move-exception v3

    move-object/from16 v70, v71

    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    goto/16 :goto_24

    .line 962
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :catch_d
    move-exception v41

    move-object/from16 v70, v71

    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    goto/16 :goto_21

    .line 950
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :catch_e
    move-exception v41

    move-object/from16 v70, v71

    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    goto/16 :goto_1e

    .line 916
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :catch_f
    move-exception v41

    move-object/from16 v70, v71

    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    goto/16 :goto_1a

    .line 904
    .end local v70           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v71       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    :catch_10
    move-exception v41

    move-object/from16 v70, v71

    .end local v71           #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    .restart local v70       #resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/android/mail/server/Server$SyncResult;>;"
    goto/16 :goto_17
.end method

.method public stopRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 496
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    iget-boolean v0, v0, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    iget v0, v0, Lcom/htc/android/mail/server/Server;->state:I

    if-ne v0, v2, :cond_0

    .line 499
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 500
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mRequest:Lcom/htc/android/mail/Request;

    invoke-virtual {v0}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 502
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 506
    :cond_0
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopRunning()V
    .locals 1

    .prologue
    .line 510
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->mIsStop:Z

    .line 511
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->interrupt()V

    .line 512
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->removeAllRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
