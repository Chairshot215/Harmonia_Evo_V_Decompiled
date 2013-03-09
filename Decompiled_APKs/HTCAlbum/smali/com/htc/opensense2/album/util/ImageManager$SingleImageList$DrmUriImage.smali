.class Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;
.super Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;
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

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;JLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;ILandroid/net/Uri;)V
    .locals 10
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "uri"

    .prologue
    .line 6004
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    .line 6005
    iget-object v2, p1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    move-wide v3, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    .line 6002
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 6006
    move-object/from16 v0, p7

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1602(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;Landroid/net/Uri;)Landroid/net/Uri;

    .line 6007
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 6008
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 6009
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6010
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    .line 6011
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    .line 6012
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    .line 6013
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    .line 6014
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    .line 6015
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    .line 6016
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    .line 6017
    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    .line 6021
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6022
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6023
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    .line 6025
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6026
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    .line 6028
    :cond_2
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 6112
    if-nez p1, :cond_1

    .line 6131
    :cond_0
    :goto_0
    return-object v4

    .line 6114
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6117
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 6119
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 6120
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 6123
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 6124
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6128
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    if-eqz v3, :cond_0

    .line 6131
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 6122
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 6125
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_1
    move-exception v2

    .line 6126
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getGifFrame([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 6100
    iget-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 6101
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 6102
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6103
    new-instance v1, Landroid/webkit/GIFImageParser;

    invoke-direct {v1}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 6104
    .local v1, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {v1, p1}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 6105
    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFrameCount:I

    .line 6107
    .end local v1           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    .line 6109
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
    .line 6290
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 6358
    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 6362
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5994
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 6368
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v0

    return-object v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 6294
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method computeFitSize([III)V
    .locals 0
    .parameter "result"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 6299
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->computeFitSize([III)V

    .line 6300
    return-void
.end method

.method computeSampleSize2([II)V
    .locals 0
    .parameter "result"
    .parameter "targetWidthHeight"

    .prologue
    .line 6304
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->computeSampleSize2([II)V

    .line 6305
    return-void
.end method

.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 6033
    const/4 v1, 0x0

    .line 6035
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 6037
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6042
    :cond_0
    :goto_0
    return-object v1

    .line 6039
    :catch_0
    move-exception v0

    .line 6040
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 6047
    const/4 v1, 0x0

    .line 6049
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 6051
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6056
    :cond_0
    :goto_0
    return-object v1

    .line 6053
    :catch_0
    move-exception v0

    .line 6054
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public forceMakeThumbBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 6061
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 6063
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 6064
    const/4 v0, 0x0

    .line 6095
    :cond_0
    :goto_0
    return-object v0

    .line 6066
    :cond_1
    const/4 v0, 0x0

    .line 6069
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6070
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 6071
    .local v3, ret:I
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6073
    const/16 v4, -0xff

    if-eq v3, v4, :cond_2

    .line 6075
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 6076
    const/4 v0, 0x0

    .line 6086
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6092
    .end local v3           #ret:I
    :goto_1
    if-nez v0, :cond_0

    .line 6093
    const-string v4, "ImageManager"

    const-string v5, "can not created DRM miniThumbBitmap"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6087
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 6088
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6079
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 6081
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of memory. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6086
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 6087
    :catch_2
    move-exception v1

    .line 6088
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6085
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 6086
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 6089
    :goto_2
    throw v4

    .line 6087
    :catch_3
    move-exception v1

    .line 6088
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "clode input stream fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 6397
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 4
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 6387
    :try_start_0
    new-instance v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6390
    :goto_0
    return-object v1

    .line 6388
    :catch_0
    move-exception v0

    .line 6389
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 6390
    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 6407
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 6412
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6417
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6422
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 6427
    const/4 v0, 0x0

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 6432
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6239
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 6437
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 6442
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 6447
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 6309
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6452
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6244
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    .prologue
    .line 6136
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    return v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 6314
    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCount()I
    .locals 6

    .prologue
    .line 6253
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v3, :cond_0

    .line 6254
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMediaWithoutDialog()Ljava/io/InputStream;

    move-result-object v2

    .line 6255
    .local v2, is:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 6256
    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getGifFrame([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6268
    .end local v0           #data:[B
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFrameCount:I

    return v3

    .line 6259
    :catch_0
    move-exception v1

    .line 6261
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out of memory. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6263
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 6265
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

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 6457
    const/4 v0, -0x1

    .line 6458
    .local v0, height:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 6459
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v1

    .line 6460
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 6461
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6462
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6463
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6464
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6465
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6468
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 6473
    const/4 v0, 0x1

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 6478
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 6483
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6141
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6488
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 6493
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 6498
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 6503
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6274
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 6508
    const/4 v2, -0x1

    .line 6509
    .local v2, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 6510
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    .line 6511
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 6512
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6513
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6514
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6515
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6516
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6519
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return v2
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 6524
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 6529
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 6279
    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 6534
    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 6325
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 6284
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 6319
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 6540
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 6146
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 6148
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 6149
    const/4 v4, 0x0

    .line 6185
    :cond_0
    :goto_0
    return-object v4

    .line 6151
    :cond_1
    const/4 v4, 0x0

    .line 6154
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6155
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 6157
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 6159
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6160
    const/4 v0, 0x0

    .line 6163
    :cond_2
    if-eqz v0, :cond_3

    .line 6165
    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 6176
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6182
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 6183
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM miniThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6177
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 6178
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6169
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 6171
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6176
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 6177
    :catch_2
    move-exception v1

    .line 6178
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6175
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 6176
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 6179
    :goto_2
    throw v5

    .line 6177
    :catch_3
    move-exception v1

    .line 6178
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    const-string v7, "input stream close fail"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 6546
    return-void
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 6331
    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 6336
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 6340
    const/4 v0, 0x0

    return v0
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "image"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "newFile"
    .parameter "cursor"

    .prologue
    .line 6347
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 6551
    return-void
.end method

.method protected setDegreesRotated(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 6353
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 6556
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 6561
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 6566
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 6571
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6190
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 6192
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 6193
    const/4 v4, 0x0

    .line 6234
    :cond_0
    :goto_0
    return-object v4

    .line 6195
    :cond_1
    const/4 v4, 0x0

    .line 6198
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6199
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 6201
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 6203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6204
    const/4 v0, 0x0

    .line 6208
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v8, :cond_4

    .line 6210
    move-object v4, v0

    .line 6225
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6231
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_2
    if-nez v4, :cond_0

    .line 6232
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM ThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6212
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :cond_4
    if-eqz v0, :cond_3

    .line 6214
    :try_start_2
    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 6218
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :catch_0
    move-exception v1

    .line 6220
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6225
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 6226
    :catch_1
    move-exception v1

    .line 6227
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

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6226
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_2
    move-exception v1

    .line 6227
    .restart local v1       #e:Ljava/io/IOException;
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

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6224
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catchall_0
    move-exception v5

    .line 6225
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 6228
    :goto_3
    throw v5

    .line 6226
    :catch_3
    move-exception v1

    .line 6227
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

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6575
    const/4 v0, 0x0

    return-object v0
.end method
