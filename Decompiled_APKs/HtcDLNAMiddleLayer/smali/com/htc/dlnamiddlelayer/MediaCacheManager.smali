.class public Lcom/htc/dlnamiddlelayer/MediaCacheManager;
.super Ljava/lang/Object;
.source "MediaCacheManager.java"


# instance fields
.field private mCacheList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/dlnamiddlelayer/CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheMaxSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheMaxSize:I

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheMaxSize:I

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    .line 21
    iput p1, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheMaxSize:I

    .line 22
    return-void
.end method

.method private declared-synchronized removeOlderOne(I)V
    .locals 7
    .parameter "keepIndex"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 47
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 49
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/CacheItem;

    iget-wide v3, v3, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/CacheItem;

    .line 53
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->removePushCacheFile(Lcom/htc/dlnamiddlelayer/CacheItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_1
    monitor-exit p0

    return-void

    .line 46
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized add(Lcom/htc/dlnamiddlelayer/CacheItem;I)Z
    .locals 5
    .parameter "cacheItem"
    .parameter "keepIndex"

    .prologue
    const/4 v4, 0x1

    .line 26
    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->get(J)Lcom/htc/dlnamiddlelayer/CacheItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 29
    :cond_1
    :try_start_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache Add id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-wide v0, p1, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->get(J)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheMaxSize:I

    if-lt v0, v1, :cond_2

    .line 35
    invoke-direct {p0, p2}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->removeOlderOne(I)V

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(J)Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 103
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 106
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/CacheItem;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/CacheItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_1
    monitor-exit p0

    return-object v2

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 102
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(J)V
    .locals 4
    .parameter "index"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/CacheItem;

    .line 69
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->removePushCacheFile(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 78
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAll()V
    .locals 3

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 154
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/CacheItem;

    .line 157
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->removePushCacheFile(Lcom/htc/dlnamiddlelayer/CacheItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 160
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return-void
.end method

.method public removePushCacheFile(Lcom/htc/dlnamiddlelayer/CacheItem;)V
    .locals 4
    .parameter "cacheItem"

    .prologue
    .line 128
    if-nez p1, :cond_1

    .line 148
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    if-eqz v3, :cond_0

    .line 134
    :try_start_0
    check-cast p1, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getPushAlbumArtPath()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, sPath:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 138
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v1           #file:Ljava/io/File;
    .end local v2           #sPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized update(IJ)V
    .locals 6
    .parameter "index"
    .parameter "newIndex"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 116
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/CacheItem;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/CacheItem;

    invoke-virtual {v2, p2, p3}, Lcom/htc/dlnamiddlelayer/CacheItem;->setIndex(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateCurrentRemoveOthers(II)V
    .locals 6
    .parameter "curOldIndex"
    .parameter "curNewIndex"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->mCacheList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/CacheItem;

    .line 87
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/CacheItem;->getIndex()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->removePushCacheFile(Lcom/htc/dlnamiddlelayer/CacheItem;)V

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 97
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_1
    int-to-long v2, p2

    :try_start_1
    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->update(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    return-void
.end method
