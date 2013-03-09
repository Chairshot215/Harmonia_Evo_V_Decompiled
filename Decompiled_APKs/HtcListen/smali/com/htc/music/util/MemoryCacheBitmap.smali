.class public Lcom/htc/music/util/MemoryCacheBitmap;
.super Lcom/htc/music/util/MemoryCacheBase;
.source "MemoryCacheBitmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/music/util/MemoryCacheBase",
        "<TK;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheBitmap]"


# instance fields
.field protected mCount:I

.field protected mRefCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/music/util/MemoryCacheBase;-><init>()V

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    iput p1, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mCount:I

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    return-void
.end method


# virtual methods
.method protected checkCapacity(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic checkCapacity(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheBitmap;->checkCapacity(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_1
    :try_start_1
    invoke-super {p0}, Lcom/htc/music/util/MemoryCacheBase;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mCount:I

    return v0
.end method

.method public onCreate()V
    .locals 3

    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    const-string v0, "[MemoryCacheBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    const-string v0, "[MemoryCacheBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/util/MemoryCacheBitmap;->clear()V

    :cond_0
    return-void
.end method

.method protected releaseItemResource(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic releaseItemResource(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheBitmap;->releaseItemResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
