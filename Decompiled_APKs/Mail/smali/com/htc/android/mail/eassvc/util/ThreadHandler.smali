.class public Lcom/htc/android/mail/eassvc/util/ThreadHandler;
.super Ljava/lang/Object;
.source "ThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;,
        Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ThreadHandler"


# instance fields
.field public mAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

.field mAliveTime:I

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

.field mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    .line 14
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAliveTime:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mIsStop:Z

    .line 18
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    .line 20
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;-><init>(Lcom/htc/android/mail/eassvc/util/ThreadHandler;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    .line 31
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->setName(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    .line 14
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAliveTime:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mIsStop:Z

    .line 18
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mRunningRequest:Landroid/os/Message;

    .line 20
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAction:Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 35
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;-><init>(Lcom/htc/android/mail/eassvc/util/ThreadHandler;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    .line 37
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->setName(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/eassvc/util/ThreadHandler;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public addRequest(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 46
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v3

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 48
    .local v1, req:Landroid/os/Message;
    invoke-virtual {p0, v1, p1}, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->requestEqual(Landroid/os/Message;Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "ThreadHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".addRequest: request already exist in queue, skip."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    monitor-exit v3

    .line 66
    .end local v1           #req:Landroid/os/Message;
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v2, "ThreadHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": addRequest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    if-nez v2, :cond_3

    .line 59
    new-instance v2, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;-><init>(Lcom/htc/android/mail/eassvc/util/ThreadHandler;)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    .line 60
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->setName(Ljava/lang/String;)V

    .line 62
    :cond_3
    const-string v2, "ThreadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start new thread."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->start()V

    .line 65
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 55
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public removeAllRequest()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "ThreadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".removeAllRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRequest(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 68
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v3

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Message;

    invoke-interface {v2, v4}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Message;

    .line 70
    .local v1, list:[Landroid/os/Message;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 71
    aget-object v2, v1, v0

    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mQueue:Ljava/util/concurrent/BlockingQueue;

    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 75
    :cond_1
    monitor-exit v3

    .line 76
    return-void

    .line 75
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
    .line 88
    if-ne p1, p2, :cond_0

    .line 89
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p2, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p2, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAliveTime(I)V
    .locals 0
    .parameter "timeInSecond"

    .prologue
    .line 85
    iput p1, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mAliveTime:I

    .line 86
    return-void
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->removeAllRequest()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mIsStop:Z

    .line 43
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/ThreadHandler;->mThread:Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/util/ThreadHandler$WorkerThread;->interrupt()V

    .line 44
    return-void
.end method
