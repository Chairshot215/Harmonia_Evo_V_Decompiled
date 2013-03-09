.class public Lcom/htc/opensense2/album/cache/CacheManager;
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

.field private mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

.field private final mLocker:Ljava/lang/Object;

.field private mMaxSize:I

.field private mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

.field private mMemCacheKey:I

.field private mMemCacheSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/htc/opensense2/album/cache/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "memCacheSize"
    .parameter "fileCacheSize"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 448
    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 449
    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    .line 49
    iput-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    .line 50
    iput-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    .line 52
    if-lez p3, :cond_0

    .line 54
    new-instance v0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-direct {v0, p1, p3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    .line 55
    iput-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    .line 57
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->newMemoryCache(II)V

    .line 58
    return-void
.end method

.method private getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 430
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 432
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 434
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 435
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 438
    :cond_0
    return-object v0
.end method

.method private newMemoryCache(II)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->removeMemoryCache(I)V

    .line 349
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-direct {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 351
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 352
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method private pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"
    .parameter "fileName"
    .parameter "pos"

    .prologue
    .line 397
    iget-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_1

    .line 399
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 400
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 401
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v1

    .line 404
    .local v1, item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v1, :cond_0

    .line 405
    iget-object v2, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    monitor-exit v3

    .line 410
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v1           #item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :goto_0
    return-object v2

    .line 407
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_0
    monitor-exit v3

    .line 410
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "key"
    .parameter "fileName"
    .parameter "pos"
    .parameter "bmp"

    .prologue
    .line 375
    iget-boolean v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_2

    .line 377
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 378
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 379
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_1

    .line 381
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;-><init>()V

    .line 382
    .local v1, item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    iput p3, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->position:I

    .line 383
    iput-object p4, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    .line 384
    iput p1, v1, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;->type:I

    .line 385
    if-nez p4, :cond_0

    .line 386
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

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    :cond_0
    invoke-virtual {v0, p2, v1}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .end local v1           #item:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount$CacheItem;
    :cond_1
    monitor-exit v3

    .line 393
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_2
    return-void

    .line 391
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeMemBitmap(ILjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "fileName"

    .prologue
    .line 415
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_1

    .line 417
    const/4 v0, 0x0

    .line 419
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 420
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    .line 423
    :cond_0
    monitor-exit v2

    .line 425
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :cond_1
    return-void

    .line 423
    .restart local v0       #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeMemoryCache(I)V
    .locals 5
    .parameter "key"

    .prologue
    .line 333
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 334
    :try_start_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeMemoryCache] Remove cache key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->getMemCache(I)Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 337
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 340
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    monitor-exit v2

    .line 343
    return-void

    .line 342
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchCache(I)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[switchCache] Switch key from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 296
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    .line 298
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
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

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    .line 185
    :cond_0
    return-void
.end method

.method public enableCache(ZI)V
    .locals 1
    .parameter "bEnable"
    .parameter "source"

    .prologue
    .line 163
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 165
    if-nez p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/CacheManager;->release()V

    .line 171
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 175
    iput-boolean p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    goto :goto_0
.end method

.method public freeInvisibleRange()V
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[freeInvisibleRange] CacheKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visible range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_0

    .line 316
    monitor-exit v1

    .line 329
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->removeInvisibleRange()V

    .line 328
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

    .prologue
    .line 361
    iget v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheKey:I

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, -0x1

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v0

    goto :goto_0
.end method

.method public onMediaMounted()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->onMediaMounted()V

    .line 250
    :cond_0
    return-void
.end method

.method public pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"
    .parameter "source"

    .prologue
    .line 96
    const/4 v6, 0x0

    .line 101
    .local v6, bmp:Landroid/graphics/Bitmap;
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p6, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 104
    :cond_0
    if-nez v6, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->pull(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 115
    :goto_0
    if-eqz v6, :cond_1

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, p6, p1, p2, v6}, Lcom/htc/opensense2/album/cache/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 123
    :cond_1
    return-object v6

    .line 107
    :catch_0
    move-exception v7

    .line 109
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V
    .locals 8
    .parameter "bmp"
    .parameter "pos"
    .parameter "key"
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "source"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p4

    move-wide v2, p5

    move v4, p7

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 83
    :cond_1
    return-void

    .line 75
    :catch_0
    move-exception v7

    .line 76
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, cacheSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;>;"
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    monitor-enter v4

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 195
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    .line 199
    .local v0, cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_0

    .line 195
    .end local v0           #cache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 202
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    iget-boolean v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->release()V

    .line 205
    :cond_1
    return-void
.end method

.method public removeCache(Ljava/lang/String;IJII)V
    .locals 6
    .parameter "fileName"
    .parameter "pos"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "key"

    .prologue
    .line 149
    invoke-direct {p0, p6, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->removeMemBitmap(ILjava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mFileCache:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->remove(Ljava/lang/String;JII)V

    .line 153
    :cond_0
    return-void
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"
    .parameter "keepVisible"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/cache/CacheManager;->switchCache(I)Z

    .line 221
    const/4 v0, 0x1

    .line 223
    .local v0, doCreate:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v2

    if-eq p2, v2, :cond_2

    const/4 v1, 0x1

    .line 228
    .local v1, sizeChanged:Z
    :goto_0
    if-nez v1, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 231
    if-eqz p3, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/htc/opensense2/album/cache/CacheManager;->freeInvisibleRange()V

    .line 238
    .end local v1           #sizeChanged:Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/cache/CacheManager;->newMemoryCache(II)V

    .line 242
    :cond_1
    return-void

    .line 225
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 234
    .restart local v1       #sizeChanged:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->clear()V

    goto :goto_1
.end method

.method public setRangeBoundary(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 285
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    .line 286
    iget-object v0, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setRangeBoundaries(II)V

    .line 287
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 4
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    const/4 v3, 0x0

    .line 258
    iput p1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 259
    iput p2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 261
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_0

    .line 263
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    neg-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 264
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 267
    :cond_0
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    if-le v1, v2, :cond_1

    .line 269
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    sub-int v0, v1, v2

    .line 270
    .local v0, extra:I
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMaxSize:I

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    .line 271
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 273
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_1

    .line 274
    iput v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    .line 277
    .end local v0           #extra:I
    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mMemCache:Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;

    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleStart:I

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheManager;->mVisibleEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBitmapByCount;->setVisibleRange(II)V

    .line 281
    :cond_2
    return-void
.end method
