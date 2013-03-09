.class public abstract Lcom/google/android/googlequicksearchbox/util/CachedLater;
.super Ljava/lang/Object;
.source "CachedLater.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private mCreating:Z

.field private final mLock:Ljava/lang/Object;

.field private mValid:Z

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private mWaitingConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<-TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/CachedLater;,"Lcom/google/android/googlequicksearchbox/util/CachedLater<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 127
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/CachedLater;,"Lcom/google/android/googlequicksearchbox/util/CachedLater<TA;>;"
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValid:Z

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract create()V
.end method

.method public getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/CachedLater;,"Lcom/google/android/googlequicksearchbox/util/CachedLater<TA;>;"
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<-TA;>;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValid:Z

    .line 92
    .local v1, valid:Z
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    .line 93
    .local v2, value:Ljava/lang/Object;,"TA;"
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 94
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-eqz v1, :cond_3

    .line 101
    if-eqz p1, :cond_2

    .line 103
    invoke-interface {p1, v2}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    :goto_0
    return-void

    .line 99
    .end local v1           #valid:Z
    .end local v2           #value:Ljava/lang/Object;,"TA;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 106
    .restart local v1       #valid:Z
    .restart local v2       #value:Ljava/lang/Object;,"TA;"
    :cond_3
    const/4 v0, 0x0

    .line 107
    .local v0, create:Z
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 108
    :try_start_2
    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mCreating:Z

    if-nez v3, :cond_4

    .line 109
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mCreating:Z

    .line 110
    const/4 v0, 0x1

    .line 112
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/CachedLater;->create()V

    goto :goto_0

    .line 112
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public declared-synchronized getNow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/CachedLater;,"Lcom/google/android/googlequicksearchbox/util/CachedLater<TA;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/CachedLater;->haveNow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "getNow() called when haveNow() is false"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public haveNow()Z
    .locals 2

    .prologue
    .line 134
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/CachedLater;,"Lcom/google/android/googlequicksearchbox/util/CachedLater<TA;>;"
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValid:Z

    monitor-exit v1

    return v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prefetch()V
    .locals 1

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/CachedLater;,"Lcom/google/android/googlequicksearchbox/util/CachedLater<TA;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/util/CachedLater;->getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 77
    return-void
.end method

.method protected store(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/CachedLater;,"Lcom/google/android/googlequicksearchbox/util/CachedLater<TA;>;"
    .local p1, value:Ljava/lang/Object;,"TA;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 58
    :try_start_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    .line 59
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mValid:Z

    .line 60
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mCreating:Z

    .line 61
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    .line 62
    .local v2, waitingConsumers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/util/Consumer<-TA;>;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    .line 63
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/util/Consumer;

    .line 67
    .local v0, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<-TA;>;"
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0           #consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<-TA;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #waitingConsumers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/util/Consumer<-TA;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 70
    .restart local v2       #waitingConsumers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/util/Consumer<-TA;>;>;"
    :cond_0
    return-void
.end method
