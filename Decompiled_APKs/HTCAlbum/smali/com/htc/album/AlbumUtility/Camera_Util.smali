.class public Lcom/htc/album/AlbumUtility/Camera_Util;
.super Ljava/lang/Object;
.source "Camera_Util.java"


# static fields
.field public static final MINI_THUMB_TARGET_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "Camera_Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "needRecycleSource"

    .prologue
    .line 151
    const/16 v0, 0x60

    invoke-static {p0, p1, v0}, Lcom/htc/album/AlbumUtility/Camera_Util;->compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "source"
    .parameter "needRecycleSource"
    .parameter "thumbTatgetSize"

    .prologue
    .line 157
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 175
    :goto_0
    return-object v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 162
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 168
    .local v2, scale:F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 169
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 170
    const/4 v3, 0x0

    invoke-static {v0, p0, p2, p2, v3}, Lcom/htc/album/AlbumUtility/Camera_Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    .local v1, miniThumbnail:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    :cond_1
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][compressToMiniThumbnail]: W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v2           #scale:F
    :cond_2
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .restart local v2       #scale:F
    goto :goto_1
.end method

.method public static saveToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "fullPath"
    .parameter "b"

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 179
    const-string v5, "Camera_Util"

    const-string v6, "save to file fail because you didn\'t provide bitmap"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 185
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 190
    if-eqz v4, :cond_3

    .line 192
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    :goto_1
    const/4 v3, 0x0

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 193
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 188
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "Camera_Util"

    const-string v6, "compress error"

    invoke-static {v5, v6, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    if-eqz v3, :cond_0

    .line 192
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 196
    :goto_3
    const/4 v3, 0x0

    goto :goto_0

    .line 193
    :catch_2
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 190
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_2

    .line 192
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 196
    :goto_5
    const/4 v3, 0x0

    :cond_2
    throw v5

    .line 193
    :catch_3
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 190
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 187
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static declared-synchronized transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 20
    const-class v6, Lcom/htc/album/AlbumUtility/Camera_Util;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/album/AlbumUtility/Camera_Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"
    .parameter "config"

    .prologue
    .line 25
    const-class v27, Lcom/htc/album/AlbumUtility/Camera_Util;

    monitor-enter v27

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    .line 27
    :cond_0
    :try_start_0
    const-string v3, "Camera_Util"

    const-string v4, "[HTCAlbum][Camera_Util][transform]: target height less than zero!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 v11, 0x0

    .line 145
    :cond_1
    :goto_0
    monitor-exit v27

    return-object v11

    .line 30
    :cond_2
    if-nez p5, :cond_3

    .line 32
    :try_start_1
    sget-object p5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 35
    :cond_3
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 38
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 40
    .local v18, deltaY:I
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: delta W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "delta H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-nez p4, :cond_5

    if-ltz v16, :cond_4

    if-gez v18, :cond_5

    .line 49
    :cond_4
    const/4 v11, 0x0

    .line 52
    .local v11, b2:Landroid/graphics/Bitmap;
    :try_start_2
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 59
    :try_start_3
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 62
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 63
    .local v19, deltaYHalf:I
    new-instance v25, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v25, src:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 25
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v16           #deltaX:I
    .end local v17           #deltaXHalf:I
    .end local v18           #deltaY:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v25           #src:Landroid/graphics/Rect;
    :catchall_0
    move-exception v3

    monitor-exit v27

    throw v3

    .line 54
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    .restart local v16       #deltaX:I
    .restart local v18       #deltaY:I
    :catch_0
    move-exception v23

    .line 56
    .local v23, oome:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: alloc bitmap OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 74
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #oome:Ljava/lang/OutOfMemoryError;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 75
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 77
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 78
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v26, v3, v4

    .line 80
    .local v26, viewAspect:F
    cmpl-float v3, v12, v26

    if-lez v3, :cond_8

    .line 82
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v24, v3, v13

    .line 83
    .local v24, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v24, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f80

    cmpl-float v3, v24, v3

    if-lez v3, :cond_7

    .line 85
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :goto_1
    if-eqz p0, :cond_b

    .line 111
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    .line 123
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_2
    :try_start_6
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: W: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "H: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 125
    .local v21, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v22

    .line 127
    .local v22, dy1:I
    const/4 v11, 0x0

    .line 130
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    :try_start_7
    div-int/lit8 v3, v21, 0x2

    div-int/lit8 v4, v22, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v11

    .line 142
    :goto_3
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 143
    :try_start_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 89
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v21           #dx1:I
    .end local v22           #dy1:I
    :cond_7
    const/16 p0, 0x0

    goto :goto_1

    .line 94
    .end local v24           #scale:F
    :cond_8
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v24, v3, v14

    .line 95
    .restart local v24       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v24, v3

    if-ltz v3, :cond_9

    const/high16 v3, 0x3f80

    cmpl-float v3, v24, v3

    if-lez v3, :cond_a

    .line 97
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_1

    .line 101
    :cond_a
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 113
    :catch_1
    move-exception v23

    .line 115
    .restart local v23       #oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: scaler OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 121
    .end local v23           #oome:Ljava/lang/OutOfMemoryError;
    :cond_b
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 137
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    .restart local v21       #dx1:I
    .restart local v22       #dy1:I
    :catch_2
    move-exception v23

    .line 139
    .restart local v23       #oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][Camera_Util][transform]: OutOfMemoryError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method
