.class public Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;
.super Ljava/lang/Object;
.source "PerNameExecutor.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;


# instance fields
.field private final mExecutorFactory:Lcom/google/android/googlequicksearchbox/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/googlequicksearchbox/util/Factory",
            "<",
            "Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/util/Factory;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Factory",
            "<",
            "Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, executorFactory:Lcom/google/android/googlequicksearchbox/util/Factory;,"Lcom/google/android/googlequicksearchbox/util/Factory<Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutorFactory:Lcom/google/android/googlequicksearchbox/util/Factory;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelPendingTasks()V
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    .line 40
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 41
    .local v0, executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->cancelPendingTasks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    .end local v0           #executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 49
    .local v0, executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    .end local v0           #executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    .line 58
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 60
    .local v0, executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    if-nez v0, :cond_1

    .line 61
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutorFactory:Lcom/google/android/googlequicksearchbox/util/Factory;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/util/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    check-cast v0, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 62
    .restart local v0       #executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 55
    .end local v0           #executor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
