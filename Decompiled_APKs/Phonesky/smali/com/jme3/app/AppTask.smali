.class public Lcom/jme3/app/AppTask;
.super Ljava/lang/Object;
.source "AppTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private cancelled:Z

.field private exception:Ljava/util/concurrent/ExecutionException;

.field private finished:Z

.field private final finishedCondition:Ljava/util/concurrent/locks/Condition;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final stateLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jme3/app/AppTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/AppTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    .local p0, this:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<TV;>;"
    const/4 v0, 0x1

    .line 70
    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/jme3/app/AppTask;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 75
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/jme3/app/AppTask;->cancelled:Z

    .line 77
    iget-object v1, p0, Lcom/jme3/app/AppTask;->finishedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<TV;>;"
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/app/AppTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jme3/app/AppTask;->finishedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jme3/app/AppTask;->exception:Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/jme3/app/AppTask;->exception:Ljava/util/concurrent/ExecutionException;

    throw v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/jme3/app/AppTask;->result:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<TV;>;"
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/app/AppTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/jme3/app/AppTask;->finishedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/AppTask;->exception:Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/jme3/app/AppTask;->exception:Ljava/util/concurrent/ExecutionException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jme3/app/AppTask;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Object not returned in time allocated."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/jme3/app/AppTask;->result:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public invoke()V
    .locals 7

    .prologue
    .line 142
    .local p0, this:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<TV;>;"
    :try_start_0
    iget-object v0, p0, Lcom/jme3/app/AppTask;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6

    .line 144
    .local v6, tmpResult:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iput-object v6, p0, Lcom/jme3/app/AppTask;->result:Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/AppTask;->finished:Z

    .line 149
    iget-object v0, p0, Lcom/jme3/app/AppTask;->finishedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 165
    .end local v6           #tmpResult:Ljava/lang/Object;,"TV;"
    :goto_0
    return-void

    .line 151
    .restart local v6       #tmpResult:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v6           #tmpResult:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v5

    .line 154
    .local v5, e:Ljava/lang/Exception;
    sget-object v0, Lcom/jme3/app/AppTask;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "invoke()"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 158
    :try_start_3
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v5}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/jme3/app/AppTask;->exception:Ljava/util/concurrent/ExecutionException;

    .line 160
    iget-object v0, p0, Lcom/jme3/app/AppTask;->finishedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 119
    .local p0, this:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<TV;>;"
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/jme3/app/AppTask;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 128
    .local p0, this:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<TV;>;"
    iget-object v0, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/jme3/app/AppTask;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jme3/app/AppTask;->cancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/AppTask;->exception:Ljava/util/concurrent/ExecutionException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jme3/app/AppTask;->stateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
