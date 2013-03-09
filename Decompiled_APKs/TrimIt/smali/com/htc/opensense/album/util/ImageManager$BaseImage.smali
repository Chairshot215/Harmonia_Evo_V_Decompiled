.class abstract Lcom/htc/opensense/album/util/ImageManager$BaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImage"
.end annotation


# static fields
.field protected static final INVALID_WIDTH_HEIGHT:I = -0x1


# instance fields
.field protected mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

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

.field protected mHeight:I

.field protected mId:J

.field protected mMiniThumbMagic:J

.field private mSortBase:J

.field protected mWidth:I

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    const/4 v2, -0x1

    .line 249
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 250
    iput-object p6, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 251
    iput-wide p2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    .line 252
    iput-wide p4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 253
    iput-object p7, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    .line 254
    iput p8, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mCursorRow:I

    .line 256
    iput v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    .line 257
    iput v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I

    .line 258
    return-void
.end method

.method private makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "targetWidthOrHeight"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 862
    const/4 v1, 0x0

    .line 864
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 865
    if-nez v1, :cond_1

    .line 875
    if-eqz v1, :cond_0

    .line 876
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 880
    :cond_0
    :goto_0
    return-object v2

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 866
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v2

    .line 875
    if-eqz v1, :cond_0

    .line 876
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 878
    :catch_1
    move-exception v0

    .line 879
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 867
    .end local v0           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 868
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

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 875
    if-eqz v1, :cond_0

    .line 876
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 878
    :catch_3
    move-exception v0

    .line 879
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 870
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 871
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

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 875
    if-eqz v1, :cond_0

    .line 876
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 878
    :catch_5
    move-exception v0

    .line 879
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 874
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 875
    if-eqz v1, :cond_2

    .line 876
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 880
    :cond_2
    :goto_1
    throw v2

    .line 878
    :catch_6
    move-exception v0

    .line 879
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public commitChanges()V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 264
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 265
    :cond_0
    monitor-enter v0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 270
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

.method public compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 5
    .parameter "another"

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getSortBase()J

    move-result-wide v2

    .line 1074
    .local v2, mySortBase:J
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

    .line 1076
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
    .line 238
    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 344
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;-><init>(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V

    return-object v0
.end method

.method abstract compressionType()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 349
    if-nez p1, :cond_1

    .line 354
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 351
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/htc/opensense/album/util/ImageManager$Image;

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$Image;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 362
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    iget-wide v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 364
    .local v1, url:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 365
    const/4 v0, 0x0

    .line 371
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 6
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x0

    .line 436
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 437
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 447
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 438
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_0
    new-instance v3, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    goto :goto_0

    .line 439
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 440
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 442
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 443
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v0

    .line 446
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 453
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    .line 456
    :catch_0
    move-exception v0

    .line 457
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

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    iget-wide v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexBucketName()I

    move-result v2

    if-gez v2, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-object v1

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 513
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 514
    monitor-enter v0

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 516
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexBucketName()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateAdded()J
    .locals 3

    .prologue
    .line 490
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 495
    :goto_0
    return-wide v1

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 492
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 493
    :cond_1
    monitor-enter v0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 495
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 496
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

    .line 500
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDateModified()I

    move-result v3

    if-gez v3, :cond_1

    const-wide/16 v1, 0x0

    .line 507
    :cond_0
    :goto_0
    return-wide v1

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 502
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 503
    monitor-enter v0

    .line 504
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDateModified()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 506
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
    .line 479
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 484
    :goto_0
    return-wide v1

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 481
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 482
    :cond_1
    monitor-enter v0

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 484
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 485
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
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 644
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v1

    if-gez v1, :cond_3

    .line 645
    const/4 v6, 0x0

    .line 647
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

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

    .line 652
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 661
    if-eqz v6, :cond_0

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_0
    :goto_0
    return-object v7

    .line 655
    :cond_1
    :try_start_1
    const-string v7, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 661
    if-eqz v6, :cond_0

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 657
    :catch_0
    move-exception v8

    .line 658
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

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v7, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    if-eqz v6, :cond_0

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 661
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 665
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v7, 0x0

    .line 666
    .local v7, description:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 667
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_4

    move-object v7, v0

    goto :goto_0

    .line 668
    :cond_4
    monitor-enter v6

    .line 669
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 672
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

.method public getDisplayName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 734
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v1

    if-gez v1, :cond_4

    .line 735
    const/4 v6, 0x0

    .line 737
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

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

    .line 742
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 750
    if-eqz v6, :cond_0

    .line 751
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_0
    :goto_0
    return-object v8

    .line 750
    :cond_1
    if-eqz v6, :cond_2

    .line 751
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 746
    :catch_0
    move-exception v7

    .line 747
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

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    if-eqz v6, :cond_2

    .line 751
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 750
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 751
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 754
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    const/4 v8, 0x0

    .line 755
    .local v8, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 756
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_5

    move-object v8, v0

    goto :goto_0

    .line 757
    :cond_5
    monitor-enter v6

    .line 758
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 759
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 761
    :cond_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 762
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 761
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
    .line 831
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 832
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I

    .line 836
    :goto_0
    return v0

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setDimension()V

    .line 836
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I

    goto :goto_0
.end method

.method public getIsPrivate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 681
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    if-gez v3, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v2

    .line 682
    :cond_1
    const/4 v1, 0x0

    .line 683
    .local v1, isPrivate:Z
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 684
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 685
    monitor-enter v0

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 687
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 689
    :cond_2
    :goto_1
    monitor-exit v0

    move v2, v1

    .line 690
    goto :goto_0

    :cond_3
    move v1, v2

    .line 687
    goto :goto_1

    .line 689
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
    .line 694
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 699
    :goto_0
    return-wide v1

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 696
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/high16 v1, -0x4010

    goto :goto_0

    .line 697
    :cond_1
    monitor-enter v0

    .line 698
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 699
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 700
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
    .line 704
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 709
    :goto_0
    return-wide v1

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 706
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/high16 v1, -0x4010

    goto :goto_0

    .line 707
    :cond_1
    monitor-enter v0

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 709
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 526
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v1

    if-gez v1, :cond_3

    .line 527
    const/4 v6, 0x0

    .line 529
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

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

    .line 534
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 543
    if-eqz v6, :cond_0

    .line 544
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_0
    :goto_0
    return-object v8

    .line 537
    :cond_1
    :try_start_1
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 543
    if-eqz v6, :cond_0

    .line 544
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 539
    :catch_0
    move-exception v7

    .line 540
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

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    if-eqz v6, :cond_0

    .line 544
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 543
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 544
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 547
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v8, 0x0

    .line 548
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 549
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_4

    move-object v8, v0

    goto :goto_0

    .line 550
    :cond_4
    monitor-enter v6

    .line 551
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 554
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
    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mCursorRow:I

    return v0
.end method

.method public getSize()J
    .locals 12

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 591
    .local v7, cachedCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 592
    monitor-enter v7

    .line 593
    const/4 v9, -0x1

    .line 595
    .local v9, index:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 602
    :goto_0
    if-ltz v9, :cond_3

    .line 603
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 606
    .local v10, size:J
    monitor-exit v7

    .line 636
    .end local v9           #index:I
    .end local v10           #size:J
    :cond_0
    :goto_1
    return-wide v10

    .line 599
    .restart local v9       #index:I
    :cond_1
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 608
    :cond_2
    const-wide/16 v10, -0x1

    monitor-exit v7

    goto :goto_1

    .line 610
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

    .line 614
    .end local v9           #index:I
    :cond_4
    const/4 v6, 0x0

    .line 615
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 617
    .restart local v10       #size:J
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

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

    .line 622
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v10

    .line 632
    :goto_2
    if-eqz v6, :cond_0

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 625
    :cond_5
    const-wide/16 v10, -0x1

    goto :goto_2

    .line 627
    :catch_0
    move-exception v8

    .line 628
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

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 629
    const-wide/16 v10, -0x1

    .line 632
    if-eqz v6, :cond_0

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 632
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_6

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getSortBase()J
    .locals 4

    .prologue
    .line 1083
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1084
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1107
    :goto_0
    return-wide v0

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mSortBase:J

    .line 1107
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 719
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 727
    :goto_0
    return-object v2

    .line 720
    :cond_0
    monitor-enter v0

    .line 721
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 723
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 726
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 727
    :cond_2
    iget-wide v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 822
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 823
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    .line 827
    :goto_0
    return v0

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setDimension()V

    .line 827
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    goto :goto_0
.end method

.method public hasLatLong()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 840
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    if-gez v2, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v1

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 842
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 843
    monitor-enter v0

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 845
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    goto :goto_0

    .line 846
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 853
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public isFavorite()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 561
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->isFavoriteList()Z

    move-result v8

    .line 585
    :cond_0
    :goto_0
    return v8

    .line 564
    :cond_1
    const/4 v6, 0x0

    .line 565
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 567
    .local v8, isFavorite:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

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

    .line 572
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v9, :cond_2

    move v8, v9

    .line 581
    :goto_1
    if-eqz v6, :cond_0

    .line 582
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move v8, v10

    .line 573
    goto :goto_1

    .line 575
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 577
    :catch_0
    move-exception v7

    .line 578
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

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    const/4 v8, 0x0

    .line 581
    if-eqz v6, :cond_0

    .line 582
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 581
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 582
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    .line 961
    :goto_0
    return-object v7

    .line 928
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    .line 929
    .local v1, id:J
    iget-wide v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 930
    .local v4, dbMagic:J
    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-eqz v0, :cond_1

    cmp-long v0, v4, v1

    if-nez v0, :cond_2

    .line 931
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v13

    invoke-virtual {v0, p0, v3, v13}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 935
    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$000()[B

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :try_start_1
    iget-wide v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 937
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->access$100(Lcom/htc/opensense/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 938
    .local v8, data:[B
    if-nez v8, :cond_3

    .line 939
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v14

    invoke-virtual {v0, p0, v3, v14}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 940
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->access$100(Lcom/htc/opensense/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 942
    :cond_3
    if-nez v8, :cond_4

    .line 946
    :cond_4
    if-eqz v8, :cond_6

    .line 947
    const/4 v0, 0x0

    array-length v3, v8

    invoke-static {v8, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 948
    .local v7, b:Landroid/graphics/Bitmap;
    if-nez v7, :cond_5

    .line 953
    :cond_5
    monitor-exit v13

    goto :goto_0

    .line 955
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

    .line 957
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    :catch_0
    move-exception v9

    .line 958
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

    invoke-static {v0, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
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

    .line 960
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

    invoke-static {v0, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 955
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

    .line 956
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 961
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
    .line 966
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    return-void
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 976
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 6
    .parameter "description"

    .prologue
    .line 982
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v2

    if-gez v2, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 984
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 985
    monitor-enter v0

    .line 986
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 988
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 989
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "description"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 992
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
    .line 785
    const/4 v1, 0x0

    .line 787
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 788
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 789
    if-nez v1, :cond_1

    .line 791
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    .line 792
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 812
    if-eqz v1, :cond_0

    .line 813
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 819
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 815
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 816
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 795
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 796
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 797
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 799
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    .line 800
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 812
    if-eqz v1, :cond_0

    .line 813
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 815
    :catch_1
    move-exception v0

    .line 816
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 802
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v0

    .line 803
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 804
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I

    .line 805
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 812
    if-eqz v1, :cond_0

    .line 813
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 815
    :catch_3
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 807
    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 808
    .local v0, ex:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mHeight:I

    iput v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 812
    if-eqz v1, :cond_0

    .line 813
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 815
    :catch_5
    move-exception v0

    .line 816
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 811
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 812
    if-eqz v1, :cond_2

    .line 813
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 817
    :cond_2
    :goto_1
    throw v4

    .line 815
    :catch_6
    move-exception v0

    .line 816
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setIsPrivate(Z)V
    .locals 6
    .parameter "isPrivate"

    .prologue
    .line 999
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexPrivate()I

    move-result v2

    if-gez v2, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1001
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1002
    monitor-enter v0

    .line 1003
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1006
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "isprivate"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1007
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1009
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

    .line 1006
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1017
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1018
    :cond_0
    monitor-enter v0

    .line 1019
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1021
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1022
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1025
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
    .line 1029
    const/4 v6, 0x0

    .line 1031
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

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

    .line 1036
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "picasa_id"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    .line 1053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_1
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v7

    .line 1050
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1052
    if-eqz v6, :cond_1

    .line 1053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1052
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1053
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 1063
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumb"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1064
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
