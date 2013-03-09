.class public Lcom/htc/album/processor/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final DECODE_TYPE_DEFAULT:I = 0x0

.field public static final DECODE_TYPE_JPS:I = 0x1

.field public static final DECODE_TYPE_MPO:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field private static STOP_DECODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/processor/ImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/ImageUtils;->LOG_TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelDecode()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    .line 88
    return-void
.end method

.method public static decodeByScalado(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"
    .parameter "w"
    .parameter "h"
    .parameter "degree"
    .parameter "decodeType"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 31
    sput-boolean v8, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    .line 33
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v3

    .line 34
    .local v3, handler:I
    if-lez v3, :cond_0

    if-ne p4, v6, :cond_0

    .line 36
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 38
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 39
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 40
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 41
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v4

    .line 42
    .local v4, ret:I
    if-nez v4, :cond_1

    const/4 v5, 0x2

    if-ne p4, v5, :cond_1

    .line 45
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v2

    .line 46
    .local v2, frames:I
    if-lez v2, :cond_2

    .line 48
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    .line 56
    .end local v2           #frames:I
    :cond_1
    :goto_0
    if-nez v4, :cond_3

    sget-boolean v5, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    if-nez v5, :cond_3

    .line 58
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v3, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v4

    goto :goto_0

    .line 52
    .restart local v2       #frames:I
    :cond_2
    sget-object v5, Lcom/htc/album/processor/ImageUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[decodeByScalado] Unable to deocde MPO image with frame count = 0"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v2           #frames:I
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    if-eqz v5, :cond_4

    .line 67
    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v0, 0x0

    .line 80
    :cond_4
    :goto_1
    sput-boolean v8, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    .line 82
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 75
    .local v1, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/processor/ImageUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[decodeByScalado] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static decodeFileDescriptor(Landroid/os/ParcelFileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "pfd"
    .parameter "decodeType"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 119
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v3

    .line 120
    .local v3, handler:I
    if-lez v3, :cond_1

    if-ne p1, v6, :cond_1

    .line 122
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 124
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 125
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 126
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I

    move-result v4

    .line 127
    .local v4, ret:I
    if-nez v4, :cond_2

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 130
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v2

    .line 131
    .local v2, frames:I
    if-lez v2, :cond_3

    .line 133
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    .line 141
    .end local v2           #frames:I
    :cond_2
    :goto_1
    if-nez v4, :cond_4

    sget-boolean v5, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    if-nez v5, :cond_4

    .line 143
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v3, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v4

    goto :goto_1

    .line 137
    .restart local v2       #frames:I
    :cond_3
    sget-object v5, Lcom/htc/album/processor/ImageUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[decodeFileDescriptor] Unable to deocde MPO image with frame count = 0"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v2           #frames:I
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    if-eqz v5, :cond_5

    .line 152
    if-eqz v0, :cond_5

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/4 v0, 0x0

    .line 165
    :cond_5
    :goto_2
    sput-boolean v8, Lcom/htc/album/processor/ImageUtils;->STOP_DECODE:Z

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 160
    .local v1, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/processor/ImageUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[decodeFileDescriptor] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static declared-synchronized getExifBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "path"

    .prologue
    .line 93
    const-class v5, Lcom/htc/album/processor/ImageUtils;

    monitor-enter v5

    const/4 v2, 0x0

    .line 96
    .local v2, exifBmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, exifLoader:Landroid/media/ExifInterface;
    invoke-virtual {v3}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {v3}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    .line 101
    .local v0, data:[B
    const/4 v4, 0x0

    array-length v6, v0

    invoke-static {v0, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    .end local v0           #data:[B
    .end local v3           #exifLoader:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v2

    .line 104
    :catch_0
    move-exception v1

    .line 106
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/htc/album/processor/ImageUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[getExifBitmap] Unable to create ExifINterface"

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
