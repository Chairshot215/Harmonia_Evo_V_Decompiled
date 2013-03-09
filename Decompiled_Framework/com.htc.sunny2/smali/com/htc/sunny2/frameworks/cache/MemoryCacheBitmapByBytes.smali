.class public Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;
.super Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;
.source "MemoryCacheBitmapByBytes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase",
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

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    return-void
.end method


# virtual methods
.method protected checkCapacity(Landroid/graphics/Bitmap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mMaxCacheSize:I

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->checkCapacity(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    const-string v3, "skyer"

    const-string v4, "clear bitmap"

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->clear()V

    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->push(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public push(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->lock()V

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->unlock()V

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->unlock()V

    throw v1
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v4, v5, v6

    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByBytes;->mCurrCacheSize:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_0
.end method
