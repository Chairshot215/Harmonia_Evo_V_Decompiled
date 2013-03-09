.class public Lcom/htc/opensense/album/util/MemoryCacheBase;
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

.field protected mRangeMax:I

.field protected mRangeMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "Cache"

    iput-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->CACHETAG:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mRangeMin:I

    .line 21
    iput v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mRangeMax:I

    .line 147
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

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
            Lcom/htc/opensense/album/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 101
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 102
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 134
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
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
    .line 93
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x0

    .line 37
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v4

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 44
    .local v0, bExist:Z
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 45
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, count:I
    :cond_2
    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/util/MemoryCacheBase;->checkCapacity(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 52
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheBase;->removeTheLowestPriorityItem()Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    const/4 v5, 0x5

    if-le v1, v5, :cond_2

    .line 56
    const-string v5, "Cache"

    const-string v6, "push fail. buffer full"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Lcom/htc/opensense/album/util/OutOfCapacityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Lcom/htc/opensense/album/util/OutOfCapacityException;
    const-string v5, "Cache"

    const-string v6, "OutOfCapacity"

    invoke-static {v5, v6, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v2           #e:Lcom/htc/opensense/album/util/OutOfCapacityException;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    :try_start_3
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 65
    :cond_4
    const/4 v0, 0x1

    .line 70
    .end local v3           #t:Ljava/lang/Object;,"TT;"
    :cond_5
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    if-eqz v0, :cond_6

    .line 73
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 75
    :cond_6
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/htc/opensense/album/util/OutOfCapacityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
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
    .line 109
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    .local p1, key:Ljava/lang/Object;,"TKEY;"
    iget-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/album/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public setRangeBoundaries(II)V
    .locals 0
    .parameter "min"
    .parameter "max"

    .prologue
    .line 25
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    iput p1, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mRangeMin:I

    .line 26
    iput p2, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mRangeMax:I

    .line 27
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 141
    .local p0, this:Lcom/htc/opensense/album/util/MemoryCacheBase;,"Lcom/htc/opensense/album/util/MemoryCacheBase<TKEY;TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    return-void
.end method
