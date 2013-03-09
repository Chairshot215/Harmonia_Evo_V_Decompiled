.class public Lcom/htc/opensense/album/util/RecycleBin;
.super Ljava/lang/Object;
.source "RecycleBin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

.field private mLastIndex:I

.field private mMaxCache:I

.field private mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/album/util/RecycleBin;-><init>(ILcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V

    return-void
.end method

.method public constructor <init>(ILcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/util/RecycleBin;->mMaxCache:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/util/RecycleBin;->mLastIndex:I

    const-class v0, Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/util/RecycleBin;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->setMaxCache(I)V

    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/util/RecycleBin;->setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/util/RecycleBin;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public get(I)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;->onGet(Ljava/lang/Integer;Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method public getMaxCache()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/RecycleBin;->mMaxCache:I

    return v0
.end method

.method public peek(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mMaxCache:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mLastIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mLastIndex:I

    if-ge v1, p1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/util/RecycleBin;->remove(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;->onPut(Ljava/lang/Integer;Landroid/view/View;)V

    :cond_2
    iput p1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mLastIndex:I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/util/RecycleBin;->remove(I)V

    goto :goto_0
.end method

.method public remove(I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;->onRemoved(Ljava/lang/Integer;Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mCacheListener:Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;

    return-void
.end method

.method public declared-synchronized setMaxCache(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/opensense/album/util/RecycleBin;->mMaxCache:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/RecycleBin;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
