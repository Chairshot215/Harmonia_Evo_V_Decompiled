.class public Lcom/htc/opensense/album/util/ImageManager$VideoObject;
.super Lcom/htc/opensense/album/util/ImageManager$BaseImage;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoObject"
.end annotation


# instance fields
.field protected bCorrupt:Z

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$VideoList;JI)V
    .locals 9

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;-><init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mWidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->bCorrupt:Z

    return-void
.end method

.method private getStringEntry(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

.method private setStringEntry(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStringEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic commitChanges()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->commitChanges()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/htc/opensense/album/util/ImageManager$VideoObject;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$VideoObject;

    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fileCorrupted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->bCorrupt:Z

    return-void
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mHeight:I

    :cond_0
    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fullSizeImageData] Got exception during openInputStream, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public bridge synthetic fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBucketName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;->INDEX_DATA:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateAdded()J
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDateAdded()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDateModified()J
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDateModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v4, -0x1

    :goto_0
    return-wide v4

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$VideoList;->indexDateTaken()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_1
    monitor-exit v0

    move-wide v4, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bridge synthetic getDegreesRotated()I
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->isCorrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget v4, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mHeight:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mHeight:I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_2
    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mHeight:I

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "ImageManager"

    const-string v5, "video get height fail"

    invoke-static {v4, v5, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fileCorrupted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3
.end method

.method public bridge synthetic getIsPrivate()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getIsPrivate()Z

    move-result v0

    return v0
.end method

.method public getLANGUAGE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLatitude()D
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLongitude()D
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRow()I
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSize()J
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSortBase()J
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getSortBase()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;->INDEX_TAGS:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v4, -0x1

    :goto_0
    return-wide v4

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$VideoList;->indexTimeStamp()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_1
    monitor-exit v0

    move-wide v4, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->isCorrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget v4, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mWidth:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mWidth:I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_2
    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->mWidth:I

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "ImageManager"

    const-string v5, "video get width fail"

    invoke-static {v4, v5, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fileCorrupted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3
.end method

.method public bridge synthetic hasLatLong()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->hasLatLong()Z

    move-result v0

    return v0
.end method

.method public imageId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public isCorrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->bCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isFavorite()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isGif()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSharable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->bCorrupt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onRemove()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->onRemove()V

    return-void
.end method

.method public resetFileCorrupted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->bCorrupt:Z

    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setIsPrivate(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setIsPrivate(Z)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPicasaId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setPicasaId(Ljava/lang/String;)V

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tags"

    invoke-direct {p0, v0, p1}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$VideoObject;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbUri()Landroid/net/Uri;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->thumbUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
