.class public Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;
.super Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;
.source "LocalThumbDecodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageThumbDecode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "modifiedTime"
    .parameter "size"
    .parameter "type"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;->this$0:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 147
    invoke-direct/range {p0 .. p6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    .line 148
    return-void
.end method

.method private getOriginalSize(Ljava/lang/String;)[I
    .locals 6
    .parameter "imagePath"

    .prologue
    const/4 v5, 0x2

    .line 252
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 253
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 254
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 255
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

    .line 258
    .end local v1           #option:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNAMiddlelayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
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
.method public decodeThumbnail()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 153
    const-string v7, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ImageThumbDecode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 158
    .local v3, originalSize:[I
    aget v7, v3, v11

    if-lt v7, v10, :cond_0

    aget v7, v3, v10

    if-lt v7, v10, :cond_0

    .line 162
    sget v6, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 163
    .local v6, targetWidth:I
    sget v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    .line 166
    .local v5, targetHeight:I
    aget v7, v3, v11

    aget v8, v3, v10

    if-le v7, v8, :cond_2

    .line 168
    sget v6, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_LONG_SIDE_LENGTH:I

    .line 169
    sget v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SCREEN_SHORT_SIDE_LENGTH:I

    .line 172
    :cond_2
    const/4 v0, 0x0

    .line 174
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v4

    .line 176
    .local v4, scaladoLib2:Lcom/htc/opensense/album/util/ScaladoLib2;
    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    .line 178
    .local v2, handle:I
    if-eqz v2, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {v4, v2, v6, v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 183
    const/4 v7, 0x1

    invoke-virtual {v4, v2, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 184
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v2, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    .line 190
    .local v1, decodeRet:I
    :cond_3
    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v2, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v1

    .line 191
    if-eqz v1, :cond_3

    .line 195
    if-eqz v1, :cond_4

    if-eq v1, v10, :cond_4

    .line 197
    const-string v7, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ImageThumbDecode failed : Error=!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->getError(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    goto :goto_0

    .line 201
    .end local v1           #decodeRet:I
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    throw v7
.end method
