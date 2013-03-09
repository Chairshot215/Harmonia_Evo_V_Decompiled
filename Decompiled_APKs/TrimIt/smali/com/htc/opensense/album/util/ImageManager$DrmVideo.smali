.class Lcom/htc/opensense/album/util/ImageManager$DrmVideo;
.super Lcom/htc/opensense/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "ctx"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 4331
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    .line 4332
    invoke-direct/range {p0 .. p7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    .line 4334
    return-void
.end method


# virtual methods
.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 4455
    const/4 v1, 0x0

    .line 4457
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 4460
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/DrmManager;->getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4465
    :cond_0
    :goto_0
    return-object v1

    .line 4462
    :catch_0
    move-exception v0

    .line 4463
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 4470
    const/4 v0, 0x0

    return-object v0
.end method

.method public forceMakeThumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "doConsume"

    .prologue
    const/4 v4, 0x0

    .line 4337
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4338
    .local v1, mmr:Landroid/media/MediaMetadataRetriever;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 4355
    :goto_0
    return-object v3

    .line 4340
    :cond_0
    const/4 v3, 0x0

    .line 4341
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 4342
    .local v2, newUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v5

    if-nez v5, :cond_1

    .line 4343
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/htc/opensense/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 4344
    :cond_1
    if-nez v2, :cond_2

    move-object v3, v4

    .line 4345
    goto :goto_0

    .line 4348
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4349
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4353
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 4350
    :catch_0
    move-exception v0

    .line 4351
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[forceMakeThumbBitmap] Got exception during getFrameAtTime video frame, uri = ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4353
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public getBoundary()I
    .locals 3

    .prologue
    .line 4428
    const/4 v1, -0x1

    .line 4429
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4430
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 4436
    :goto_0
    return v2

    .line 4431
    :cond_0
    monitor-enter v0

    .line 4432
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4433
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexBoundary()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4435
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 4436
    goto :goto_0

    .line 4435
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4416
    const/4 v1, 0x0

    .line 4417
    .local v1, contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4418
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 4424
    :goto_0
    return-object v2

    .line 4419
    :cond_0
    monitor-enter v0

    .line 4420
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4421
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexContentId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4423
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 4424
    goto :goto_0

    .line 4423
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentOffset()I
    .locals 3

    .prologue
    .line 4391
    const/4 v1, -0x1

    .line 4392
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4393
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 4399
    :goto_0
    return v2

    .line 4394
    :cond_0
    monitor-enter v0

    .line 4395
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4396
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexContentOffset()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4398
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 4399
    goto :goto_0

    .line 4398
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDateTaken()J
    .locals 3

    .prologue
    .line 4443
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 4448
    :goto_0
    return-wide v1

    .line 4444
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4445
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 4446
    :cond_1
    monitor-enter v0

    .line 4447
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4448
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 4449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDrmType()I
    .locals 3

    .prologue
    .line 4379
    const/4 v1, -0x1

    .line 4380
    .local v1, value:I
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4381
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 4387
    :goto_0
    return v2

    .line 4382
    :cond_0
    monitor-enter v0

    .line 4383
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4384
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexDeliveryType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4386
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 4387
    goto :goto_0

    .line 4386
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4403
    const/4 v1, 0x0

    .line 4404
    .local v1, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4405
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 4411
    :goto_0
    return-object v2

    .line 4406
    :cond_0
    monitor-enter v0

    .line 4407
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4408
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4410
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 4411
    goto :goto_0

    .line 4410
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 4373
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 4368
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 4359
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-static {v0, v1, v2}, Lcom/htc/opensense/album/util/MediaUtils;->compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
