.class public Lcom/google/common/util/concurrent/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method public static addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .parameter "service"
    .parameter "terminationTimeout"
    .parameter "timeUnit"

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/common/util/concurrent/Executors$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Executors$1;-><init>(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 130
    return-void
.end method

.method public static daemonThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Executors;->daemonThreadFactory(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public static daemonThreadFactory(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .parameter "factory"

    .prologue
    .line 193
    new-instance v0, Lcom/google/common/util/concurrent/DaemonThreadFactory;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/DaemonThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;
    .locals 3
    .parameter "executor"

    .prologue
    .line 149
    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Executors;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .parameter "executor"
    .parameter "terminationTimeout"
    .parameter "timeUnit"

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Executors;->daemonThreadFactory(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 64
    invoke-static {p0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 67
    .local v0, service:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Executors;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 69
    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3
    .parameter "executor"

    .prologue
    .line 169
    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/Executors;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .parameter "executor"
    .parameter "terminationTimeout"
    .parameter "timeUnit"

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Executors;->daemonThreadFactory(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 93
    invoke-static {p0}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 96
    .local v0, service:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Executors;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 98
    return-object v0
.end method

.method public static sameThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/Executors$SameThreadExecutorService;-><init>(Lcom/google/common/util/concurrent/Executors$1;)V

    return-object v0
.end method
