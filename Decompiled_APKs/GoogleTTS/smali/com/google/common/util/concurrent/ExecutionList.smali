.class public Lcom/google/common/util/concurrent/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private executed:Z

.field private final runnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ExecutionList;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    .line 106
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/common/util/concurrent/ExecutionList;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4
    .parameter "runnable"
    .parameter "executor"

    .prologue
    .line 61
    const-string v1, "Runnable was null."

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "Executor was null."

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    .line 69
    .local v0, executeImmediate:Z
    iget-object v2, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/List;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/List;

    new-instance v3, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-direct {v3, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 95
    iget-object v3, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/List;

    monitor-enter v3

    .line 96
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ExecutionList;->executed:Z

    .line 97
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v2, p0, Lcom/google/common/util/concurrent/ExecutionList;->runnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 102
    .local v1, runnableAndExecutor:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->execute()V

    goto :goto_0

    .line 97
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #runnableAndExecutor:Lcom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 104
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
