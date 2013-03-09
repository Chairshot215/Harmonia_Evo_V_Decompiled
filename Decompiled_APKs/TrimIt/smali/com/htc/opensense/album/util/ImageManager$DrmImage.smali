.class Lcom/htc/opensense/album/util/ImageManager$DrmImage;
.super Lcom/htc/opensense/album/util/ImageManager$DrmMedia;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImage"
.end annotation


# instance fields
.field private mbGetFrameCount:Z

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "ctx"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 3583
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    .line 3584
    invoke-direct/range {p0 .. p7}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;-><init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    .line 3587
    return-void
.end method

.method private createToFile(Ljava/io/InputStream;)V
    .locals 8
    .parameter "is"

    .prologue
    .line 3732
    if-nez p1, :cond_1

    .line 3760
    :cond_0
    :goto_0
    return-void

    .line 3735
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v6, "temp.dat"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3736
    .local v3, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 3738
    .local v4, fs:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3739
    const-string v6, "DRM-"

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3741
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #fs:Ljava/io/FileOutputStream;
    .local v5, fs:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 3746
    .end local v5           #fs:Ljava/io/FileOutputStream;
    .restart local v4       #fs:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 3750
    const/16 v6, 0x400

    :try_start_1
    new-array v1, v6, [B

    .line 3752
    .local v1, data:[B
    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 3753
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3757
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 3758
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3742
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 3743
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3755
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 3756
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 8
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 3763
    if-nez p1, :cond_1

    .line 3782
    :cond_0
    :goto_0
    return-object v4

    .line 3765
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3768
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 3770
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 3771
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3774
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 3775
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memeory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    if-eqz v3, :cond_0

    .line 3782
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 3773
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3776
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_1
    move-exception v2

    .line 3777
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
    .line 3673
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mbGetFrameCount:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 3674
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 3675
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3676
    new-instance v1, Lcom/htc/opensense/album/util/GIFImageParser;

    invoke-direct {v1}, Lcom/htc/opensense/album/util/GIFImageParser;-><init>()V

    .line 3677
    .local v1, parser:Lcom/htc/opensense/album/util/GIFImageParser;
    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/util/GIFImageParser;->setRawData([B)V

    .line 3678
    invoke-virtual {v1}, Lcom/htc/opensense/album/util/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mFrameCount:I

    .line 3680
    .end local v1           #parser:Lcom/htc/opensense/album/util/GIFImageParser;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mbGetFrameCount:Z

    .line 3682
    .end local v0           #mimeType:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected decryptDrmMedia()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 3895
    const/4 v1, 0x0

    .line 3897
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 3899
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3904
    :cond_0
    :goto_0
    return-object v1

    .line 3901
    :catch_0
    move-exception v0

    .line 3902
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "error when decoed drm file"

    invoke-static {v2, v3, v0}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected decryptDrmMediaWithoutDialog()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 3882
    const/4 v1, 0x0

    .line 3884
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getDrmStateWithoutDialog()I

    move-result v2

    if-nez v2, :cond_0

    .line 3886
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3891
    :cond_0
    :goto_0
    return-object v1

    .line 3888
    :catch_0
    move-exception v0

    .line 3889
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
    .line 3786
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 3788
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 3789
    const/4 v0, 0x0

    .line 3824
    :cond_0
    :goto_0
    return-object v0

    .line 3791
    :cond_1
    const/4 v0, 0x0

    .line 3794
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3795
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 3796
    .local v3, ret:I
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3798
    :cond_2
    const/16 v4, -0xff

    if-eq v3, v4, :cond_3

    .line 3800
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3801
    const/4 v0, 0x0

    .line 3815
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3821
    .end local v3           #ret:I
    :goto_1
    if-nez v0, :cond_0

    .line 3822
    const-string v4, "ImageManager"

    const-string v5, "can not created DRM miniThumbBitmap"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3816
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 3817
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3804
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 3806
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of memory. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3815
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3816
    :catch_2
    move-exception v1

    .line 3817
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3808
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 3810
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

    .line 3815
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 3816
    :catch_4
    move-exception v1

    .line 3817
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3814
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 3815
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3818
    :goto_2
    throw v4

    .line 3816
    :catch_5
    move-exception v1

    .line 3817
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getDateTaken()J
    .locals 3

    .prologue
    .line 3936
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 3941
    :goto_0
    return-wide v1

    .line 3937
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3938
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 3939
    :cond_1
    monitor-enter v0

    .line 3940
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3941
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v1, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    .line 3942
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDrmType()I
    .locals 3

    .prologue
    .line 3921
    const/4 v1, -0x1

    .line 3922
    .local v1, drmType:I
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3923
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 3929
    :goto_0
    return v2

    .line 3924
    :cond_0
    monitor-enter v0

    .line 3925
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3926
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->indexDeliveryType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3928
    :cond_1
    monitor-exit v0

    move v2, v1

    .line 3929
    goto :goto_0

    .line 3928
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getFrameCount()I
    .locals 6

    .prologue
    .line 3594
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mbGetFrameCount:Z

    if-nez v3, :cond_0

    .line 3595
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->decryptDrmMediaWithoutDialog()Ljava/io/InputStream;

    move-result-object v2

    .line 3596
    .local v2, is:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 3597
    .local v0, data:[B
    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getGifFrame([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3605
    .end local v0           #data:[B
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mFrameCount:I

    return v3

    .line 3600
    :catch_0
    move-exception v1

    .line 3602
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFrameCount fail. "

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
    .line 3657
    const/4 v0, -0x1

    .line 3668
    .local v0, height:I
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3909
    const/4 v1, 0x0

    .line 3910
    .local v1, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3911
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 3917
    :goto_0
    return-object v2

    .line 3912
    :cond_0
    monitor-enter v0

    .line 3913
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3914
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    check-cast v2, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->indexMimeType()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3916
    :cond_1
    monitor-exit v0

    move-object v2, v1

    .line 3917
    goto :goto_0

    .line 3916
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 3642
    const/4 v0, -0x1

    .line 3653
    .local v0, width:I
    return v0
.end method

.method protected makeBitmap(ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "targetWidthHeight"
    .parameter "is"

    .prologue
    const/4 v8, 0x0

    .line 3609
    const/4 v0, 0x0

    .line 3611
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3614
    .local v3, lt1:J
    if-nez p2, :cond_1

    .line 3638
    :cond_0
    :goto_0
    return-object v8

    .line 3618
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 3619
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 3623
    invoke-direct {p0, v1}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->getGifFrame([B)V

    .line 3624
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3625
    .local v7, source:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 3626
    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/htc/opensense/album/util/MediaUtils;->compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3635
    .local v5, lt2:J
    if-eqz v0, :cond_2

    :cond_2
    move-object v8, v0

    .line 3638
    goto :goto_0

    .line 3627
    .end local v1           #data:[B
    .end local v5           #lt2:J
    .end local v7           #source:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 3628
    .local v2, ex:Ljava/io/IOException;
    const-string v9, "ImageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got io exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 3685
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 3687
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 3688
    const/4 v4, 0x0

    .line 3728
    :cond_0
    :goto_0
    return-object v4

    .line 3690
    :cond_1
    const/4 v4, 0x0

    .line 3693
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3694
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 3696
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 3698
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3699
    const/4 v0, 0x0

    .line 3702
    :cond_2
    if-eqz v0, :cond_3

    .line 3704
    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3705
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3719
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3725
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 3726
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM miniThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3720
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 3721
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3708
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 3710
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3719
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3720
    :catch_2
    move-exception v1

    .line 3721
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3712
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 3714
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

    .line 3719
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 3720
    :catch_4
    move-exception v1

    .line 3721
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3718
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3719
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3722
    :goto_2
    throw v5

    .line 3720
    :catch_5
    move-exception v1

    .line 3721
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 3828
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->decryptDrmMedia()Ljava/io/InputStream;

    move-result-object v2

    .line 3830
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 3831
    const/4 v4, 0x0

    .line 3877
    :cond_0
    :goto_0
    return-object v4

    .line 3833
    :cond_1
    const/4 v4, 0x0

    .line 3836
    .local v4, retBmp:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3837
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I

    move-result v3

    .line 3839
    .local v3, ret:I
    const/16 v5, -0xff

    if-eq v3, v5, :cond_2

    .line 3841
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3842
    const/4 v0, 0x0

    .line 3851
    :cond_2
    if-eqz v0, :cond_3

    .line 3853
    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3854
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3868
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3874
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #ret:I
    :goto_1
    if-nez v4, :cond_0

    .line 3875
    const-string v5, "ImageManager"

    const-string v6, "can not created DRM ThumbBitmap"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3869
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #ret:I
    :catch_0
    move-exception v1

    .line 3870
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close input stream fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3857
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catch_1
    move-exception v1

    .line 3859
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out of memory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3868
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3869
    :catch_2
    move-exception v1

    .line 3870
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close input stream fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3861
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 3863
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

    .line 3868
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 3869
    :catch_4
    move-exception v1

    .line 3870
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "close input stream fail"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3867
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3868
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3871
    :goto_2
    throw v5

    .line 3869
    :catch_5
    move-exception v1

    .line 3870
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageManager"

    const-string v7, "close input stream fail"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
