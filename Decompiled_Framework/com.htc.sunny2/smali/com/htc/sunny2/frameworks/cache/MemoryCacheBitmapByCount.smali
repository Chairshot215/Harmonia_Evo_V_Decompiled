.class public Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
.super Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;
.source "MemoryCacheBitmapByCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount",
        "<",
        "Ljava/lang/String;",
        "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mNeedRecycleBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;-><init>(I)V

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleStart:I

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleEnd:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->clear()V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public pull(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v0

    return-object v0
.end method

.method protected releaseItemResource(Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v0, v1, :cond_2

    :cond_0
    iget-object v0, p1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic releaseItemResource(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->releaseItemResource(Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;)V

    return-void
.end method

.method public removeInvisibleRange()V
    .locals 10

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v3, :cond_1

    iget v7, v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-lt v7, v8, :cond_1

    iget v7, v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v7, v8, :cond_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_5

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_4

    iget v7, v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-lt v7, v8, :cond_3

    iget v7, v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v7, v8, :cond_4

    :cond_3
    iget-object v7, v3, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    if-lez v0, :cond_6

    const-string v7, "MemCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needed recycled bitmap"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    const/4 v7, -0x1

    const/4 v3, -0x1

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v1, :cond_2

    iget v6, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    if-ne v7, v3, :cond_3

    move v7, v6

    move v3, v6

    move-object v4, v2

    move-object v8, v2

    goto :goto_1

    :cond_3
    if-ge v6, v3, :cond_4

    move v3, v6

    move-object v4, v2

    goto :goto_1

    :cond_4
    if-le v6, v7, :cond_2

    move v7, v6

    move-object v8, v2

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    iget v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-ge v3, v9, :cond_8

    move-object v5, v4

    :goto_2
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v5, :cond_7

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    if-eqz v1, :cond_6

    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-nez v9, :cond_a

    :cond_6
    const-string v9, "MemCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " do not exists. ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleStart:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleEnd:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mTop:I

    goto/16 :goto_0

    :cond_8
    iget v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v7, v9, :cond_9

    move-object v5, v8

    goto :goto_2

    :cond_9
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->releaseItemResource(Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;)V

    goto :goto_3
.end method

.method public setVisibleRange(II)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleStart:I

    iput p2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->mVisibleEnd:I

    return-void
.end method
