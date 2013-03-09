.class Lcom/android/camera/ImageManager$VideoObject;
.super Lcom/android/camera/ImageManager$BaseImage;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$VideoList;JI)V
    .locals 9

    iput-object p1, p0, Lcom/android/camera/ImageManager$VideoObject;->this$0:Lcom/android/camera/ImageManager;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ImageManager$BaseImage;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V

    return-void
.end method

.method private getStringEntry(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/android/camera/ImageManager$VideoObject;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/android/camera/ImageManager$VideoObject;

    invoke-virtual {p1}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/camera/ImageManager$VideoObject;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATA:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 5

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$VideoList;->indexDateTaken()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getHeight()I
    .locals 4

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method public getLANGUAGE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TAGS:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 5

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$VideoList;->indexTimeStamp()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getWidth()I
    .locals 4

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method public imageId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

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

    iget-wide v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
