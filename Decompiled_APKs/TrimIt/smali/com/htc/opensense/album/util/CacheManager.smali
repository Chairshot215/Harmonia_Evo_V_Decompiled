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

    .prologue
    .line 36
    const-class v0, Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/CacheManager;->LOG_TAG:Ljava/lang/String;

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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 443
    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    .line 444
    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    .line 445
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    .line 44
    iput-boolean v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    .line 45
    iput-boolean v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    .line 47
    if-lez p3, :cond_0

    .line 49
    new-instance v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;

    invoke-direct {v0, p1, p3}, Lcom/htc/opensense/album/util/ImageFileCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    .line 50
    iput-boolean v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    .line 52
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/htc/opensense/album/util/CacheManager;->newMemoryCache(II)V

    .line 53
    return-void
.end method

.method private getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 425
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    .line 427
    .local v0, cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 429
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    .line 430
    .restart local v0       #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    iput v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    .line 433
    :cond_0
    return-object v0
.end method

.method private newMemoryCache(II)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->removeMemoryCache(I)V

    .line 344
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

    .line 345
    new-instance v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-direct {v0, p2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    .line 346
    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    .line 347
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method private pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"
    .parameter "fileName"
    .parameter "pos"

    .prologue
    .line 392
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_1

    .line 394
    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 395
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 396
    .local v0, cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->pull(Ljava/lang/String;)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    move-result-object v1

    .line 399
    .local v1, item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    if-eqz v1, :cond_0

    .line 400
    iget-object v2, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    monitor-exit v3

    .line 405
    .end local v0           #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    .end local v1           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    :goto_0
    return-object v2

    .line 402
    .restart local v0       #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    :cond_0
    monitor-exit v3

    .line 405
    .end local v0           #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 402
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
    .line 370
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v2, :cond_2

    .line 372
    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 373
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 374
    .local v0, cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_1

    .line 376
    new-instance v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;

    invoke-direct {v1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;-><init>()V

    .line 377
    .local v1, item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    iput p3, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->position:I

    .line 378
    iput-object p4, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->bmp:Landroid/graphics/Bitmap;

    .line 379
    iput p1, v1, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;->type:I

    .line 380
    if-nez p4, :cond_0

    .line 381
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

    .line 384
    :cond_0
    invoke-virtual {v0, p2, v1}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .end local v1           #item:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount$CacheItem;
    :cond_1
    monitor-exit v3

    .line 388
    .end local v0           #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    :cond_2
    return-void

    .line 386
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
    .line 410
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_1

    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 415
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->remove(Ljava/lang/Object;)V

    .line 418
    :cond_0
    monitor-exit v2

    .line 420
    .end local v0           #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    :cond_1
    return-void

    .line 418
    .restart local v0       #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
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
    .line 328
    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 329
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

    .line 331
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->getMemCache(I)Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    move-result-object v0

    .line 332
    .local v0, cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    .line 335
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    monitor-exit v2

    .line 338
    return-void

    .line 337
    .end local v0           #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
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
    .line 286
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 288
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

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    .line 291
    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    .line 293
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    iput-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    .line 296
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

    .line 297
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
    .line 178
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    .line 180
    :cond_0
    return-void
.end method

.method public enableCache(ZI)V
    .locals 1
    .parameter "bEnable"
    .parameter "source"

    .prologue
    .line 158
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 160
    if-nez p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/CacheManager;->release()V

    .line 166
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 170
    iput-boolean p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    goto :goto_0
.end method

.method public freeInvisibleRange()V
    .locals 4

    .prologue
    .line 306
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 308
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

    .line 310
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-nez v0, :cond_0

    .line 311
    monitor-exit v1

    .line 324
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->removeInvisibleRange()V

    .line 323
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
    .line 356
    iget v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheKey:I

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, -0x1

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 128
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

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->onMediaMounted()V

    .line 245
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
    .line 91
    const/4 v6, 0x0

    .line 96
    .local v6, bmp:Landroid/graphics/Bitmap;
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p6, p1, p2}, Lcom/htc/opensense/album/util/CacheManager;->pullMemBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 99
    :cond_0
    if-nez v6, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    .line 101
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

    .line 110
    :goto_0
    if-eqz v6, :cond_1

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_1

    .line 111
    invoke-direct {p0, p6, p1, p2, v6}, Lcom/htc/opensense/album/util/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 118
    :cond_1
    return-object v6

    .line 102
    :catch_0
    move-exception v7

    .line 104
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
    .line 67
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 69
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

    .line 75
    :cond_0
    :goto_0
    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/htc/opensense/album/util/CacheManager;->pushMemBitmap(ILjava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 78
    :cond_1
    return-void

    .line 70
    :catch_0
    move-exception v7

    .line 71
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, cacheSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;>;"
    iget-object v4, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    monitor-enter v4

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCacheSet:Ljava/util/HashMap;

    .line 190
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
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

    check-cast v0, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    .line 194
    .local v0, cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    invoke-virtual {v0}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    goto :goto_0

    .line 190
    .end local v0           #cache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 197
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    iget-boolean v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->release()V

    .line 200
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
    .line 144
    invoke-direct {p0, p6, p1}, Lcom/htc/opensense/album/util/CacheManager;->removeMemBitmap(ILjava/lang/String;)V

    .line 146
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableFileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mFileCache:Lcom/htc/opensense/album/util/ImageFileCacheManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->remove(Ljava/lang/String;JII)V

    .line 148
    :cond_0
    return-void
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 3
    .parameter "key"
    .parameter "cacheSize"
    .parameter "keepVisible"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/CacheManager;->switchCache(I)Z

    .line 216
    const/4 v0, 0x1

    .line 218
    .local v0, doCreate:Z
    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->getCapacity()I

    move-result v2

    if-eq p2, v2, :cond_2

    const/4 v1, 0x1

    .line 223
    .local v1, sizeChanged:Z
    :goto_0
    if-nez v1, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 226
    if-eqz p3, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/CacheManager;->freeInvisibleRange()V

    .line 233
    .end local v1           #sizeChanged:Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/util/CacheManager;->newMemoryCache(II)V

    .line 237
    :cond_1
    return-void

    .line 220
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    .restart local v1       #sizeChanged:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->clear()V

    goto :goto_1
.end method

.method public setRangeBoundary(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 280
    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    .line 281
    iget-object v0, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->setRangeBoundaries(II)V

    .line 282
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 4
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    const/4 v3, 0x0

    .line 253
    iput p1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    .line 254
    iput p2, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    .line 256
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_0

    .line 258
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    neg-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    .line 259
    iput v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    .line 262
    :cond_0
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    if-le v1, v2, :cond_1

    .line 264
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    sub-int v0, v1, v2

    .line 265
    .local v0, extra:I
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMaxSize:I

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    .line 266
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    .line 268
    iget v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    if-gez v1, :cond_1

    .line 269
    iput v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    .line 272
    .end local v0           #extra:I
    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mEnableMemCache:Z

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/htc/opensense/album/util/CacheManager;->mMemCache:Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;

    iget v2, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleStart:I

    iget v3, p0, Lcom/htc/opensense/album/util/CacheManager;->mVisibleEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/album/util/MemoryCacheBitmapByCount;->setVisibleRange(II)V

    .line 276
    :cond_2
    return-void
.end method
