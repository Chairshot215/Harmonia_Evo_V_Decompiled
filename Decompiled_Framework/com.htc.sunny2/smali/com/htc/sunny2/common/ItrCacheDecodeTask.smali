.class public Lcom/htc/sunny2/common/ItrCacheDecodeTask;
.super Lcom/htc/sunny2/common/IterationTask;
.source "ItrCacheDecodeTask.java"


# static fields
.field private static final CANCEL_TASK:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_TIME_LIMIT:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field private mIsSetup:Z

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field private mResultCode:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTask;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    return-void
.end method

.method private getTimeLimit()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private shouldContinue()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isFailed()Z
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v2, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onIterate()Z
    .locals 3

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->shouldContinue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getTimeLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->shouldContinue()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 8

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mStartTime:J

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    if-nez v3, :cond_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    iget-object v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    iget-object v4, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/16 v5, 0x11

    invoke-direct {p0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->getTimeLimit()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onSetup] Exception: Get original image width height error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mResultCode:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIsSetup:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    return-void
.end method

.method public setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-void
.end method

.method public setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    return-void
.end method
