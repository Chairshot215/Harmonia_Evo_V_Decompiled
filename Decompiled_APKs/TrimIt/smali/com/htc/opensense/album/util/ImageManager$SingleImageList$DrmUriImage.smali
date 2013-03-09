.class Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;
.super Lcom/htc/opensense/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmUriImage"
.end annotation


# instance fields
.field private mAddedTime:J

.field private mBucketName:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDrmType:I

.field private mFileSize:J

.field private mIsGif:Z

.field private mIsVideo:Z

.field private mMimeType:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mbGetFrameCount:Z

.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;JLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;ILandroid/net/Uri;)V
    .locals 10
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "uri"

    .prologue
    .line 5580
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    .line 5581
    iget-object v2, p1, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    move-wide v3, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    .line 5578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 5582
    move-object/from16 v0, p7

    #setter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1302(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;Landroid/net/Uri;)Landroid/net/Uri;

    .line 5583
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 5584
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 5585
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5586
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    .line 5587
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    .line 5588
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    .line 5589
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    .line 5590
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    .line 5591
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    .line 5592
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    .line 5593
    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    .line 5597
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5598
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5599
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    .line 5601
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5602
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 5604
    :cond_2
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 5692
    if-nez p1, :cond_1

    .line 5711
    :cond_0
    :goto_0
    return-object v4

    .line 5694
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5697
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 5699
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 5700
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 5703
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 5704
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5708
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    if-eqz v3, :cond_0

    .line 5711
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 5702
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 5705
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_1
    move-exception v2

    .line 5706
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getGifFrame([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 5680
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 5681
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 5682
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5683
    new-instance v1, Lcom/htc/opensense/album/util/GIFImageParser;

    invoke-direct {v1}, Lcom/htc/opensense/album/util/GIFImageParser;-><init>()V

    .line 5684
    .local v1, parser:Lcom/htc/opensense/album/util/GIFImageParser;
    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/util/GIFImageParser;->setRawData([B)V

    .line 5685
    invoke-virtual {v1}, Lcom/htc/opensense/album/util/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mFrameCount:I

    .line 5687
    .end local v1           #parser:Lcom/htc/opensense/album/util/GIFImageParser;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    .line 5689
    .end local v0           #mimeType:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 5879
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 5947
    return-void
.end method

.method public compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 5951
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5570
    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 5957
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v0

    return-object v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 5883
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method computeFitSize([III)V
    .locals 0
    .parameter "result"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 5888
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->computeFitSize([III)V

    .line 5889
    return-void
.end method

.method computeSampleSize2([II)V
    .locals 0
    .parameter "result"
    .parameter "targetWidthHeight"

    .prologue
    .line 5893
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->computeSampleSize2([II)V

    .line 5894
    return-void
.end method

.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 5609
    const/4 v1, 0x0

    .line 5611
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 5613
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5618
    :cond_0
    :goto_0
    return-object v1

    .line 5615
    :catch_0
    move-exception v0

    .line 5616
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 5623
    const/4 v1, 0x0

    .line 5625
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 5627
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5632
    :cond_0
    :goto_0
    return-object v1

    .line 5629
    :catch_0
    move-exception v0

    .line 5630
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public forceMakeThumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "doConsume"

    .prologue
    .line 5637
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 5639
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 5640
    const/4 v0, 0x0

    .line 5675
    :cond_0
    :goto_0
    return-object v0

    .line 5642
    :cond_1
    const/4 v0, 0x0

    .line 5645
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5646
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 5647
    .local v3, ret:I
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5649
    :cond_2
    const/16 v4, -0xff

    if-eq v3, v4, :cond_3

    .line 5651
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5652
    const/4 v0, 0x0

    .line 5666
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5672
    .end local v3           #ret:I
    :goto_1
    if-nez v0, :cond_0

    .line 5673
    const-string v4, "ImageManager"

    const-string v5, "can not created DRM miniThumbBitmap"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5667
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 5668
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5655
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 5657
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of memory. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5666
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 5667
    :catch_2
    move-exception v1

    .line 5668
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5659
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 5661
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5666
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 5667
    :catch_4
    move-exception v1

    .line 5668
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5665
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 5666
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 5669
    :goto_2
    throw v4

    .line 5667
    :catch_5
    move-exception v1

    .line 5668
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "clode input stream fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 5991
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 5986
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 4
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 5976
    :try_start_0
    new-instance v1, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5979
    :goto_0
    return-object v1

    .line 5977
    :catch_0
    move-exception v0

    .line 5978
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 5979
    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 5996
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 6001
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6006
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6011
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 6016
    const/4 v0, 0x0

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 6021
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5828
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 6026
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 6031
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 6036
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 5898
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6041
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5833
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    .prologue
    .line 5716
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    return v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 5903
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCount()I
    .locals 6

    .prologue
    .line 5840
    iget-boolean v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v3, :cond_0

    .line 5843
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMediaWithoutDialog()Ljava/io/InputStream;

    move-result-object v2

    .line 5844
    .local v2, is:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 5845
    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getGifFrame([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5857
    .end local v0           #data:[B
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mFrameCount:I

    return v3

    .line 5847
    :catch_0
    move-exception v1

    .line 5849
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out of memory. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5851
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 5853
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 6046
    const/4 v0, -0x1

    .line 6057
    .local v0, height:I
    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 6062
    const/4 v0, 0x1

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 6067
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 6072
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5721
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6077
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 6082
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 6087
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 6092
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5863
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 6097
    const/4 v0, -0x1

    .line 6108
    .local v0, width:I
    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 6113
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 6118
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 5868
    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 6123
    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 5914
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 5873
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 5908
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 6129
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 5726
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 5728
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 5729
    const/4 v4, 0x0

    .line 5769
    :cond_0
    :goto_0
    return-object v4

    .line 5731
    :cond_1
    const/4 v4, 0x0

    .line 5734
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5735
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 5737
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 5739
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5740
    const/4 v0, 0x0

    .line 5743
    :cond_2
    if-eqz v0, :cond_3

    .line 5745
    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5746
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5760
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5766
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 5767
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM miniThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5761
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 5762
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5749
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 5751
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5760
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 5761
    :catch_2
    move-exception v1

    .line 5762
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5753
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 5755
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5760
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 5761
    :catch_4
    move-exception v1

    .line 5762
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5759
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 5760
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 5763
    :goto_2
    throw v5

    .line 5761
    :catch_5
    move-exception v1

    .line 5762
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    const-string v7, "input stream close fail"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 6135
    return-void
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 5920
    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 5925
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 5929
    const/4 v0, 0x0

    return v0
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "image"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "newFile"
    .parameter "cursor"

    .prologue
    .line 5936
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 6140
    return-void
.end method

.method protected setDegreesRotated(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 5942
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 6145
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 6150
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 6155
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 6160
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 5774
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 5776
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 5777
    const/4 v4, 0x0

    .line 5823
    :cond_0
    :goto_0
    return-object v4

    .line 5779
    :cond_1
    const/4 v4, 0x0

    .line 5782
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5783
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 5785
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 5787
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5788
    const/4 v0, 0x0

    .line 5797
    :cond_2
    if-eqz v0, :cond_3

    .line 5799
    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5800
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5814
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5820
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 5821
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM ThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5815
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 5816
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5803
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 5805
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5814
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 5815
    :catch_2
    move-exception v1

    .line 5816
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5807
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 5809
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5814
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 5815
    :catch_4
    move-exception v1

    .line 5816
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5813
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 5814
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 5817
    :goto_2
    throw v5

    .line 5815
    :catch_5
    move-exception v1

    .line 5816
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[thumbBitmap] Got exception dueing closing input stream, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6164
    const/4 v0, 0x0

    return-object v0
.end method
