.class public Lcom/htc/sunny2/common/CachePuller;
.super Ljava/lang/Object;
.source "CachePuller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/CachePuller$STATE;
    }
.end annotation


# static fields
.field private static final LTAG:Ljava/lang/String; = "CachePuller"


# instance fields
.field cacheIdentifier:Ljava/lang/String;

.field cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field cacheSet:I

.field cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field cacheTimeStamp:J

.field itemIndex:I

.field originalFileSize:I

.field state:Lcom/htc/sunny2/common/CachePuller$STATE;

.field targetCacheSource:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    iput v2, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    iput v2, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    iput v2, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    iput-object v3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_0

    const-string v0, "CachePuller"

    const-string v1, "free() - Cancel pull task"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-eqz v0, :cond_1

    iput-object v4, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    iput v3, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    iput v3, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    iput v3, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v2, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-eq v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v1, :cond_1

    const-string v1, "CachePuller"

    const-string v2, "getBitmap() NG - null cacheTask"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public iterate(J)Z
    .locals 9

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->NOT_SETUP:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_BEGIN:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-eqz v0, :cond_3

    const-string v0, "CachePuller"

    const-string v1, "iterate() NG - cacheItem is not null when begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    iget-object v2, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    iget v5, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    int-to-long v5, v5

    iget v7, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v2, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v8

    const/4 v0, 0x1

    if-eq v8, v0, :cond_4

    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    :cond_4
    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    sget-object v1, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_ITERATE:Lcom/htc/sunny2/common/CachePuller$STATE;

    if-ne v0, v1, :cond_b

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    if-ne v8, v0, :cond_7

    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const-string v0, "CachePuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iterate() NG - pull "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v8

    const/4 v0, 0x2

    if-ne v8, v0, :cond_9

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x4

    if-ne v8, v0, :cond_a

    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->SUCCEEDED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v0, "CachePuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iterate() NG - executeCacheTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->FAILED:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIII)Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CachePuller;->free()V

    if-nez p1, :cond_0

    const-string v0, "CachePuller"

    const-string v1, "setup() NG - null cacheManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/common/CachePuller;->free()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    iput-object p1, p0, Lcom/htc/sunny2/common/CachePuller;->cacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iput p2, p0, Lcom/htc/sunny2/common/CachePuller;->cacheSet:I

    iput-object p3, p0, Lcom/htc/sunny2/common/CachePuller;->cacheIdentifier:Ljava/lang/String;

    iput-wide p4, p0, Lcom/htc/sunny2/common/CachePuller;->cacheTimeStamp:J

    iput p6, p0, Lcom/htc/sunny2/common/CachePuller;->originalFileSize:I

    iput p7, p0, Lcom/htc/sunny2/common/CachePuller;->itemIndex:I

    iput p8, p0, Lcom/htc/sunny2/common/CachePuller;->targetCacheSource:I

    sget-object v0, Lcom/htc/sunny2/common/CachePuller$STATE;->PULL_BEGIN:Lcom/htc/sunny2/common/CachePuller$STATE;

    iput-object v0, p0, Lcom/htc/sunny2/common/CachePuller;->state:Lcom/htc/sunny2/common/CachePuller$STATE;

    const/4 v0, 0x1

    goto :goto_0
.end method
