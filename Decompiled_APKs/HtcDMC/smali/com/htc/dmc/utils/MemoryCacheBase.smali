.class public Lcom/htc/dmc/utils/MemoryCacheBase;
.super Ljava/lang/Object;
.source "MemoryCacheBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KEY:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final CACHETAG:Ljava/lang/String;

.field protected mItems:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TKEY;TT;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "[Cache]"

    iput-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->CACHETAG:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method protected checkCapacity(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/dmc/utils/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    iget-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 100
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 128
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    iget-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 129
    return-void
.end method

.method public pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dmc/utils/MemoryCacheBase;->lock()V

    .line 89
    iget-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/htc/dmc/utils/MemoryCacheBase;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/htc/dmc/utils/MemoryCacheBase;->unlock()V

    throw v0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    .line 37
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v3

    .line 43
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 45
    iget-object v4, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    iget-object v4, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    .local v2, t:Ljava/lang/Object;,"TT;"
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/dmc/utils/MemoryCacheBase;->releaseItemResource(Ljava/lang/Object;)V

    .line 48
    :cond_2
    const-string v4, "[Cache]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release item resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in push."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v2           #t:Ljava/lang/Object;,"TT;"
    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/dmc/utils/MemoryCacheBase;->checkCapacity(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 53
    invoke-virtual {p0, p1}, Lcom/htc/dmc/utils/MemoryCacheBase;->removeTheLowestPriorityItem(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    .local v1, removed:Z
    if-nez v1, :cond_4

    .line 57
    invoke-virtual {p0, p2}, Lcom/htc/dmc/utils/MemoryCacheBase;->releaseItemResource(Ljava/lang/Object;)V

    .line 58
    const-string v4, "[Cache]"

    const-string v5, "all items in the cache have higher priority."

    invoke-static {v4, v5}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v4, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Lcom/htc/dmc/utils/OutOfCapacityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    .end local v1           #removed:Z
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lcom/htc/dmc/utils/OutOfCapacityException;
    const-string v4, "[Cache]"

    const-string v5, "OutOfCapacity"

    invoke-static {v4, v5, v0}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0           #e:Lcom/htc/dmc/utils/OutOfCapacityException;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    iget-object v4, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    const/4 v3, 0x1

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
    :try_end_3
    .catch Lcom/htc/dmc/utils/OutOfCapacityException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method protected releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    iget-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method protected removeTheLowestPriorityItem(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/dmc/utils/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    .local p1, k:Ljava/lang/Object;,"TKEY;"
    const/4 v0, 0x1

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 135
    .local p0, this:Lcom/htc/dmc/utils/MemoryCacheBase;,"Lcom/htc/dmc/utils/MemoryCacheBase<TKEY;TT;>;"
    iget-object v0, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    return-void
.end method
