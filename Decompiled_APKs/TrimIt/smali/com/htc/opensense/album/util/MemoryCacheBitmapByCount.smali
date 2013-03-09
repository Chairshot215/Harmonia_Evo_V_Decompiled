.class public Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
.super Lcom/htc/opensense/album/util/MemoryCacheByCount;
.source "MemoryCacheBitmapByCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/util/MemoryCacheByCount",
        "<",
        "Ljava/lang/String;",
        "Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;",
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
            "Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/MemoryCacheByCount;-><init>(I)V

    .line 221
    iput v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    .line 222
    iput v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 83
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 84
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .line 89
    .local v2, item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 92
    .end local v2           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    :cond_1
    invoke-super {p0}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->clear()V

    .line 94
    const/4 v2, 0x0

    .line 95
    .restart local v2       #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 97
    .local v4, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    check-cast v2, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .restart local v2       #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 98
    iget-object v5, v2, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 100
    .end local v4           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;>;"
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 101
    return-void
.end method

.method public pull(Ljava/lang/String;)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    .locals 2
    .parameter "key"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/MemoryCacheByCount;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .line 46
    .local v0, item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    .line 51
    const/4 v0, 0x0

    .line 55
    :cond_0
    return-object v0
.end method

.method public bridge synthetic pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v0

    return-object v0
.end method

.method protected releaseItemResource(Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 63
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 65
    iget v0, p1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v0, v1, :cond_2

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    const-string v0, "MemCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", push to list ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->releaseItemResource(Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;)V

    return-void
.end method

.method public removeInvisibleRange()V
    .locals 10

    .prologue
    .line 186
    iget-object v7, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 187
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .line 190
    .local v3, item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v3, :cond_1

    iget v7, v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-lt v7, v8, :cond_1

    iget v7, v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v7, v8, :cond_0

    .line 191
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    .end local v3           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 195
    .local v0, cnt:I
    iget-object v7, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_5

    .line 197
    iget-object v7, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 198
    .local v6, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;>;"
    const/4 v3, 0x0

    .line 199
    .restart local v3       #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    check-cast v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .restart local v3       #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_4

    iget v7, v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-lt v7, v8, :cond_3

    iget v7, v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    iget v8, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v7, v8, :cond_4

    .line 201
    :cond_3
    iget-object v7, v3, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    iget-object v7, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mNeedRecycleBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 195
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 207
    .end local v3           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    .end local v6           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;>;"
    :cond_5
    if-lez v0, :cond_6

    .line 208
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

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_6
    return-void
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/album/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 108
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v13

    .line 110
    :cond_1
    const/4 v7, -0x1

    .local v7, upper:I
    const/4 v3, -0x1

    .line 111
    .local v3, lower:I
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, upperKey:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    .local v4, lowerKey:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 114
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .line 115
    .local v1, item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v1, :cond_2

    .line 117
    iget v6, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    .line 119
    .local v6, pos:I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    if-ne v7, v3, :cond_3

    .line 121
    move v7, v6

    .line 122
    move v3, v6

    .line 123
    move-object v4, v2

    .line 124
    move-object v8, v2

    goto :goto_1

    .line 128
    :cond_3
    if-ge v6, v3, :cond_4

    .line 130
    move v3, v6

    .line 131
    move-object v4, v2

    goto :goto_1

    .line 133
    :cond_4
    if-le v6, v7, :cond_2

    .line 135
    move v7, v6

    .line 136
    move-object v8, v2

    goto :goto_1

    .line 142
    .end local v1           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #pos:I
    :cond_5
    const-string v9, "MemCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeTheLowestPriorityItem] upper : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lower "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v5, 0x0

    .line 146
    .local v5, pickedKey:Ljava/lang/String;
    iget v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    if-ge v3, v9, :cond_8

    .line 148
    move-object v5, v4

    .line 160
    :goto_2
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    if-eqz v5, :cond_7

    .line 164
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    .line 166
    .restart local v1       #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v1, :cond_6

    iget-object v9, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    if-nez v9, :cond_a

    .line 168
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

    iget v11, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v1           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    :cond_7
    :goto_3
    iget v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mTop:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mTop:I

    goto/16 :goto_0

    .line 150
    :cond_8
    iget v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    if-le v7, v9, :cond_9

    .line 152
    move-object v5, v8

    goto :goto_2

    .line 156
    :cond_9
    const-string v9, "MemCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[removeTheLowestPriorityItem] No space outside visible range. ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v9, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mKeyQueues:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #pickedKey:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #pickedKey:Ljava/lang/String;
    goto/16 :goto_2

    .line 172
    .restart local v1       #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    :cond_a
    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->releaseItemResource(Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;)V

    goto :goto_3
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 217
    iput p1, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleStart:I

    .line 218
    iput p2, p0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->mVisibleEnd:I

    .line 219
    return-void
.end method
