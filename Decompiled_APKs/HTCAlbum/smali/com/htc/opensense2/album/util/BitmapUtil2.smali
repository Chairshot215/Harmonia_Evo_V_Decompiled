.class public Lcom/htc/opensense2/album/util/BitmapUtil2;
.super Ljava/lang/Object;
.source "BitmapUtil2.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "album_util2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const-class v0, Lcom/htc/opensense2/album/util/BitmapUtil2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/BitmapUtil2;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DecodeFDBySkia(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native DecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native DecodeStreamBySkia([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 117
    const/4 v0, 0x4

    .line 118
    .local v0, configNum:I
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p2, v1, :cond_0

    .line 119
    const/4 v0, 0x4

    .line 132
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/htc/opensense2/album/util/BitmapUtil2;->nativeCreate(III)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    return-object v1

    .line 120
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p2, v1, :cond_1

    .line 121
    const/4 v0, 0x5

    goto :goto_0

    .line 122
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p2, v1, :cond_2

    .line 123
    const/4 v0, 0x6

    goto :goto_0

    .line 124
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p2, v1, :cond_3

    .line 125
    const/4 v0, 0x2

    goto :goto_0

    .line 128
    :cond_3
    sget-object v1, Lcom/htc/opensense2/album/util/BitmapUtil2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config not supported! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 190
    sget-object v10, Lcom/htc/opensense2/album/util/BitmapUtil2;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Java heap is not enough, use ignore java heap way to create bitmap"

    invoke-static {v10, v11}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v10

    if-nez v10, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move/from16 v0, p4

    if-ne v0, v10, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 236
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 197
    .restart local p0
    :cond_1
    move/from16 v7, p3

    .line 198
    .local v7, neww:I
    move/from16 v6, p4

    .line 199
    .local v6, newh:I
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 203
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, p1, p3

    add-int v11, p2, p4

    move/from16 v0, p2

    invoke-direct {v9, p1, v0, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    .local v9, srcR:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p3

    int-to-float v12, v0

    move/from16 v0, p4

    int-to-float v13, v0

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 206
    .local v4, dstR:Landroid/graphics/RectF;
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 207
    :cond_2
    invoke-static {v7, v6}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmapIgnoreJavaHeap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 208
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 227
    .local v8, paint:Landroid/graphics/Paint;
    :cond_3
    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    invoke-virtual {v2, p0, v9, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 234
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object p0, v1

    .line 236
    goto :goto_0

    .line 210
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v10

    if-nez v10, :cond_7

    :cond_5
    const/4 v5, 0x1

    .line 211
    .local v5, hasAlpha:Z
    :goto_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 212
    .local v3, deviceR:Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 213
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 214
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 215
    invoke-static {v7, v6}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmapIgnoreJavaHeap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 216
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_6

    .line 217
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 219
    :cond_6
    iget v10, v3, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->top:F

    neg-float v11, v11

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 221
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 222
    .restart local v8       #paint:Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 223
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v10

    if-nez v10, :cond_3

    .line 224
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_1

    .line 210
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #deviceR:Landroid/graphics/RectF;
    .end local v5           #hasAlpha:Z
    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static native createBitmapIgnoreJavaHeap(II)Landroid/graphics/Bitmap;
.end method

.method public static cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "source"
    .parameter "croppedRect"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-static {p2, p3, p4}, Lcom/htc/opensense2/album/util/BitmapUtil2;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    .local v1, tmpBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, p0, p1, v2}, Lcom/htc/opensense2/album/util/BitmapUtil2;->nativeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 173
    return-object v1
.end method

.method public static decodeFileDescriptor(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "ctx"
    .parameter "pathName"
    .parameter "opts"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 240
    if-nez p1, :cond_1

    .line 241
    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 242
    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v0, v5

    .line 270
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    const/4 v0, 0x0

    .line 248
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez p0, :cond_2

    move-object v0, v5

    .line 249
    goto :goto_0

    .line 250
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 251
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    const/4 v3, 0x0

    .line 254
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 255
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 260
    if-eqz v3, :cond_0

    .line 261
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    const/4 v3, 0x0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v5, Lcom/htc/opensense2/album/util/BitmapUtil2;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[decodeFileDescriptor] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    if-eqz v3, :cond_0

    .line 261
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 262
    const/4 v3, 0x0

    goto :goto_0

    .line 260
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_3

    .line 261
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 262
    const/4 v3, 0x0

    :cond_3
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 266
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 267
    .local v2, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/opensense2/album/util/BitmapUtil2;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[decodeFileDescriptor] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static native duplicateBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end method

.method public static isUsableBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 274
    const/4 v0, 0x1

    .line 276
    .local v0, bResult:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 279
    :cond_1
    return v0
.end method

.method private static native nativeCreate(III)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public static saveBitmap2PNG(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 7
    .parameter "bitmap"
    .parameter "fileName"
    .parameter "doRecycle"

    .prologue
    .line 297
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v2, 0x0

    .line 302
    .local v2, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, folder:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, path:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .local v3, outStream:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 317
    if-eqz p2, :cond_2

    .line 318
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :cond_2
    if-eqz v3, :cond_7

    .line 323
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 327
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 302
    .end local v1           #folder:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_1

    .line 324
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v1       #folder:Ljava/lang/String;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 327
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #folder:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 313
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    if-eqz p2, :cond_4

    .line 318
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :cond_4
    if-eqz v2, :cond_0

    .line 323
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 324
    :catch_2
    move-exception v0

    .line 326
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 317
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz p2, :cond_5

    .line 318
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :cond_5
    if-eqz v2, :cond_6

    .line 323
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 327
    :cond_6
    :goto_4
    throw v5

    .line 324
    :catch_3
    move-exception v0

    .line 326
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 317
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v1       #folder:Ljava/lang/String;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 311
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :cond_7
    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static saveView2PNG(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 284
    if-nez p0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, rootView:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 290
    .local v1, viewBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 292
    invoke-static {v1, p1, v3}, Lcom/htc/opensense2/album/util/BitmapUtil2;->saveBitmap2PNG(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    goto :goto_0
.end method
