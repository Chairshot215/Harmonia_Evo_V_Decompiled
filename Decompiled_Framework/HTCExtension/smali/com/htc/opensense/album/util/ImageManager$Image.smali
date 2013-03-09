.class public Lcom/htc/opensense/album/util/ImageManager$Image;
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
    name = "Image"
.end annotation


# instance fields
.field protected bCorrupt:Z

.field mRotation:I

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;II)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct/range {p0 .. p8}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;-><init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    iput p9, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mRotation:I

    return-void
.end method

.method private setExifRotation(I)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexData()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {v2}, Lcom/htc/opensense/album/util/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x168

    :cond_1
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_1
    const-string v4, "Orientation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/htc/opensense/album/util/ImageManager$Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "UserComment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRotatedImage comment orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/htc/opensense/album/util/ImageManager$Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/ExifUtil;->modifiedExifData(Ljava/lang/String;Ljava/util/HashMap;)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to save exif data with new orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :sswitch_0
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_2
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const/16 v3, 0x8

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

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
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_1
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method computeFitSize([III)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, p1, v4

    if-eqz v2, :cond_0

    aget v2, p1, v5

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "ImageManager"

    const-string v3, "Invalid Arg"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    int-to-float v2, p2

    aget v3, p1, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    int-to-float v2, p3

    aget v3, p1, v5

    int-to-float v3, v3

    div-float v1, v2, v3

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    aput p2, p1, v4

    aget v2, p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p1, v5

    goto :goto_0

    :cond_2
    aget v2, p1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, p1, v4

    aput p3, p1, v5

    goto :goto_0
.end method

.method computeSampleSize2([II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    aget v2, p1, v4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aget v2, p1, v3

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, p2}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    aget v2, p1, v4

    div-int/2addr v2, v1

    aput v2, p1, v4

    aget v2, p1, v3

    div-int/2addr v2, v1

    aput v2, p1, v3

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    return-void
.end method

.method public bridge synthetic fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fullSizeImageId()J
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v0

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

.method public bridge synthetic getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->indexData()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    monitor-exit v0

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
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

.method public bridge synthetic getDateTaken()J
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mRotation:I

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

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIsPrivate()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getIsPrivate()Z

    move-result v0

    return v0
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

.method public bridge synthetic getMimeType()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPicasaId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getPicasaId()Ljava/lang/String;

    move-result-object v0

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

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasLatLong()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->hasLatLong()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic imageId()J
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->imageId()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCorrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

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
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isReadonly()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "image/jpeg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image/png"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSharable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

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

    const/4 v0, 0x0

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

.method public removeExifTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetFileCorrupted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getDegreesRotated()I

    move-result v1

    add-int v0, v1, p1

    const/16 v1, 0x168

    if-eq v0, v1, :cond_0

    const/16 v1, -0x168

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$Image;->setDegreesRotated(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$Image$1SaveImageContentsCancelable;

    invoke-direct {v0, p0, p1, p2, p5}, Lcom/htc/opensense/album/util/ImageManager$Image$1SaveImageContentsCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager$Image;Landroid/graphics/Bitmap;[BLandroid/database/Cursor;)V

    return-object v0
.end method

.method protected setDegreesRotated(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mRotation:I

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->indexOrientation()I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "orientation"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->commitChanges()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method protected setDimension()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getDataPath()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDimension] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setDimension()V

    goto :goto_0
.end method

.method public bridge synthetic setIsPrivate(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setIsPrivate(Z)V

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

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-nez v0, :cond_0

    const/16 v5, 0x140

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/album/util/ImageManager$Image;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getDegreesRotated()I

    move-result v5

    invoke-static {v0, v5}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    return-object v0
.end method

.method public bridge synthetic thumbUri()Landroid/net/Uri;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->thumbUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
