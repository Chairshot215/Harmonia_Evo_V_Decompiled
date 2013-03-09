.class public Lcom/htc/photowidget3d/grid/ImgCache;
.super Ljava/lang/Object;
.source "ImgCache.java"


# instance fields
.field RootFolder:Ljava/lang/String;

.field mBMPTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mScreenLarge:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/photowidget3d/grid/ImgCache;->mScreenLarge:I

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    .line 26
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 27
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/htc/photowidget3d/grid/ImgCache;->mScreenLarge:I

    .line 28
    return-void
.end method

.method private makeCacheFilename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .parameter "nType"

    .prologue
    .line 156
    move-object v0, p1

    .line 157
    .local v0, hash:Ljava/lang/String;
    const-string v1, "%d-%08X-%d.jpg"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/photowidget3d/grid/ImgCache;->mScreenLarge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addFullScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 9
    .parameter "szName"
    .parameter "bmp"

    .prologue
    const/4 v8, 0x0

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, bRet:Z
    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/photowidget3d/grid/ImgCache;->makeCacheFilename(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, cacheName:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, dir:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addFullScreen dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 195
    .end local v2           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    return v8

    .line 175
    .restart local v2       #dir:Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v4, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 181
    :cond_2
    if-eqz v4, :cond_0

    .line 186
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v5, fs:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fs:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 192
    .local v3, error:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public addThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 9
    .parameter "szName"
    .parameter "bmp"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-direct {p0, p1, v6}, Lcom/htc/photowidget3d/grid/ImgCache;->makeCacheFilename(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, cacheName:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v6

    .line 84
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v4, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 94
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 101
    if-eqz v4, :cond_0

    .line 106
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v5, fs:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v6, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fs:Ljava/io/FileOutputStream;
    :goto_1
    move v6, v7

    .line 120
    goto :goto_0

    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :cond_3
    move v6, v7

    .line 98
    goto :goto_0

    .line 110
    .end local v1           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 112
    .local v3, error:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v3           #error:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v6, "Bitmap may be null"

    invoke-static {v6}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public deleteThumbnail(Ljava/lang/String;)Z
    .locals 6
    .parameter "szName"

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-direct {p0, p1, v4}, Lcom/htc/photowidget3d/grid/ImgCache;->makeCacheFilename(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, cacheName:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 148
    .end local v1           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    return v4

    .line 135
    .restart local v1       #dir:Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 145
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 147
    .local v2, error:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "szName"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 43
    invoke-direct {p0, p1, v7}, Lcom/htc/photowidget3d/grid/ImgCache;->makeCacheFilename(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, cacheName:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    .end local v1           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v6

    .line 52
    .restart local v1       #dir:Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, szFilePath:Ljava/lang/String;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 63
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 64
    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 67
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #szFilePath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 69
    .local v2, error:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCacheFolderName(Ljava/lang/String;)V
    .locals 6
    .parameter "szFolderName"

    .prologue
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM/.thumbnails/HtcPhotoGridWidget3D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    .line 34
    .local v1, szRootFolder:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 36
    move-object v0, p1

    .line 37
    .local v0, hash:Ljava/lang/String;
    const-string v2, "%s/%08X"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/ImgCache;->RootFolder:Ljava/lang/String;

    .line 39
    .end local v0           #hash:Ljava/lang/String;
    :cond_0
    return-void
.end method
