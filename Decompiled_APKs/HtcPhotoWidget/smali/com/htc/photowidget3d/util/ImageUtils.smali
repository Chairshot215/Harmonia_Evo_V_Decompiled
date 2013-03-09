.class public Lcom/htc/photowidget3d/util/ImageUtils;
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
    .line 23
    const-class v0, Lcom/htc/photowidget3d/util/ImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/util/ImageUtils;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/photowidget3d/util/ImageUtils;->STOP_DECODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelDecode()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/photowidget3d/util/ImageUtils;->STOP_DECODE:Z

    .line 90
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

    .line 33
    sput-boolean v8, Lcom/htc/photowidget3d/util/ImageUtils;->STOP_DECODE:Z

    .line 35
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v3

    .line 36
    .local v3, handler:I
    if-lez v3, :cond_0

    if-ne p4, v6, :cond_0

    .line 38
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 40
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, p3}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 41
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, p1, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 42
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 43
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v4

    .line 44
    .local v4, ret:I
    if-nez v4, :cond_1

    const/4 v5, 0x2

    if-ne p4, v5, :cond_1

    .line 47
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->getMPOPhotosCount(I)I

    move-result v2

    .line 48
    .local v2, frames:I
    if-lez v2, :cond_2

    .line 50
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    .line 58
    .end local v2           #frames:I
    :cond_1
    :goto_0
    if-nez v4, :cond_3

    sget-boolean v5, Lcom/htc/photowidget3d/util/ImageUtils;->STOP_DECODE:Z

    if-nez v5, :cond_3

    .line 60
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v3, v6, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v4

    goto :goto_0

    .line 54
    .restart local v2       #frames:I
    :cond_2
    sget-object v5, Lcom/htc/photowidget3d/util/ImageUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[decodeByScalado] Unable to deocde MPO image with frame count = 0"

    invoke-static {v5, v6}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v2           #frames:I
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/htc/photowidget3d/util/ImageUtils;->STOP_DECODE:Z

    if-eqz v5, :cond_4

    .line 69
    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 v0, 0x0

    .line 82
    :cond_4
    :goto_1
    sput-boolean v8, Lcom/htc/photowidget3d/util/ImageUtils;->STOP_DECODE:Z

    .line 84
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/photowidget3d/util/ImageUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[decodeByScalado] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getExifBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "path"

    .prologue
    .line 95
    const-class v5, Lcom/htc/photowidget3d/util/ImageUtils;

    monitor-enter v5

    const/4 v2, 0x0

    .line 98
    .local v2, exifBmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, exifLoader:Landroid/media/ExifInterface;
    invoke-virtual {v3}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {v3}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    .line 103
    .local v0, data:[B
    const/4 v4, 0x0

    array-length v6, v0

    invoke-static {v0, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    .end local v0           #data:[B
    .end local v3           #exifLoader:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v2

    .line 106
    :catch_0
    move-exception v1

    .line 108
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/htc/photowidget3d/util/ImageUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[getExifBitmap] Unable to create ExifINterface"

    invoke-static {v4, v6}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static getFilePathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 117
    const/4 v9, 0x0

    .line 118
    .local v9, res:Ljava/lang/String;
    const/4 v6, 0x0

    .line 122
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 129
    .local v8, nData:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 139
    .end local v8           #nData:I
    :cond_0
    if-eqz v6, :cond_1

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v6, 0x0

    .line 146
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v9

    .line 133
    :catch_0
    move-exception v7

    .line 135
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/photowidget3d/util/ImageUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getFilePathByUri] occurs exception. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-eqz v6, :cond_1

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v6, 0x0

    goto :goto_0

    .line 139
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v6, 0x0

    :cond_2
    throw v1
.end method
