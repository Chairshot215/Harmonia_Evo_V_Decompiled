.class public Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;
.super Ljava/lang/Object;
.source "BatchingNamedTaskExecutor.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;


# instance fields
.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mQueuedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/googlequicksearchbox/util/NamedTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 46
    return-void
.end method

.method private dispatch(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 59
    return-void
.end method


# virtual methods
.method public cancelPendingTasks()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->cancelPendingTasks()V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->cancelPendingTasks()V

    .line 98
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->close()V

    .line 99
    return-void
.end method

.method public execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public executeNextBatch(I)I
    .locals 11
    .parameter "batchSize"

    .prologue
    const/4 v8, 0x0

    .line 67
    new-array v2, v8, [Lcom/google/android/googlequicksearchbox/util/NamedTask;

    .line 69
    .local v2, batch:[Lcom/google/android/googlequicksearchbox/util/NamedTask;
    iget-object v9, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    monitor-enter v9

    .line 70
    :try_start_0
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 71
    .local v3, count:I
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 72
    .local v6, nextTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/util/NamedTask;>;"
    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lcom/google/android/googlequicksearchbox/util/NamedTask;

    move-object v2, v0

    .line 73
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 75
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    move-object v1, v2

    .local v1, arr$:[Lcom/google/android/googlequicksearchbox/util/NamedTask;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v1, v4

    .line 78
    .local v7, task:Lcom/google/android/googlequicksearchbox/util/NamedTask;
    invoke-direct {p0, v7}, Lcom/google/android/googlequicksearchbox/util/BatchingNamedTaskExecutor;->dispatch(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    .end local v1           #arr$:[Lcom/google/android/googlequicksearchbox/util/NamedTask;
    .end local v3           #count:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #nextTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/util/NamedTask;>;"
    .end local v7           #task:Lcom/google/android/googlequicksearchbox/util/NamedTask;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 80
    .restart local v1       #arr$:[Lcom/google/android/googlequicksearchbox/util/NamedTask;
    .restart local v3       #count:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #nextTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/util/NamedTask;>;"
    :cond_0
    return v3
.end method
