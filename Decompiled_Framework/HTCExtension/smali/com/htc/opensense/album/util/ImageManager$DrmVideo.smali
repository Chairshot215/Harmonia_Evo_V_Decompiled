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

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct/range {p0 .. p7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    return-void
.end method


# virtual methods
.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/DrmManager;->getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public forceMakeThumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v4, 0x0

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-nez v1, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v5

    if-nez v5, :cond_1

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

    :cond_1
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

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

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public getBoundary()I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexBoundary()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_1
    monitor-exit v0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexContentId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    monitor-exit v0

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentOffset()I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexContentOffset()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_1
    monitor-exit v0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDateTaken()J
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDrmType()I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->indexDeliveryType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_1
    monitor-exit v0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    monitor-exit v0

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isGif()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

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

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmVideo;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
