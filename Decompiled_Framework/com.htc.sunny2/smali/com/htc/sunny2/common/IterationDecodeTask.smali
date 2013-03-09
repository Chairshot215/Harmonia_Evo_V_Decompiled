.class public Lcom/htc/sunny2/common/IterationDecodeTask;
.super Lcom/htc/sunny2/common/IterationTask;
.source "IterationDecodeTask.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_TIMELIMITS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field private mColorDepth:I

.field private mDecodeFlags:I

.field private mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/sunny2/common/IterationTask;-><init>()V

    new-instance v0, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v0}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    return-void
.end method


# virtual methods
.method public getCacheItem()Lcom/htc/sunny2/common/CacheItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    return-void
.end method

.method public onEnd()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoHeight()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->getFullPhotoWidth()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    const-string v2, "BITMAP"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/ImageDecoder;->free()V

    goto :goto_0
.end method

.method public onIterate()Z
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v1, "[IterationDecodeTask][onIterate] CacheItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetup()V
    .locals 14

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] CacheItem is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mStartTime:J

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v13, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] Unknown source type"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v4, v4, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v5, v6, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v7, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] FilePath is empty"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v5, v0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v8, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v10, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move-object v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v11}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIIII)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] ParcelFileDescriptor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v7, v0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_3

    iget-object v6, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v9, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v10, v0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iget v11, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    iget v12, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    move v8, v3

    invoke-virtual/range {v6 .. v12}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIIII)Z

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/htc/sunny2/common/IterationDecodeTask;->TAG:Ljava/lang/String;

    const-string v3, "[IterationDecodeTask][onSetup] MediaData InputStream is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/ImageDecoder;->release()V

    invoke-super {p0}, Lcom/htc/sunny2/common/IterationTask;->release()V

    return-void
.end method

.method public setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    return-void
.end method

.method public setColorDepth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mColorDepth:I

    return-void
.end method

.method public setDecodeFlag(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mDecodeFlags:I

    return-void
.end method

.method public setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationDecodeTask;->mImageDecoder:Lcom/htc/sunny2/common/ImageDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/ImageDecoder;->setImageDecoderCallbackListener(Lcom/htc/sunny2/common/ImageDecoder$ImageDecoderCallbackListener;)V

    return-void
.end method
