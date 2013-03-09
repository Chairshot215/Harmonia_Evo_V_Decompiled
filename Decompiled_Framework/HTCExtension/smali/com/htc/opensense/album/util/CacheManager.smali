.class public Lcom/htc/opensense/album/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SOURCE_BOTH:I = 0x3

.field public static final SOURCE_MEMORY:I = 0x1

.field public static final SOURCE_STORAGE:I = 0x2


# instance fields
.field private mEnableFileCache:Z

.field private mEnableMemCache:Z

.field private mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

.field private final mLocker:Ljava/lang/Object;

.field private mMaxSize:I

.field private mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

.field private mMemCacheKey:I

.field private mMemCacheSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/CacheManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-lez p3, :cond_0

    new-instance v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;

    invoke-direct {v0, p1, p3}, Lcom/htc/opensense/album/util/ImageFileCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    iput-boolean v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/htc/opensense/album/util/CacheManager;->newMemoryCache(II)V

    return-void
.end method

.method private getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    iput v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    :cond_0
    return-object v0
.end method

.method private newMemoryCache(II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->removeMemoryCache(I)V

    sget-object v0, Lcom/htc/opensense/album/util/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[newMemoryCache] New cache key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-direct {v0, p2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    monitor-exit v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 8

    iget-boolean v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    invoke-direct {v1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;-><init>()V

    iput p3, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    iput-object p4, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    iput p1, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->type:I

    if-nez p4, :cond_0

    const-string v2, "CacheManager"

    const-string v4, "pushMemBitmap bmp=null"

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {v0, p2, v1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeMemBitmap(ILjava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeMemoryCache(I)V
    .locals 5

    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/opensense/album/util/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeMemoryCache] Remove cache key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchCache(I)Z
    .locals 4

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/opensense/album/util/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[switchCache] Switch key from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    :cond_0
    return-void
.end method

.method public enableCache(ZI)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/CacheManager;->release()V

    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    goto :goto_0
.end method

.method public freeInvisibleRange()V
    .locals 4

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/opensense/album/util/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[freeInvisibleRange] CacheKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visible range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->removeInvisibleRange()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheKey()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v0

    goto :goto_0
.end method

.method public onMediaMounted()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->onMediaMounted()V

    :cond_0
    return-void
.end method

.method public pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p6, p1, p2}, Lcom/htc/opensense/album/util/CacheManager;->pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_0
    if-nez v6, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->pull(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p6, p1, p2, v6}, Lcom/htc/opensense/album/util/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    :cond_1
    return-object v6

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V
    .locals 8

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    move-object v1, p4

    move-wide v2, p5

    move v4, p7

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p4, p2, p1}, Lcom/htc/opensense/album/util/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    iget-boolean v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->release()V

    :cond_1
    return-void
.end method

.method public removeCache(Ljava/lang/String;IJII)V
    .locals 6

    invoke-direct {p0, p6, p1}, Lcom/htc/opensense/album/util/CacheManager;->removeMemBitmap(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->remove(Ljava/lang/String;JII)V

    :cond_0
    return-void
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->switchCache(I)Z

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v2

    if-eq p2, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/CacheManager;->freeInvisibleRange()V

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/util/CacheManager;->newMemoryCache(II)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    goto :goto_1
.end method

.method public setRangeBoundary(I)V
    .locals 3

    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->setRangeBoundaries(II)V

    return-void
.end method

.method public setVisibleRange(II)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    iput p2, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    neg-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iput v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    :cond_0
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    sub-int v0, v1, v2

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_1

    iput v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    iget v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->setVisibleRange(II)V

    :cond_2
    return-void
.end method
