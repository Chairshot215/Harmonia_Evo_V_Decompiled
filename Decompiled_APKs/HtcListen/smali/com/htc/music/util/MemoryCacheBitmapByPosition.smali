.class public Lcom/htc/music/util/MemoryCacheBitmapByPosition;
.super Lcom/htc/music/util/MemoryCacheBitmap;
.source "MemoryCacheBitmapByPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/music/util/MemoryCacheBitmap",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheBitmapByPosition]"


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/music/util/MemoryCacheBitmap;-><init>(I)V

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->mPosition:I

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->mPosition:I

    return-void
.end method


# virtual methods
.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public push(ILandroid/graphics/Bitmap;)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/MemoryCacheBitmap;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeTheLowestPriorityItem(Ljava/lang/Integer;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    if-nez p1, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_3

    move-object v7, v1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    move v8, v9

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v6, :cond_6

    move v8, v9

    goto :goto_0

    :cond_6
    iget-object v9, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v9, "[MemoryCacheBitmapByPosition]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "release item: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->releaseItemResource(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic removeTheLowestPriorityItem(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->removeTheLowestPriorityItem(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->mPosition:I

    return-void
.end method

.method public updateKey(II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->remove(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
