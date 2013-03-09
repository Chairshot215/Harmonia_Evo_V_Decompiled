.class public Lcom/htc/photowidget3d/image/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final NO_RECYCLE_INPUT:Z = false

.field public static final RECYCLE_INPUT:Z = true

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static sNullOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 346
    if-nez p0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 349
    :cond_0
    return-void
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 113
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 114
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 116
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 118
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 122
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 133
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 116
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 118
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 127
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 133
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Lcom/htc/photowidget3d/image/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 99
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 101
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 102
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 108
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 427
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method public static createSetAsIntent(Lcom/htc/photowidget3d/image/IImage;)Landroid/content/Intent;
    .locals 4
    .parameter "image"

    .prologue
    .line 418
    invoke-interface {p0}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 419
    .local v1, u:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p0}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v2, "mimeType"

    invoke-interface {p0}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    return-object v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 353
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getNullOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 336
    const-class v1, Lcom/htc/photowidget3d/image/Util;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/photowidget3d/image/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/htc/photowidget3d/image/Util$1;

    invoke-direct {v0}, Lcom/htc/photowidget3d/image/Util$1;-><init>()V

    sput-object v0, Lcom/htc/photowidget3d/image/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;

    .line 342
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/image/Util;->sNullOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 236
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    .end local v0           #i:I
    :goto_1
    return v0

    .line 235
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "pfd"
    .parameter "options"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 300
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Lcom/htc/photowidget3d/image/Util;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 301
    :cond_0
    if-nez p4, :cond_1

    .line 322
    invoke-static {p4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v3

    .line 302
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v2

    .line 304
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 305
    .local v1, fd:Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 306
    invoke-static {}, Lcom/htc/photowidget3d/image/BitmapManager;->instance()Lcom/htc/photowidget3d/image/BitmapManager;

    move-result-object v4

    invoke-virtual {v4, v1, p5}, Lcom/htc/photowidget3d/image/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 307
    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v5, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v5, :cond_4

    .line 322
    :cond_3
    invoke-static {p4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 311
    :cond_4
    :try_start_2
    invoke-static {p5, p0, p1}, Lcom/htc/photowidget3d/image/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 313
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 315
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 316
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 317
    invoke-static {}, Lcom/htc/photowidget3d/image/BitmapManager;->instance()Lcom/htc/photowidget3d/image/BitmapManager;

    move-result-object v4

    invoke-virtual {v4, v1, p5}, Lcom/htc/photowidget3d/image/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 322
    invoke-static {p4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 318
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 319
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v4, "Util"

    const-string v5, "Got oom exception "

    invoke-static {v4, v5, v0}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    invoke-static {p4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    invoke-static {p4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v3
.end method

.method public static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "useNative"

    .prologue
    .line 270
    const/4 v4, 0x0

    .line 272
    .local v4, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 273
    const/4 v5, 0x0

    .line 274
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz p4, :cond_0

    .line 275
    invoke-static {}, Lcom/htc/photowidget3d/image/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :cond_0
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 277
    invoke-static/range {v0 .. v5}, Lcom/htc/photowidget3d/image/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    invoke-static {v4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v6

    .line 280
    .local v6, ex:Ljava/io/IOException;
    const/4 v0, 0x0

    .line 282
    invoke-static {v4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method public static makeBitmap(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "pfd"
    .parameter "useNative"

    .prologue
    const/4 v2, 0x0

    .line 288
    const/4 v5, 0x0

    .line 289
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz p3, :cond_0

    .line 290
    invoke-static {}, Lcom/htc/photowidget3d/image/Util;->createNativeAllocOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :cond_0
    move v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    .line 292
    invoke-static/range {v0 .. v5}, Lcom/htc/photowidget3d/image/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 329
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    :goto_0
    return-object v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 55
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 56
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 62
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    move-object p0, v7

    .line 71
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 66
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 68
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"
    .parameter "recycle"

    .prologue
    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 148
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 149
    .local v18, deltaY:I
    if-nez p4, :cond_2

    if-ltz v16, :cond_0

    if-gez v18, :cond_2

    .line 156
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 158
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 161
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 162
    .local v19, deltaYHalf:I
    new-instance v26, Landroid/graphics/Rect;

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

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 167
    .local v26, src:Landroid/graphics/Rect;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 168
    .local v21, dstX:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 169
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    if-eqz p5, :cond_1

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v26           #src:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v11

    .line 180
    .end local v11           #b2:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 181
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 183
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 184
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 186
    .local v27, viewAspect:F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_7

    .line 187
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    .line 188
    .local v25, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_6

    .line 189
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 203
    :goto_1
    if-eqz p0, :cond_a

    .line 205
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 211
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz p5, :cond_4

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_4

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 216
    .local v23, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 218
    .local v24, dy1:I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 225
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_1

    .line 226
    if-nez p5, :cond_5

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 227
    :cond_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 191
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #dx1:I
    .end local v24           #dy1:I
    :cond_6
    const/16 p0, 0x0

    goto :goto_1

    .line 194
    .end local v25           #scale:F
    :cond_7
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    .line 195
    .restart local v25       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_8

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_9

    .line 196
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 198
    :cond_9
    const/16 p0, 0x0

    goto :goto_1

    .line 208
    :cond_a
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method
