.class public Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;
.super Lcom/htc/graphics/drawable/UrlDrawable;
.source "RemoteUrlDrawable.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteUrlDrawable"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "options"
    .parameter "state"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 38
    return-void
.end method

.method public static generateUrl(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, url:Ljava/lang/String;
    const-string v1, "RemoteUrlDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-object v0
.end method

.method private static getDecodeOption([ILcom/htc/graphics/drawable/UrlDrawable$Dimension;)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .parameter "originalSize"
    .parameter "dim"

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 118
    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    iget v3, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v4, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/opensense/album/util/ImageUtils;->countSampleValue(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    return-object v0
.end method

.method public static getOriginalSize(Ljava/io/FileDescriptor;)[I
    .locals 6
    .parameter "fd"

    .prologue
    const/4 v5, 0x2

    .line 127
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    goto :goto_0

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public getBitmapFromDiskCache()Landroid/graphics/Bitmap;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    const-string v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v5, "video"

    .line 53
    .local v5, mimeType:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    .line 54
    const-string v10, "RemoteUrlDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uri "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 56
    .local v9, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v10, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 58
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v10, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 61
    :try_start_0
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v10, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    .line 62
    .local v1, dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    const-string v10, "image"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 63
    const-string v10, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 64
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "r"

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 66
    .local v3, f:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 67
    .local v4, fd:Ljava/io/FileDescriptor;
    invoke-static {v4}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->getOriginalSize(Ljava/io/FileDescriptor;)[I

    move-result-object v8

    .line 68
    .local v8, ori:[I
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v1}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->getDecodeOption([ILcom/htc/graphics/drawable/UrlDrawable$Dimension;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v12, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v13, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {v10, v11, v12, v13}, Lcom/htc/opensense/album/util/ImageUtils;->countNewSize(IIII)[I

    move-result-object v7

    .line 73
    .local v7, newsize:[I
    const/4 v10, 0x0

    aget v10, v7, v10

    const/4 v11, 0x1

    aget v11, v7, v11

    const/4 v12, 0x1

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 103
    .end local v3           #f:Landroid/os/ParcelFileDescriptor;
    .end local v4           #fd:Ljava/io/FileDescriptor;
    .end local v7           #newsize:[I
    .end local v8           #ori:[I
    :cond_0
    :goto_1
    sget-object v10, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    .end local v1           #dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :goto_2
    return-object v0

    .line 52
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_1
    const-string v5, "image"

    goto/16 :goto_0

    .line 75
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .restart local v5       #mimeType:Ljava/lang/String;
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v10, "file"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 76
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget v11, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v12, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {p0, v10, v11, v12}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    const-string v10, "RemoteUrlDrawable"

    const-string v11, "load from file "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 96
    .end local v1           #dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .end local v3           #f:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-boolean v10, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v10, :cond_3

    .line 98
    const-string v10, "RemoteUrlDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getBitmapFromDiskCache failed!  url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :cond_3
    sget-object v10, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    .line 82
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_4
    :try_start_3
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 84
    .local v6, mmr:Landroid/media/MediaMetadataRetriever;
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 86
    const-wide/16 v10, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v12, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v13, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {v10, v11, v12, v13}, Lcom/htc/opensense/album/util/ImageUtils;->countNewSize(IIII)[I

    move-result-object v7

    .line 90
    .restart local v7       #newsize:[I
    const/4 v10, 0x0

    aget v10, v7, v10

    const/4 v11, 0x1

    aget v11, v7, v11

    const/4 v12, 0x1

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    goto/16 :goto_1

    .line 93
    .end local v7           #newsize:[I
    :cond_5
    iget-object v10, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v10, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 100
    .end local v1           #dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .end local v6           #mmr:Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v2

    .line 101
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "RemoteUrlDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getBitmapFromDiskCache failed!  url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    sget-object v10, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    sget-object v11, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v10
.end method

.method public setRect(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->setBounds(IIII)V

    .line 46
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 47
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/RemoteUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 48
    return-void
.end method

.method public setStart()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart()V

    .line 42
    return-void
.end method

.method public writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method
