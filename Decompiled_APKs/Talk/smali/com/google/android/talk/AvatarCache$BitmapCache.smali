.class Lcom/google/android/talk/AvatarCache$BitmapCache;
.super Ljava/lang/Object;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AvatarCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    }
.end annotation


# instance fields
.field private final mLRU:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStrongCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStrongCacheSize:J

.field final synthetic this$0:Lcom/google/android/talk/AvatarCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AvatarCache;)V
    .locals 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->this$0:Lcom/google/android/talk/AvatarCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mSoftCache:Ljava/util/HashMap;

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    .line 361
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    .line 367
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    .locals 8
    .parameter "username"
    .parameter "b"
    .parameter "hash"
    .parameter "isSource"

    .prologue
    const/4 v6, -0x1

    .line 406
    iget-object v5, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v5

    .line 408
    const/4 v1, -0x1

    .line 411
    .local v1, pos:I
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 415
    if-nez v1, :cond_0

    .line 416
    monitor-exit v5

    .line 448
    :goto_0
    return-void

    .line 419
    :cond_0
    if-eq v1, v6, :cond_1

    .line 420
    iget-object v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 423
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 427
    if-ne v1, v6, :cond_2

    .line 431
    new-instance v0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;-><init>(Lcom/google/android/talk/AvatarCache$BitmapCache;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 438
    .local v0, cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    invoke-virtual {p0, p2}, Lcom/google/android/talk/AvatarCache$BitmapCache;->bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v2

    .line 439
    .local v2, size:J
    iget-object v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-wide v6, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    .line 444
    invoke-virtual {p0}, Lcom/google/android/talk/AvatarCache$BitmapCache;->pruneIfCacheExceededMax()V

    .line 447
    .end local v0           #cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    .end local v2           #size:J
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J
    .locals 3
    .parameter "drawable"

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 498
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1
.end method

.method clear(Ljava/lang/String;)V
    .locals 8
    .parameter "username"

    .prologue
    .line 384
    iget-object v3, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v3

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 389
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;

    .line 391
    .local v0, cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    if-eqz v0, :cond_0

    .line 392
    iget-wide v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    invoke-virtual {v0}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AvatarCache$BitmapCache;->bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 402
    .end local v0           #cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    :cond_1
    monitor-exit v3

    .line 403
    return-void

    .line 402
    .end local v1           #pos:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method clearAll()V
    .locals 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 377
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 378
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method get(Ljava/lang/String;)Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    .locals 6
    .parameter "username"

    .prologue
    .line 465
    iget-object v3, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v3

    .line 466
    const/4 v1, 0x0

    .line 469
    .local v1, cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;

    move-object v1, v0

    .line 485
    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->isSourceBitmap()Z

    move-result v5

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/google/android/talk/AvatarCache$BitmapCache;->add(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    .line 491
    :cond_0
    monitor-exit v3

    return-object v1

    .line 492
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method pruneIfCacheExceededMax()V
    .locals 10

    .prologue
    .line 451
    iget-object v5, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v5

    .line 452
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/AvatarCache$BitmapCache;->strongSize()J

    move-result-wide v6

    const-wide/32 v8, 0x96000

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 453
    iget-object v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 454
    .local v3, userToRemove:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;

    .line 455
    .local v2, cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    invoke-virtual {v2}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/talk/AvatarCache$BitmapCache;->bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v0

    .line 457
    .local v0, bitmapSize:J
    iget-wide v6, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    sub-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    goto :goto_0

    .line 459
    .end local v0           #bitmapSize:J
    .end local v2           #cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    .end local v3           #userToRemove:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    return-void
.end method

.method strongSize()J
    .locals 2

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache;->mStrongCacheSize:J

    return-wide v0
.end method
