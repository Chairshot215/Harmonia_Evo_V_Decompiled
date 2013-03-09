.class public final Lcom/android/mms/wrapper/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/wrapper/CacheManager$CacheResult;
    }
.end annotation


# static fields
.field public static final CACHE_WSP_PREFIX_ID:Ljava/lang/String; = "wsp;"

.field static final HEADER_KEY_IFMODIFIEDSINCE:Ljava/lang/String; = "if-modified-since"

.field static final HEADER_KEY_IFNONEMATCH:Ljava/lang/String; = "if-none-match"

.field private static final LOGTAG:Ljava/lang/String; = "cache"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final NO_STORE:Ljava/lang/String; = "no-store"

.field public static final PUSH_CO_INVALID_OBJECT:I = 0x1

.field public static final PUSH_CO_INVALID_SERVICE:I = 0x2

.field static mCacheIsReady:Z

.field private static mCacheMaxFileCount:I

.field private static mCacheMaxTotalSize:I

.field private static mCacheTotalSize:I

.field private static mDeletedUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/wrapper/CacheManager$CacheResult;",
            ">;"
        }
    .end annotation
.end field

.field private static mDisabled:Z

.field private static final mDoReport:Z

.field private static mExpiredCount:I

.field private static mHitCount:I

.field private static mMissCount:I

.field private static mNeedValidationCount:I

.field private static mNeedsSync:Z

.field private static mUrlIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/wrapper/CacheManager$CacheResult;",
            ">;"
        }
    .end annotation
.end field

.field static sCacheMaxObjectSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    const/high16 v0, 0x4

    sput v0, Lcom/android/mms/wrapper/CacheManager;->sCacheMaxObjectSize:I

    .line 53
    const/high16 v0, 0x20

    sput v0, Lcom/android/mms/wrapper/CacheManager;->mCacheMaxTotalSize:I

    .line 55
    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/wrapper/CacheManager;->mCacheMaxFileCount:I

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    sget v1, Lcom/android/mms/wrapper/CacheManager;->mCacheMaxFileCount:I

    const/high16 v2, 0x3f40

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    .line 64
    sput-boolean v3, Lcom/android/mms/wrapper/CacheManager;->mCacheIsReady:Z

    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/wrapper/CacheManager;->mDeletedUrls:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static addToBucket(Lcom/android/mms/wrapper/CacheManager$CacheResult;[I[I[I)V
    .locals 5
    .parameter "ret"
    .parameter "total"
    .parameter "hitall"
    .parameter "hit"

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, index:I
    const/16 v0, 0x100

    .line 648
    .local v0, base:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 649
    add-int/lit8 v1, v1, 0x1

    .line 650
    mul-int/lit8 v0, v0, 0x2

    .line 651
    const/high16 v2, 0x4

    if-le v0, v2, :cond_0

    .line 653
    :cond_1
    aget v2, p1, v1

    iget v3, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->hitCount:I

    iget v4, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->hitCountWhileDeleted:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 654
    aget v2, p2, v1

    iget v3, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->hitCount:I

    iget v4, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->hitCountWhileDeleted:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, p2, v1

    .line 655
    aget v2, p3, v1

    iget v3, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->hitCount:I

    add-int/2addr v2, v3

    aput v2, p3, v1

    .line 656
    return-void
.end method

.method public static cacheDisabled()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mDisabled:Z

    return v0
.end method

.method public static cacheEmpty()Z
    .locals 1

    .prologue
    .line 428
    sget v0, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createCacheFile(Ljava/lang/String;Landroid/net/http/Headers;)Lcom/android/mms/wrapper/CacheManager$CacheResult;
    .locals 3
    .parameter "url"
    .parameter "headers"

    .prologue
    .line 262
    invoke-static {p0}, Lcom/android/mms/wrapper/CacheManager;->skipCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const/4 v0, 0x0

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    invoke-static {p1}, Lcom/android/mms/wrapper/CacheManager;->parseHeaders(Landroid/net/http/Headers;)Lcom/android/mms/wrapper/CacheManager$CacheResult;

    move-result-object v0

    .line 266
    .local v0, ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    if-eqz v0, :cond_0

    .line 268
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->localPath:J

    .line 270
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Lcom/android/mms/wrapper/CacheManager$CacheResult;
    .locals 9
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/mms/wrapper/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 181
    invoke-static {p0}, Lcom/android/mms/wrapper/CacheManager;->skipCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 251
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :cond_1
    sget-boolean v5, Lcom/android/mms/wrapper/CacheManager;->mCacheIsReady:Z

    if-nez v5, :cond_2

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 186
    .local v2, time:J
    const-class v5, Lcom/android/mms/wrapper/CacheManager;

    monitor-enter v5

    .line 194
    :try_start_0
    const-class v6, Lcom/android/mms/wrapper/CacheManager;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    const-string v5, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CacheManager waited "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms to get old caches from FLASH"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v2           #time:J
    :cond_2
    sget-object v5, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v5

    .line 207
    :try_start_2
    sget-object v6, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    .line 208
    .local v1, result:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    if-nez v1, :cond_3

    move-object v1, v4

    .line 217
    goto :goto_0

    .line 195
    .end local v1           #result:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    .restart local v2       #time:J
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "cache"

    const-string v7, "Caught exception while waiting for CacheSyncManager to finish initialization"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 208
    .end local v2           #time:J
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 223
    .restart local v1       #result:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    :cond_3
    if-eqz p1, :cond_0

    iget-wide v5, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    iget-wide v5, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 224
    iget-object v5, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v5, :cond_4

    move-object v1, v4

    .line 229
    goto :goto_0

    .line 233
    :cond_4
    iget-object v4, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 234
    const-string v4, "if-none-match"

    iget-object v5, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_5
    iget-object v4, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 236
    const-string v4, "if-modified-since"

    iget-object v5, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method static getCacheMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/wrapper/CacheManager$CacheResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v1, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v1

    .line 124
    :try_start_0
    sget-object v0, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static makeRoom()V
    .locals 12

    .prologue
    .line 534
    sget v6, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    sget v7, Lcom/android/mms/wrapper/CacheManager;->mCacheMaxTotalSize:I

    if-gt v6, v7, :cond_0

    sget-object v6, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    sget v7, Lcom/android/mms/wrapper/CacheManager;->mCacheMaxFileCount:I

    if-ne v6, v7, :cond_3

    .line 541
    :cond_0
    sget-object v7, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v7

    .line 542
    const-wide v8, 0x3feccccccccccccdL

    :try_start_0
    sget-object v6, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    int-to-double v10, v6

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 543
    .local v4, toStay:J
    sget-object v6, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 544
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 545
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 546
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_1

    .line 547
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 548
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 563
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 550
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    .restart local v3       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 551
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    .line 552
    .local v2, ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    sget v6, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    iget-object v8, v2, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    sub-int/2addr v6, v8

    sput v6, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    .line 560
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 563
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    .end local v2           #ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :cond_3
    return-void
.end method

.method static needsSync()Z
    .locals 2

    .prologue
    .line 134
    sget-object v1, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mNeedsSync:Z

    monitor-exit v1

    return v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static onDoneSync()V
    .locals 2

    .prologue
    .line 143
    sget-object v1, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v1

    .line 144
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mNeedsSync:Z

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static parseHeaders(Landroid/net/http/Headers;)Lcom/android/mms/wrapper/CacheManager$CacheResult;
    .locals 23
    .parameter "headers"

    .prologue
    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v13

    .line 434
    .local v13, length:J
    :try_start_0
    sget v19, Lcom/android/mms/wrapper/CacheManager;->sCacheMaxObjectSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v19, v13, v19

    if-lez v19, :cond_1

    .line 438
    const/4 v15, 0x0

    .line 530
    :cond_0
    :goto_0
    return-object v15

    .line 440
    :catch_0
    move-exception v19

    .line 444
    :cond_1
    new-instance v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    invoke-direct {v15}, Lcom/android/mms/wrapper/CacheManager$CacheResult;-><init>()V

    .line 446
    .local v15, ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Headers;->getExpires()Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, expires:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 450
    :try_start_1
    invoke-static {v8}, Lcom/android/mms/wrapper/HttpDateTime;->parse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Headers;->getLastModified()Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, lastModified:Ljava/lang/String;
    if-eqz v10, :cond_3

    iput-object v10, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 459
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Headers;->getEtag()Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, etag:Ljava/lang/String;
    if-eqz v6, :cond_4

    iput-object v6, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 462
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Headers;->getCacheControl()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, cacheControl:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 464
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[ ,;]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, controls:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_9

    .line 466
    const-string v19, "no-store"

    aget-object v20, v3, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 467
    const/4 v15, 0x0

    goto :goto_0

    .line 451
    .end local v2           #cacheControl:Ljava/lang/String;
    .end local v3           #controls:[Ljava/lang/String;
    .end local v6           #etag:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #lastModified:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 452
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v19, "cache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal expires: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 472
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v2       #cacheControl:Ljava/lang/String;
    .restart local v3       #controls:[Ljava/lang/String;
    .restart local v6       #etag:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #lastModified:Ljava/lang/String;
    :cond_5
    const-string v19, "no-cache"

    aget-object v20, v3, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 473
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    .line 465
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 474
    :cond_7
    aget-object v19, v3, v9

    const-string v20, "max-age"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 475
    aget-object v19, v3, v9

    const/16 v20, 0x3d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 476
    .local v18, separator:I
    if-gez v18, :cond_8

    .line 477
    aget-object v19, v3, v9

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 478
    :cond_8
    if-lez v18, :cond_6

    .line 480
    :try_start_2
    aget-object v19, v3, v9

    add-int/lit8 v20, v18, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 482
    .local v16, sec:J
    const-wide/16 v19, 0x1

    cmp-long v19, v16, v19

    if-lez v19, :cond_6

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v21, v21, v16

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 485
    .end local v16           #sec:J
    :catch_2
    move-exception v7

    .line 486
    .local v7, ex:Ljava/lang/NumberFormatException;
    const-string v19, "cache"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "exception in parseHeaders for max-age:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v3, v9

    add-int/lit8 v22, v18, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    goto :goto_3

    .line 499
    .end local v3           #controls:[Ljava/lang/String;
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    .end local v9           #i:I
    .end local v18           #separator:I
    :cond_9
    const-string v19, "no-cache"

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Headers;->getPragma()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 500
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    .line 506
    :cond_a
    iget-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_0

    .line 507
    iget-object v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/32 v21, 0x5265c00

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0

    .line 518
    :cond_b
    iget-object v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/wrapper/HttpDateTime;->parse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 519
    .local v11, lastmod:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v4, v19, v11

    .line 520
    .local v4, difference:J
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_c

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x5

    div-long v21, v4, v21

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0

    .line 525
    :cond_c
    iput-wide v11, v15, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    goto/16 :goto_0
.end method

.method static prepare()V
    .locals 2

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mCacheIsReady:Z

    if-eqz v0, :cond_0

    .line 153
    const-class v1, Lcom/android/mms/wrapper/CacheManager;

    monitor-enter v1

    .line 154
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mCacheIsReady:Z

    .line 155
    monitor-exit v1

    .line 157
    :cond_0
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeAllCacheFiles()Z
    .locals 2

    .prologue
    .line 414
    sget-object v1, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v1

    .line 415
    :try_start_0
    sget-object v0, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 416
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    .line 417
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-static {}, Lcom/android/mms/wrapper/CacheSyncManager;->getInstance()Lcom/android/mms/wrapper/CacheSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/wrapper/CacheSyncManager;->removeAll()V

    .line 421
    const/4 v0, 0x1

    return v0

    .line 417
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static removeFilesFromRam(Ljava/lang/String;I)Z
    .locals 11
    .parameter "url"
    .parameter "flag"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 341
    invoke-static {p0}, Lcom/android/mms/wrapper/CacheManager;->skipCache(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 400
    :goto_0
    return v6

    .line 343
    :cond_0
    const-string v8, "cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeFilesFromRam:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v8, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v8

    .line 348
    :try_start_0
    sget-object v9, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v9, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    .line 349
    .local v3, result:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    if-nez v3, :cond_1

    .line 356
    if-ne p1, v7, :cond_2

    .line 358
    monitor-exit v8

    goto :goto_0

    .line 399
    .end local v3           #result:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 361
    .restart local v3       #result:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    :cond_1
    :try_start_1
    sget v6, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    iget-object v9, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    sub-int/2addr v6, v9

    sput v6, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    .line 362
    sget-object v6, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_2
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 373
    const-string v6, "cache"

    const-string v9, "PUSH_CO_INVALID_SERVICE"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v6, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 375
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 376
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 377
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 380
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 381
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    .line 382
    .local v4, ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    sget v6, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    iget-object v9, v4, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    sub-int/2addr v6, v9

    sput v6, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    .line 385
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v7, :cond_3

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 399
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    .line 400
    goto/16 :goto_0
.end method

.method private static report()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 591
    const/16 v8, 0xd

    new-array v6, v8, [I

    .line 592
    .local v6, total:[I
    const/16 v8, 0xd

    new-array v1, v8, [I

    .line 593
    .local v1, hitall:[I
    const/16 v8, 0xd

    new-array v0, v8, [I

    .line 594
    .local v0, hit:[I
    const/4 v7, 0x0

    .line 596
    .local v7, totalSize:I
    sget-object v8, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 597
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 598
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 599
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 600
    .local v3, map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    .line 601
    .local v4, ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    invoke-static {v4, v6, v1, v0}, Lcom/android/mms/wrapper/CacheManager;->addToBucket(Lcom/android/mms/wrapper/CacheManager$CacheResult;[I[I[I)V

    .line 602
    iget-object v8, v4, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    add-int/2addr v7, v8

    .line 603
    goto :goto_0

    .line 604
    .end local v3           #map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    .end local v4           #ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    :cond_0
    sget-object v8, Lcom/android/mms/wrapper/CacheManager;->mDeletedUrls:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 605
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 606
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 607
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 608
    .restart local v3       #map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    .line 609
    .restart local v4       #ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    invoke-static {v4, v6, v1, v0}, Lcom/android/mms/wrapper/CacheManager;->addToBucket(Lcom/android/mms/wrapper/CacheManager$CacheResult;[I[I[I)V

    .line 610
    iget-object v8, v4, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    add-int/2addr v7, v8

    .line 611
    goto :goto_1

    .line 613
    .end local v3           #map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    .end local v4           #ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    :cond_1
    const-string v8, "cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cache hit "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/mms/wrapper/CacheManager;->mHitCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/mms/wrapper/CacheManager;->mNeedValidationCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " needValidate, miss "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/mms/wrapper/CacheManager;->mMissCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/mms/wrapper/CacheManager;->mExpiredCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " expired."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v8, "cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current cache entries: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; deleted cache entries: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/wrapper/CacheManager;->mDeletedUrls:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v8, "cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current cache size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; total cahe size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v8, "cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "total map:\n<256: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 256:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 512:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 1k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v14

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 2k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v15

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 4k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 8k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x6

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 16k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x7

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 32k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x8

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 64k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x9

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 128k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 256k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xb

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; >256k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xc

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v8, "cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "potential hit map:\n<256: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 256:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 512:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 1k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v14

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 2k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v15

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 4k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 8k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x6

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 16k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x7

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 32k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x8

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 64k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x9

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 128k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 256k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xb

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; >256k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xc

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v8, "cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "real hit map:\n<256: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v0, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 256:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v0, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 512:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v0, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 1k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v0, v14

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 2k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v0, v15

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 4k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 8k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x6

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 16k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x7

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 32k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x8

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 64k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x9

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 128k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; 256k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xb

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; >256k:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xc

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sput v11, Lcom/android/mms/wrapper/CacheManager;->mHitCount:I

    .line 638
    sput v11, Lcom/android/mms/wrapper/CacheManager;->mMissCount:I

    .line 639
    sput v11, Lcom/android/mms/wrapper/CacheManager;->mExpiredCount:I

    .line 640
    sput v11, Lcom/android/mms/wrapper/CacheManager;->mNeedValidationCount:I

    .line 641
    sget-object v8, Lcom/android/mms/wrapper/CacheManager;->mDeletedUrls:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 642
    return-void
.end method

.method public static saveCacheFile(Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;Z)V
    .locals 5
    .parameter "url"
    .parameter "cacheRet"
    .parameter "fromDatabase"

    .prologue
    .line 283
    iget-object v2, p1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    sget v3, Lcom/android/mms/wrapper/CacheManager;->sCacheMaxObjectSize:I

    if-le v2, v3, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    if-nez p2, :cond_2

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->updateTime:J

    .line 296
    :cond_2
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->makeRoom()V

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, old:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    sget-object v3, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    monitor-enter v3

    .line 301
    if-eqz p2, :cond_4

    .line 304
    :try_start_0
    sget-object v2, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 305
    sget-object v2, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_3
    :goto_1
    sget v2, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    iget-object v4, p1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v2, v4

    sput v2, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    .line 312
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    if-eqz v1, :cond_0

    .line 323
    sget v2, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    iget-object v3, v1, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int/2addr v2, v3

    sput v2, Lcom/android/mms/wrapper/CacheManager;->mCacheTotalSize:I

    goto :goto_0

    .line 308
    :cond_4
    :try_start_1
    sget-object v2, Lcom/android/mms/wrapper/CacheManager;->mUrlIds:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    move-object v1, v0

    .line 309
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/wrapper/CacheManager;->mNeedsSync:Z

    goto :goto_1

    .line 312
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static setCacheDisabled(Z)V
    .locals 2
    .parameter "disabled"

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mDisabled:Z

    if-ne p0, v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sput-boolean p0, Lcom/android/mms/wrapper/CacheManager;->mDisabled:Z

    .line 104
    sget-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mDisabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->removeAllCacheFiles()Z

    goto :goto_0
.end method

.method private static skipCache(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 572
    sget-boolean v2, Lcom/android/mms/wrapper/CacheManager;->mDisabled:Z

    if-eqz v2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v1

    .line 575
    :cond_1
    const-string v2, "wsp;"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "wsp;"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, tempUrl:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/android/mms/wrapper/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #tempUrl:Ljava/lang/String;
    :cond_2
    move-object v0, p0

    .line 575
    goto :goto_1
.end method

.method static wakeUp()V
    .locals 2

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mCacheIsReady:Z

    if-nez v0, :cond_0

    .line 164
    const-class v1, Lcom/android/mms/wrapper/CacheManager;

    monitor-enter v1

    .line 165
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/mms/wrapper/CacheManager;->mCacheIsReady:Z

    .line 166
    const-class v0, Lcom/android/mms/wrapper/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 167
    monitor-exit v1

    .line 169
    :cond_0
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
