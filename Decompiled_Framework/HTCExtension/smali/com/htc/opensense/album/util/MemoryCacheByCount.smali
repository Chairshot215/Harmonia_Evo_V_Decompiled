.class public Lcom/htc/opensense/album/util/MemoryCacheByCount;
.super Lcom/htc/opensense/album/util/MemoryCacheBase;
.source "MemoryCacheByCount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KEY:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/opensense/album/util/MemoryCacheBase",
        "<TKEY;TT;>;"
    }
.end annotation


# instance fields
.field private mCount:I

.field protected mKeyQueues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TKEY;>;"
        }
    .end annotation
.end field

.field protected mTop:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/album/util/MemoryCacheBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    iput p1, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mCount:I

    return-void
.end method


# virtual methods
.method protected checkCapacity(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    iget v1, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mCount:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->lock()V

    iget-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->unlock()V

    invoke-super {p0}, Lcom/htc/opensense/album/util/MemoryCacheBase;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->unlock()V

    throw v0
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mCount:I

    return v0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TT;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->lock()V

    iget-object v4, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    iget v3, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->unlock()V

    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/htc/opensense/album/util/MemoryCacheBase;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->unlock()V

    move v1, v3

    goto :goto_0

    :cond_4
    :try_start_2
    instance-of v3, p2, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v3, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    move-object v3, v0

    iget v3, v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_5

    const-string v3, "MemoryCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key exists. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->unlock()V

    throw v3

    :cond_6
    if-eqz v2, :cond_7

    :try_start_3
    const-string v3, "MemoryCache"

    const-string v4, "Key exists. remove old item."

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->releaseItemResource(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->lock()V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->releaseItemResource(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->unlock()V

    iget v1, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/MemoryCacheBase;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->unlock()V

    throw v1
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/album/util/OutOfCapacityException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v2, Lcom/htc/opensense/album/util/OutOfCapacityException;

    const-string v3, "item null"

    invoke-direct {v2, v3}, Lcom/htc/opensense/album/util/OutOfCapacityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->releaseItemResource(Ljava/lang/Object;)V

    iget v2, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/opensense/album/util/MemoryCacheByCount;->mTop:I

    goto :goto_0
.end method
