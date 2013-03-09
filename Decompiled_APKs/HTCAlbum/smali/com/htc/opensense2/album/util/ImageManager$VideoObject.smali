.class public Lcom/htc/opensense2/album/util/ImageManager$VideoObject;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseImage;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoObject"
.end annotation


# instance fields
.field protected bCorrupt:Z

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$VideoList;JI)V
    .locals 9
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "dateTaken"
    .parameter "row"

    .prologue
    .line 8130
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 8131
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 8122
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mWidth:I

    .line 8123
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mHeight:I

    .line 8147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->bCorrupt:Z

    .line 8132
    return-void
.end method

.method private getStringEntry(I)Ljava/lang/String;
    .locals 3
    .parameter "entryName"

    .prologue
    .line 8229
    const/4 v1, 0x0

    .line 8230
    .local v1, entry:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 8231
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 8237
    :goto_0
    return-object v2

    .line 8232
    :cond_0
    monitor-enter v0

    .line 8233
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8234
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8236
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 8237
    goto :goto_0

    .line 8236
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setStringEntry(Ljava/lang/String;I)V
    .locals 2
    .parameter "entry"
    .parameter "entryName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8333
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 8334
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 8340
    :goto_0
    return-void

    .line 8335
    :cond_0
    monitor-enter v0

    .line 8336
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8339
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
    .parameter "column"
    .parameter "entry"

    .prologue
    const/4 v3, 0x0

    .line 8326
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8327
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8328
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8329
    return-void
.end method


# virtual methods
.method public bridge synthetic alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->alreadyHasDisplayImageDimension()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic commitChanges()V
    .locals 0

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->commitChanges()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8119
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 8135
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 8166
    if-nez p1, :cond_1

    .line 8171
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 8168
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    if-eqz v1, :cond_0

    .line 8171
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fileCorrupted()V
    .locals 1

    .prologue
    .line 8151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->bCorrupt:Z

    .line 8152
    return-void
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 8182
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8183
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 8185
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mWidth:I

    .line 8186
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mHeight:I

    .line 8188
    :cond_0
    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 8192
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 8200
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 8205
    :goto_0
    return-object v1

    .line 8203
    :catch_0
    move-exception v0

    .line 8204
    .local v0, ex:Ljava/io/IOException;
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

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 8213
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mId:J

    return-wide v0
.end method

.method public bridge synthetic fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8217
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentType()I
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContentType()I

    move-result v0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8175
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_DATA:I

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateAdded()J
    .locals 2

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateAdded()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDateModified()J
    .locals 2

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 6

    .prologue
    .line 8382
    const-wide/16 v2, 0x0

    .line 8383
    .local v2, value:J
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 8384
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const-wide/16 v4, -0x1

    .line 8392
    :goto_0
    return-wide v4

    .line 8385
    :cond_0
    monitor-enter v0

    .line 8386
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8387
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->indexDateTaken()I

    move-result v1

    .line 8388
    .local v1, column:I
    if-ltz v1, :cond_1

    .line 8389
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 8391
    .end local v1           #column:I
    :cond_1
    monitor-exit v0

    move-wide v4, v2

    .line 8392
    goto :goto_0

    .line 8391
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bridge synthetic getDegreesRotated()I
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayImageMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8119
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageMimeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayImageResId()I
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageResId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageSourceType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 8267
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->isCorrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8285
    :goto_0
    return v3

    .line 8268
    :cond_0
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mHeight:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mHeight:I

    goto :goto_0

    .line 8270
    :cond_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 8271
    .local v2, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v2, :cond_2

    .line 8273
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 8274
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8275
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mHeight:I

    .line 8276
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8282
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 8285
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mHeight:I

    goto :goto_0

    .line 8277
    :catch_0
    move-exception v1

    .line 8278
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ImageManager"

    const-string v5, "video get height fail"

    invoke-static {v4, v5, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8279
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fileCorrupted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8282
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3
.end method

.method public bridge synthetic getIsPrivate()Z
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getIsPrivate()Z

    move-result v0

    return v0
.end method

.method public getLANGUAGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8221
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLatitude()D
    .locals 2

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLongitude()D
    .locals 2

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMediaDataList()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMediaMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8363
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8225
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRow()I
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSize()J
    .locals 2

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSortBase()J
    .locals 2

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getSortBase()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8241
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_TAGS:I

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 6

    .prologue
    .line 8367
    const-wide/16 v2, 0x0

    .line 8368
    .local v2, value:J
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 8369
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const-wide/16 v4, -0x1

    .line 8377
    :goto_0
    return-wide v4

    .line 8370
    :cond_0
    monitor-enter v0

    .line 8371
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8372
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->indexTimeStamp()I

    move-result v1

    .line 8373
    .local v1, column:I
    if-ltz v1, :cond_1

    .line 8374
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 8376
    .end local v1           #column:I
    :cond_1
    monitor-exit v0

    move-wide v4, v2

    .line 8377
    goto :goto_0

    .line 8376
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 8245
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->isCorrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8263
    :goto_0
    return v3

    .line 8246
    :cond_0
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mWidth:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mWidth:I

    goto :goto_0

    .line 8248
    :cond_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 8249
    .local v2, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v2, :cond_2

    .line 8251
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 8252
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8253
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mWidth:I

    .line 8254
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8260
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 8263
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mWidth:I

    goto :goto_0

    .line 8255
    :catch_0
    move-exception v1

    .line 8256
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ImageManager"

    const-string v5, "video get width fail"

    invoke-static {v4, v5, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8257
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fileCorrupted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8260
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v3
.end method

.method public bridge synthetic hasLatLong()Z
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->hasLatLong()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasSubList()Z
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->hasSubList()Z

    move-result v0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 8292
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mId:J

    return-wide v0
.end method

.method public is3D()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 8408
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    .line 8409
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 8411
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 8413
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8426
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 8411
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8418
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_VIDEO_TYPES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 8420
    .restart local v4       #s:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8418
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8426
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 8160
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->bCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 8300
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isFavorite()Z
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 8309
    const/4 v0, 0x0

    return v0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 8398
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isPlayable()Z
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 8296
    const/4 v0, 0x1

    return v0
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 8143
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->bCorrupt:Z

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

    .prologue
    .line 8304
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onRemove()V
    .locals 0

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->onRemove()V

    return-void
.end method

.method public resetFileCorrupted()V
    .locals 1

    .prologue
    .line 8155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->bCorrupt:Z

    .line 8156
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 8313
    const/4 v0, 0x0

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 8317
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;I)V

    .line 8318
    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8119
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDisplayImageDimension(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8119
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDisplayImageDimension(II)V

    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 8403
    return-void
.end method

.method public bridge synthetic setIsPrivate(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8119
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setIsPrivate(Z)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 8321
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;I)V

    .line 8322
    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8119
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8119
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setPicasaId(Ljava/lang/String;)V

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 1
    .parameter "tags"

    .prologue
    .line 8344
    const-string v0, "tags"

    invoke-direct {p0, v0, p1}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 8345
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 8351
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 8119
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->thumbUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8357
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
