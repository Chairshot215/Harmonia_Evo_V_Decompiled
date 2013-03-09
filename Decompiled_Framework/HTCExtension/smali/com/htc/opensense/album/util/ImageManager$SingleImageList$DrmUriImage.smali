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

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

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

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    move-object/from16 v0, p7

    #setter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1302(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;Landroid/net/Uri;)Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    :cond_2
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 8

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

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

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getGifFrame([B)V
    .locals 3

    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/htc/opensense/album/util/GIFImageParser;

    invoke-direct {v1}, Lcom/htc/opensense/album/util/GIFImageParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/util/GIFImageParser;->setRawData([B)V

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mFrameCount:I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public commitChanges()V
    .locals 0

    return-void
.end method

.method public compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$IImage;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v0

    return-object v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method computeFitSize([III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->computeFitSize([III)V

    return-void
.end method

.method computeSampleSize2([II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->computeSampleSize2([II)V

    return-void
.end method

.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

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
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

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

.method public forceMakeThumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    const/16 v4, -0xff

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v0, :cond_0

    const-string v4, "ImageManager"

    const-string v5, "can not created DRM miniThumbBitmap"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

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

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v1

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

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v4, "ImageManager"

    const-string v5, "clode input stream fail"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_2
    throw v4

    :catch_5
    move-exception v1

    const-string v5, "ImageManager"

    const-string v6, "clode input stream fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mDrmType:I

    return v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrameCount()I
    .locals 6

    iget-boolean v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mbGetFrameCount:Z

    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMediaWithoutDialog()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->getGifFrame([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->mFrameCount:I

    return v3

    :catch_0
    move-exception v1

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

    :catch_1
    move-exception v1

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

    const/4 v0, -0x1

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLatitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mFileSize:J

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mAddedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsGif:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->mIsVideo:Z

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v4, :cond_0

    const-string v5, "ImageManager"

    const-string v6, "can not created DRM miniThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

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

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v1

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

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v5, "ImageManager"

    const-string v6, "input stream close fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_2
    throw v5

    :catch_5
    move-exception v1

    const-string v6, "ImageManager"

    const-string v7, "input stream close fail"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onRemove()V
    .locals 0

    return-void
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected setDegreesRotated(I)V
    .locals 0

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v4, :cond_0

    const-string v5, "ImageManager"

    const-string v6, "can not created DRM ThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

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

    :catch_1
    move-exception v1

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

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

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

    :catch_3
    move-exception v1

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

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

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

    :catchall_0
    move-exception v5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_2
    throw v5

    :catch_5
    move-exception v1

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

    const/4 v0, 0x0

    return-object v0
.end method
