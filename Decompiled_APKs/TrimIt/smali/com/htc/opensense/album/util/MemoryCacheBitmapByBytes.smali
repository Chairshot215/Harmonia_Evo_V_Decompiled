.class public Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;
.super Lcom/htc/opensense/album/util/MemoryCacheBase;
.source "MemoryCacheBitmapByBytes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/util/MemoryCacheBase",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrCacheSize:I

.field private mMaxCacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxCacheSize"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/opensense/album/util/MemoryCacheBase;-><init>()V

    .line 100
    iput v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    .line 101
    iput v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    .line 23
    iput p1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    .line 24
    return-void
.end method


# virtual methods
.method protected checkCapacity(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/album/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    .line 51
    .local v0, size:I
    iget v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v1, Lcom/htc/opensense/album/util/OutOfCapacityException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/opensense/album/util/OutOfCapacityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    iget v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic checkCapacity(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/album/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->checkCapacity(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 85
    iget-object v3, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 86
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 90
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 93
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    const-string v3, "skyer"

    const-string v4, "clear bitmap"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-super {p0}, Lcom/htc/opensense/album/util/MemoryCacheBase;->clear()V

    .line 96
    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->push(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public push(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter "key"
    .parameter "item"

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/album/util/MemoryCacheBase;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 33
    .local v0, ret:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->lock()V

    .line 36
    iget v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mCurrCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->unlock()V

    .line 42
    :cond_0
    return v0

    .line 38
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->unlock()V

    throw v1
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 61
    iget-object v6, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v5

    .line 63
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 64
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 69
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v4, v5, v6

    .line 72
    .local v4, size:I
    iget v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByBytes;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v5, 0x1

    goto :goto_0
.end method
