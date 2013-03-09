.class abstract Lcom/htc/opensense2/album/util/ImageManager$BaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImage"
.end annotation


# static fields
.field protected static final INVALID_WIDTH_HEIGHT:I = -0x1


# instance fields
.field protected mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursorRow:I

.field protected mExifData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGifFrameCount:I

.field protected mHeight:I

.field protected mId:J

.field protected mInked:I

.field protected mMiniThumbMagic:J

.field private mSortBase:J

.field protected mWidth:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    const/4 v2, -0x1

    .line 243
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mInked:I

    .line 1121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1207
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    .line 244
    iput-object p6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 245
    iput-wide p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    .line 246
    iput-wide p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 247
    iput-object p7, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    .line 248
    iput p8, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mCursorRow:I

    .line 250
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 251
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    .line 252
    return-void
.end method

.method private makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "targetWidthOrHeight"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 902
    const/4 v1, 0x0

    .line 904
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 905
    if-nez v1, :cond_1

    .line 915
    if-eqz v1, :cond_0

    .line 916
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 920
    :cond_0
    :goto_0
    return-object v2

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 906
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v2

    .line 915
    if-eqz v1, :cond_0

    .line 916
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 918
    :catch_1
    move-exception v0

    .line 919
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 907
    .end local v0           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 908
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_4
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeBitmap] Got exception during openFileDescriptor, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 915
    if-eqz v1, :cond_0

    .line 916
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 918
    :catch_3
    move-exception v0

    .line 919
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 910
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 911
    .local v0, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeBitmap] Got null exception during openFileDescriptor, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 915
    if-eqz v1, :cond_0

    .line 916
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 918
    :catch_5
    move-exception v0

    .line 919
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 914
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 915
    if-eqz v1, :cond_2

    .line 916
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 920
    :cond_2
    :goto_1
    throw v2

    .line 918
    :catch_6
    move-exception v0

    .line 919
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 816
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commitChanges()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 258
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 259
    :cond_0
    monitor-enter v0

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 264
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

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 5
    .parameter "another"

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getSortBase()J

    move-result-wide v2

    .line 1114
    .local v2, mySortBase:J
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

    .line 1116
    .local v0, anotherSortBase:J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 230
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 338
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V

    return-object v0
.end method

.method abstract compressionType()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p1, :cond_1

    .line 348
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 345
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/htc/opensense2/album/util/ImageManager$Image;

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$Image;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 356
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-wide v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, url:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 359
    const/4 v0, 0x0

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 6
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 430
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 431
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 441
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 432
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_0
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    goto :goto_0

    .line 433
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 434
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 437
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 439
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v0

    .line 440
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 447
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 452
    :goto_0
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fullSizeImageData] Unable to openInputStream, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexBucketName()I

    move-result v2

    if-gez v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-object v1

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 507
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 508
    monitor-enter v0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 510
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexBucketName()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 1238
    const/4 v0, 0x0

    return v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateAdded()J
    .locals 3

    .prologue
    .line 484
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 489
    :goto_0
    return-wide v1

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 486
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 487
    :cond_1
    monitor-enter v0

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 489
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDateModified()J
    .locals 4

    .prologue
    const-wide/16 v1, -0x1

    .line 494
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateModified()I

    move-result v3

    if-gez v3, :cond_1

    const-wide/16 v1, 0x0

    .line 501
    :cond_0
    :goto_0
    return-wide v1

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 496
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 497
    monitor-enter v0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateModified()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDateTaken()J
    .locals 3

    .prologue
    .line 473
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 478
    :goto_0
    return-wide v1

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 475
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 476
    :cond_1
    monitor-enter v0

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 478
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 675
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v1

    if-gez v1, :cond_3

    .line 676
    const/4 v6, 0x0

    .line 678
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 683
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 692
    if-eqz v6, :cond_0

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_0
    :goto_0
    return-object v7

    .line 686
    :cond_1
    :try_start_1
    const-string v7, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 692
    if-eqz v6, :cond_0

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 688
    :catch_0
    move-exception v8

    .line 689
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDescription] Got exception during query description, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v7, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    if-eqz v6, :cond_0

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 692
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 696
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v7, 0x0

    .line 697
    .local v7, description:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 698
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_4

    move-object v7, v0

    goto :goto_0

    .line 699
    :cond_4
    monitor-enter v6

    .line 700
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 701
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 703
    :cond_5
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1246
    if-nez p1, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 1181
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 765
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v1

    if-gez v1, :cond_4

    .line 766
    const/4 v6, 0x0

    .line 768
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 773
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 781
    if-eqz v6, :cond_0

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_0
    :goto_0
    return-object v8

    .line 781
    :cond_1
    if-eqz v6, :cond_2

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 777
    :catch_0
    move-exception v7

    .line 778
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDisplayName] Got exception during querying the display name, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    if-eqz v6, :cond_2

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 781
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 785
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    const/4 v8, 0x0

    .line 786
    .local v8, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 787
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_5

    move-object v8, v0

    goto :goto_0

    .line 788
    :cond_5
    monitor-enter v6

    .line 789
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 790
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 792
    :cond_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 793
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 792
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 871
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 872
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    .line 876
    :goto_0
    return v0

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDimension()V

    .line 876
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    goto :goto_0
.end method

.method public getIsPrivate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 712
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    if-gez v3, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v2

    .line 713
    :cond_1
    const/4 v1, 0x0

    .line 714
    .local v1, isPrivate:Z
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 715
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 716
    monitor-enter v0

    .line 717
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 718
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 720
    :cond_2
    :goto_1
    monitor-exit v0

    move v2, v1

    .line 721
    goto :goto_0

    :cond_3
    move v1, v2

    .line 718
    goto :goto_1

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLatitude()D
    .locals 3

    .prologue
    .line 725
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 730
    :goto_0
    return-wide v1

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 727
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/high16 v1, -0x4010

    goto :goto_0

    .line 728
    :cond_1
    monitor-enter v0

    .line 729
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 730
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 731
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLongitude()D
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 740
    :goto_0
    return-wide v1

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 737
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/high16 v1, -0x4010

    goto :goto_0

    .line 738
    :cond_1
    monitor-enter v0

    .line 739
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 740
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v1

    if-gez v1, :cond_3

    .line 521
    const/4 v6, 0x0

    .line 523
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 528
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 537
    if-eqz v6, :cond_0

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 549
    :cond_0
    :goto_0
    return-object v8

    .line 531
    :cond_1
    :try_start_1
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 537
    if-eqz v6, :cond_0

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 533
    :catch_0
    move-exception v7

    .line 534
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMimeType] Got exception during query mime type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    if-eqz v6, :cond_0

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 537
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 541
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v8, 0x0

    .line 542
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 543
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_4

    move-object v8, v0

    goto :goto_0

    .line 544
    :cond_4
    monitor-enter v6

    .line 545
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 546
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 548
    :cond_5
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mCursorRow:I

    return v0
.end method

.method public getSize()J
    .locals 12

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 622
    .local v7, cachedCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 623
    monitor-enter v7

    .line 624
    const/4 v9, -0x1

    .line 626
    .local v9, index:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 633
    :goto_0
    if-ltz v9, :cond_3

    .line 634
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 637
    .local v10, size:J
    monitor-exit v7

    .line 667
    .end local v9           #index:I
    .end local v10           #size:J
    :cond_0
    :goto_1
    return-wide v10

    .line 630
    .restart local v9       #index:I
    :cond_1
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 639
    :cond_2
    const-wide/16 v10, -0x1

    monitor-exit v7

    goto :goto_1

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    .end local v9           #index:I
    :cond_4
    const/4 v6, 0x0

    .line 646
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 648
    .restart local v10       #size:J
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 654
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v10

    .line 663
    :goto_2
    if-eqz v6, :cond_0

    .line 664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 656
    :cond_5
    const-wide/16 v10, -0x1

    goto :goto_2

    .line 658
    :catch_0
    move-exception v8

    .line 659
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSize] Got exception during query image size, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 660
    const-wide/16 v10, -0x1

    .line 663
    if-eqz v6, :cond_0

    .line 664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 663
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_6

    .line 664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getSortBase()J
    .locals 4

    .prologue
    .line 1123
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1124
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1147
    :goto_0
    return-wide v0

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1147
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 750
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 758
    :goto_0
    return-object v2

    .line 751
    :cond_0
    monitor-enter v0

    .line 752
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 754
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 758
    :cond_2
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 862
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 863
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 867
    :goto_0
    return v0

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDimension()V

    .line 867
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    goto :goto_0
.end method

.method public hasLatLong()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 880
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    if-gez v2, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v1

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 882
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 883
    monitor-enter v0

    .line 884
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 885
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 1257
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 893
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public is3D()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 589
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 592
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 594
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 607
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 592
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_VIDEO_TYPES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 601
    .restart local v4       #s:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 607
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isFavorite()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 555
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->isFavoriteList()Z

    move-result v8

    .line 584
    :cond_0
    :goto_0
    return v8

    .line 558
    :cond_1
    const/4 v6, 0x0

    .line 559
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 561
    .local v8, isFavorite:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 566
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 568
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 569
    .local v9, nValue:I
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v10, :cond_2

    move v8, v10

    .line 570
    :goto_1
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][isFavorite]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v9           #nValue:I
    :goto_2
    if-eqz v6, :cond_0

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v9       #nValue:I
    :cond_2
    move v8, v11

    .line 569
    goto :goto_1

    .line 574
    .end local v9           #nValue:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 576
    :catch_0
    move-exception v7

    .line 577
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFavorite] Got exception during query favorite, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    const/4 v8, 0x0

    .line 580
    if-eqz v6, :cond_0

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 580
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isInked()Z
    .locals 3

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mInked:I

    if-ne v1, v2, :cond_0

    .line 616
    const/4 v0, 0x1

    .line 617
    :cond_0
    return v0
.end method

.method public isPlayable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1212
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isGif()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1213
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1214
    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 1215
    .local v0, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    .line 1218
    .end local v0           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    if-le v2, v1, :cond_1

    .line 1222
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    .line 1001
    :goto_0
    return-object v7

    .line 968
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    .line 969
    .local v1, id:J
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 970
    .local v4, dbMagic:J
    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-eqz v0, :cond_1

    cmp-long v0, v4, v1

    if-nez v0, :cond_2

    .line 971
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v13

    invoke-virtual {v0, p0, v3, v13}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 975
    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$100()[B

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :try_start_1
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 977
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$100()[B

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->access$200(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 978
    .local v8, data:[B
    if-nez v8, :cond_3

    .line 979
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v14

    invoke-virtual {v0, p0, v3, v14}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 980
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$100()[B

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->access$200(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 982
    :cond_3
    if-nez v8, :cond_4

    .line 986
    :cond_4
    if-eqz v8, :cond_6

    .line 987
    const/4 v0, 0x0

    array-length v3, v8

    invoke-static {v8, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 988
    .local v7, b:Landroid/graphics/Bitmap;
    if-nez v7, :cond_5

    .line 993
    :cond_5
    monitor-exit v13

    goto :goto_0

    .line 995
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #data:[B
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 997
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    :catch_0
    move-exception v9

    .line 998
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "miniThumbBitmap got exception "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/StackTraceElement;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_7

    aget-object v12, v6, v10

    .line 1000
    .local v12, s:Ljava/lang/StackTraceElement;
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "... "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 995
    .end local v6           #arr$:[Ljava/lang/StackTraceElement;
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #s:Ljava/lang/StackTraceElement;
    .restart local v1       #id:J
    .restart local v4       #dbMagic:J
    .restart local v8       #data:[B
    :cond_6
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 996
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1001
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    .end local v8           #data:[B
    .restart local v6       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v9       #ex:Ljava/lang/Exception;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onRemove()V
    .locals 3

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    return-void
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 1016
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 6
    .parameter "description"

    .prologue
    .line 1022
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v2

    if-gez v2, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1024
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1025
    monitor-enter v0

    .line 1026
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1028
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1029
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "description"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1032
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected setDimension()V
    .locals 6

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 827
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 828
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 829
    if-nez v1, :cond_1

    .line 831
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 832
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 852
    if-eqz v1, :cond_0

    .line 853
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 859
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 855
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 856
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 835
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 836
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 837
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 839
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 840
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 852
    if-eqz v1, :cond_0

    .line 853
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 855
    :catch_1
    move-exception v0

    .line 856
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 842
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v0

    .line 843
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 844
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 845
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 852
    if-eqz v1, :cond_0

    .line 853
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 855
    :catch_3
    move-exception v0

    .line 856
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 847
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 848
    .local v0, ex:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 849
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 852
    if-eqz v1, :cond_0

    .line 853
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 855
    :catch_5
    move-exception v0

    .line 856
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 851
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 852
    if-eqz v1, :cond_2

    .line 853
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 857
    :cond_2
    :goto_1
    throw v4

    .line 855
    :catch_6
    move-exception v0

    .line 856
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 820
    iput p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    .line 821
    iput p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    .line 822
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 6
    .parameter "isPrivate"

    .prologue
    .line 1039
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexPrivate()I

    move-result v2

    if-gez v2, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1041
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1042
    monitor-enter v0

    .line 1043
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1046
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "isprivate"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1049
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1046
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1057
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1058
    :cond_0
    monitor-enter v0

    .line 1059
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1062
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1065
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 9
    .parameter "id"

    .prologue
    .line 1069
    const/4 v6, 0x0

    .line 1071
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "picasa_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1076
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "picasa_id"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    .line 1093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1095
    :cond_1
    :goto_0
    return-void

    .line 1089
    :catch_0
    move-exception v7

    .line 1090
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    if-eqz v6, :cond_1

    .line 1093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1092
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1093
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 1103
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumb"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1104
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
