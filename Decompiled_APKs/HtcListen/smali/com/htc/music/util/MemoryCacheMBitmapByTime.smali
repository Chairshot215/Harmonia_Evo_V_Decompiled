.class public Lcom/htc/music/util/MemoryCacheMBitmapByTime;
.super Lcom/htc/music/util/MemoryCacheMBitmap;
.source "MemoryCacheMBitmapByTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/music/util/MemoryCacheMBitmap",
        "<",
        "Lcom/htc/music/util/TimedKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheMBitmapByTime]"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public pull(I)Lcom/htc/music/util/MBitmap;
    .locals 4

    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v1, Lcom/htc/music/util/TimedKey;

    invoke-direct {v1, p1}, Lcom/htc/music/util/TimedKey;-><init>(I)V

    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/MBitmap;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public pull(Lcom/htc/music/util/TimedKey;)Lcom/htc/music/util/MBitmap;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/MBitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/htc/music/util/TimedKey;

    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(Lcom/htc/music/util/TimedKey;)Lcom/htc/music/util/MBitmap;

    move-result-object v0

    return-object v0
.end method

.method public push(ILcom/htc/music/util/MBitmap;)Z
    .locals 2

    new-instance v0, Lcom/htc/music/util/TimedKey;

    invoke-direct {v0, p1}, Lcom/htc/music/util/TimedKey;-><init>(I)V

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/MemoryCacheMBitmap;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public push(ILcom/htc/music/util/MBitmap;J)Z
    .locals 2

    new-instance v0, Lcom/htc/music/util/TimedKey;

    invoke-direct {v0, p1, p3, p4}, Lcom/htc/music/util/TimedKey;-><init>(IJ)V

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/MemoryCacheMBitmap;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected removeTheLowestPriorityItem(Lcom/htc/music/util/TimedKey;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-nez p1, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/util/TimedKey;

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/TimedKey;

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    move-object v4, v0

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    move v5, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MBitmap;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->releaseItemResource(Lcom/htc/music/util/MBitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic removeTheLowestPriorityItem(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    check-cast p1, Lcom/htc/music/util/TimedKey;

    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->removeTheLowestPriorityItem(Lcom/htc/music/util/TimedKey;)Z

    move-result v0

    return v0
.end method
