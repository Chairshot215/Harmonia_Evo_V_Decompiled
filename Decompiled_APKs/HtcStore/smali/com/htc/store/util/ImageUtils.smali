.class public Lcom/htc/store/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCachedDrawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sCachedDrawablesKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedPhotosKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/store/util/ImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/ImageUtils;->sCachedDrawablesKey:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/ImageUtils;->sCachedPhotosKey:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCachedDrawables(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "key"
    .parameter "drawable"

    .prologue
    .line 90
    sget-object v0, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/htc/store/util/ImageUtils;->sCachedDrawablesKey:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "add cache "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static bitmap2byteArray(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "b"

    .prologue
    .line 358
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 360
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized clearAllCache()V
    .locals 5

    .prologue
    .line 46
    const-class v1, Lcom/htc/store/util/ImageUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 47
    sget-object v0, Lcom/htc/store/util/ImageUtils;->sCachedDrawablesKey:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    sget-object v0, Lcom/htc/store/util/ImageUtils;->sCachedPhotosKey:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    sget-object v0, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "all cache are cleared"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v1

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearCache()V
    .locals 6

    .prologue
    .line 53
    const-class v2, Lcom/htc/store/util/ImageUtils;

    monitor-enter v2

    const/4 v0, 0x0

    .line 54
    .local v0, size:I
    :try_start_0
    sget-object v1, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 55
    sget-object v1, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    sget-object v3, Lcom/htc/store/util/ImageUtils;->sCachedDrawablesKey:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/htc/store/util/ImageUtils;->clearExpirableCache(Ljava/util/Map;Ljava/util/List;)V

    .line 56
    sget-object v1, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Drawable cahche is cleared from "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, " to "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v2

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized clearExpirableCache(Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;>;"
    .local p1, cacheKey:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, Lcom/htc/store/util/ImageUtils;

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 61
    .local v0, cacheSize:I
    const/16 v3, 0x32

    if-le v0, v3, :cond_0

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, expirableZone:I
    int-to-float v3, v0

    const v5, 0x3e99999a

    mul-float/2addr v3, v5

    float-to-int v1, v3

    .line 65
    sget-object v3, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Cache size is "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ", and there are "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, " to be removed"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    if-le v0, v1, :cond_1

    .line 67
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 68
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v1           #expirableZone:I
    .end local v2           #i:I
    :cond_0
    sget-object v3, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Cache size is only "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ", and needn\'t to be cleared"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    monitor-exit v4

    return-void

    .line 60
    .end local v0           #cacheSize:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized clearPhotoCache()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/htc/store/util/ImageUtils;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "d"

    .prologue
    const/4 v5, 0x0

    .line 350
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, bp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 353
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    return-object v0
.end method

.method public static drawable2bitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "d"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 342
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 344
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 345
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    return-object v0
.end method

.method public static generateReflectionImage(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 21
    .parameter "res"
    .parameter "source"

    .prologue
    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 366
    .local v5, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 368
    .local v18, height:I
    div-int/lit8 v4, v18, 0x3

    .line 369
    .local v4, skipHeight:I
    const/4 v4, 0x0

    .line 371
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    invoke-static {v5, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 372
    .local v16, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 373
    .local v7, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 375
    invoke-static/range {p1 .. p1}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    sub-int v6, v18, v4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 376
    .local v20, reflection:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 377
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 380
    .local v19, paint:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/high16 v10, 0x4270

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0xffffff

    const v14, 0x55ffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 381
    .local v8, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 382
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 383
    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v5

    sub-int v2, v18, v4

    int-to-float v13, v2

    move-object/from16 v9, v17

    move-object/from16 v14, v19

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 385
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public static declared-synchronized getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
    .locals 15
    .parameter "res"
    .parameter "filepath"
    .parameter "width"
    .parameter "height"
    .parameter "sampleSize"
    .parameter "scaled"

    .prologue
    .line 97
    const-class v11, Lcom/htc/store/util/ImageUtils;

    monitor-enter v11

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 98
    const/4 v6, 0x0

    .line 151
    :goto_0
    monitor-exit v11

    return-object v6

    .line 105
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p5}, Lcom/htc/store/util/ImageUtils;->getCachedImageKey(Ljava/lang/String;IIIZ)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, key:Ljava/lang/String;
    sget-object v10, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 107
    .local v8, tempReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    move-object v6, v10

    .line 109
    .local v6, result:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-nez v6, :cond_6

    .line 110
    sget-object v10, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "getCachedImage, read "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    const-string v14, " from file"

    aput-object v14, v12, v13

    invoke-static {v10, v12}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 114
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 115
    .local v4, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 116
    const/4 v10, 0x0

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 117
    move/from16 v0, p4

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 119
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 128
    .end local v4           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    .line 130
    if-eqz p5, :cond_4

    :try_start_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move/from16 v0, p2

    if-gt v10, v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move/from16 v0, p3

    if-le v10, v0, :cond_4

    .line 131
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move/from16 v0, p2

    int-to-float v13, v0

    move/from16 v0, p3

    int-to-float v14, v0

    invoke-static {v10, v12, v13, v14}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v5

    .line 132
    .local v5, organizedSize:[I
    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v12, 0x1

    aget v12, v5, v12

    const/4 v13, 0x1

    invoke-static {v1, v10, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 133
    .local v9, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v6           #result:Landroid/graphics/drawable/Drawable;
    .local v7, result:Landroid/graphics/drawable/Drawable;
    move-object v6, v7

    .line 138
    .end local v5           #organizedSize:[I
    .end local v7           #result:Landroid/graphics/drawable/Drawable;
    .end local v9           #tmp:Landroid/graphics/Bitmap;
    .restart local v6       #result:Landroid/graphics/drawable/Drawable;
    :goto_3
    sget-object v10, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    new-instance v12, Ljava/lang/ref/SoftReference;

    invoke-direct {v12, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v10, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v10, Lcom/htc/store/util/ImageUtils;->sCachedDrawablesKey:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    goto/16 :goto_0

    .line 107
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #result:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 120
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #result:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v2

    .line 121
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    .line 122
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 97
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #result:Landroid/graphics/drawable/Drawable;
    .end local v8           #tempReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 123
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v6       #result:Landroid/graphics/drawable/Drawable;
    .restart local v8       #tempReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catch_2
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 136
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_5
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    .end local v6           #result:Landroid/graphics/drawable/Drawable;
    .restart local v7       #result:Landroid/graphics/drawable/Drawable;
    move-object v6, v7

    .end local v7           #result:Landroid/graphics/drawable/Drawable;
    .restart local v6       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 145
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 148
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_6
    :try_start_6
    sget-object v10, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "getCachedImage, read "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    const/4 v13, 0x2

    const-string v14, " from cache"

    aput-object v14, v12, v13

    invoke-static {v10, v12}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static getCachedImageKey(Ljava/lang/String;IIIZ)Ljava/lang/String;
    .locals 3
    .parameter "filepath"
    .parameter "width"
    .parameter "height"
    .parameter "sampleSize"
    .parameter "scaled"

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 84
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getCategoryIcon(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 282
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 283
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 284
    .local v2, iconSizeLimit:I
    invoke-static {p1, p2, p3}, Lcom/htc/store/util/StorageUtils;->getCategoryIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v6

    return-object v1

    .line 282
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v2           #iconSizeLimit:I
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public static declared-synchronized getFeaturedIcon(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "onlineId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 303
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/htc/store/util/StorageUtils;->getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
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

.method public static declared-synchronized getFeaturedIconReflection(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"
    .parameter "source"

    .prologue
    .line 307
    const-class v0, Lcom/htc/store/util/ImageUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/store/util/ImageUtils;->generateReflectionImage(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstalledAppIcon(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 17
    .parameter "context"
    .parameter "packageName"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 174
    const-class v13, Lcom/htc/store/util/ImageUtils;

    monitor-enter v13

    const/4 v7, 0x0

    .line 175
    .local v7, result:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 176
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 177
    .local v9, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, key:Ljava/lang/String;
    sget-object v12, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/SoftReference;

    .line 179
    .local v10, tempReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable;

    move-object v7, v12

    .line 181
    :goto_0
    if-nez v7, :cond_1

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 184
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 185
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, bm:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-static {v3}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move/from16 v0, p2

    if-gt v12, v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move/from16 v0, p3

    if-le v12, v0, :cond_3

    .line 190
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    move/from16 v0, p2

    int-to-float v15, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v5

    .line 191
    .local v5, organizedSize:[I
    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v14, 0x1

    aget v14, v5, v14

    const/4 v15, 0x1

    invoke-static {v1, v12, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 192
    .local v11, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v8, v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v7           #result:Landroid/graphics/drawable/Drawable;
    .local v8, result:Landroid/graphics/drawable/Drawable;
    move-object v7, v8

    .line 197
    .end local v5           #organizedSize:[I
    .end local v8           #result:Landroid/graphics/drawable/Drawable;
    .end local v11           #tmp:Landroid/graphics/Bitmap;
    .restart local v7       #result:Landroid/graphics/drawable/Drawable;
    :goto_1
    sget-object v12, Lcom/htc/store/util/ImageUtils;->sCachedDrawables:Ljava/util/Map;

    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-direct {v14, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v12, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v12, Lcom/htc/store/util/ImageUtils;->sCachedDrawablesKey:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #tempReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    :goto_2
    monitor-exit v13

    return-object v7

    .line 179
    .restart local v4       #key:Ljava/lang/String;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #tempReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 195
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_3
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v8, v12, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v7           #result:Landroid/graphics/drawable/Drawable;
    .restart local v8       #result:Landroid/graphics/drawable/Drawable;
    move-object v7, v8

    .end local v8           #result:Landroid/graphics/drawable/Drawable;
    .restart local v7       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    .line 201
    const/4 v7, 0x0

    goto :goto_2

    .line 204
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v2

    .line 205
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    sget-object v12, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "Package not installed: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-static {v12, v14}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 174
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #tempReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12
.end method

.method public static declared-synchronized getItemBmpIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 333
    const-class v3, Lcom/htc/store/util/ImageUtils;

    monitor-enter v3

    const/4 v0, 0x0

    .line 334
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/store/util/ImageUtils;->getItemIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 335
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 336
    invoke-static {v1}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 338
    :cond_0
    monitor-exit v3

    return-object v0

    .line 333
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getItemBmpIcon(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 324
    const-class v3, Lcom/htc/store/util/ImageUtils;

    monitor-enter v3

    const/4 v0, 0x0

    .line 325
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/htc/store/util/ImageUtils;->getItemIcon(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 326
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 327
    invoke-static {v1}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 329
    :cond_0
    monitor-exit v3

    return-object v0

    .line 324
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getItemIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 270
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 272
    .local v2, iconSizeLimit:I
    invoke-static {p1}, Lcom/htc/store/util/StorageUtils;->getItemIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v6

    return-object v1

    .line 270
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v2           #iconSizeLimit:I
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public static declared-synchronized getItemIcon(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "onlineId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 260
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/store/util/StorageUtils;->getItemIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
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

.method public static declared-synchronized getItemPreviewLandscape(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "index"

    .prologue
    .line 248
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p4}, Lcom/htc/store/util/StorageUtils;->getItemPreviewLandscapeFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
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

.method public static declared-synchronized getItemPreviewPortrait(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "index"

    .prologue
    .line 235
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p4}, Lcom/htc/store/util/StorageUtils;->getItemPreviewPortraitFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
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

.method public static declared-synchronized getItemSnapshot(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "index"

    .prologue
    .line 222
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p4}, Lcom/htc/store/util/StorageUtils;->getItemSnapshotFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
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

.method public static declared-synchronized getPromoPreview(Landroid/content/Context;JLjava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "onlineId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 299
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/htc/store/util/StorageUtils;->getPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
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

.method public static declared-synchronized getSharedIcon(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    .line 288
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x205004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 290
    .local v2, iconSizeLimit:I
    invoke-static {p1, p2}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v6

    return-object v1

    .line 288
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v2           #iconSizeLimit:I
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public static declared-synchronized getSharedIcon(Landroid/content/Context;JII)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 294
    const-class v6, Lcom/htc/store/util/ImageUtils;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 295
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p1, p2}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/ImageUtils;->getCachedImage(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v6

    return-object v1

    .line 294
    .end local v0           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public static organizeSize(FFFF)[I
    .locals 6
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "preferredWidth"
    .parameter "preferredHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 156
    .local v0, organizedSize:[I
    div-float v1, p0, p1

    .line 157
    .local v1, originalRatio:F
    div-float v2, p2, p3

    .line 158
    .local v2, preferredRatio:F
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    .line 159
    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    .line 160
    mul-float v3, p3, v1

    float-to-int v3, v3

    aput v3, v0, v4

    .line 161
    float-to-int v3, p3

    aput v3, v0, v5

    .line 170
    :goto_0
    return-object v0

    .line 163
    :cond_0
    float-to-int v3, p2

    aput v3, v0, v4

    .line 164
    div-float v3, p2, v1

    float-to-int v3, v3

    aput v3, v0, v5

    goto :goto_0

    .line 167
    :cond_1
    float-to-int v3, p2

    aput v3, v0, v4

    .line 168
    float-to-int v3, p3

    aput v3, v0, v5

    goto :goto_0
.end method

.method public static resizeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "resources"
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x1

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .local v5, start:J
    move-object v0, p1

    .line 453
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 454
    .local v0, bDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, p2, p3, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 455
    .local v1, bmp:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 456
    .local v4, result:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 457
    .local v2, end:J
    sget-object v7, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "resize drawable end, and cost "

    aput-object v10, v8, v9

    sub-long v9, v2, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    const-string v10, " mseconds"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    return-object v4
.end method

.method public static safelyRecycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 446
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    :cond_0
    return-void
.end method

.method public static writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 1
    .parameter "image"
    .parameter "target"
    .parameter "format"

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-static {p0, p1, p2, v0, v0}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;II)Z

    move-result v0

    return v0
.end method

.method public static writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;II)Z
    .locals 11
    .parameter "image"
    .parameter "target"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 410
    if-nez p0, :cond_0

    .line 442
    :goto_0
    return v5

    .line 411
    :cond_0
    const/4 v2, 0x0

    .line 415
    .local v2, fos:Ljava/io/FileOutputStream;
    if-lez p3, :cond_2

    if-lez p4, :cond_2

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, p3

    int-to-float v10, p4

    invoke-static {v7, v8, v9, v10}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v4

    .line 417
    .local v4, organizedSize:[I
    aget v7, v4, v5

    aget v8, v4, v6

    invoke-static {p0, v7, v8, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    .end local v4           #organizedSize:[I
    .local v0, bmp:Landroid/graphics/Bitmap;
    :goto_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v5, 0x64

    :try_start_1
    invoke-virtual {v0, p2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 425
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 426
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 427
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 428
    const/4 v2, 0x0

    .line 433
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_1

    .line 434
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 435
    const/4 v2, 0x0

    :cond_1
    :goto_2
    move v5, v6

    .line 442
    goto :goto_0

    .line 419
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    move-object v0, p0

    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, e:Ljava/io/IOException;
    sget-object v5, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 429
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 430
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-object v5, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    if-eqz v2, :cond_1

    .line 434
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 435
    const/4 v2, 0x0

    goto :goto_2

    .line 437
    :catch_2
    move-exception v1

    .line 438
    sget-object v5, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 432
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 433
    :goto_4
    if-eqz v2, :cond_3

    .line 434
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 435
    const/4 v2, 0x0

    .line 439
    :cond_3
    :goto_5
    throw v5

    .line 437
    :catch_3
    move-exception v1

    .line 438
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v6, Lcom/htc/store/util/ImageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 432
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 429
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static writeImageFile(Landroid/graphics/drawable/Drawable;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 2
    .parameter "drawable"
    .parameter "target"
    .parameter "format"

    .prologue
    const/4 v0, 0x0

    .line 389
    if-nez p0, :cond_0

    .line 390
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;II)Z

    move-result v0

    goto :goto_0
.end method

.method public static writeImageFile(Landroid/graphics/drawable/Drawable;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;II)Z
    .locals 2
    .parameter "drawable"
    .parameter "target"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, result:Z
    if-nez p0, :cond_0

    .line 396
    const/4 v1, 0x0

    .line 402
    :goto_0
    return v1

    .line 398
    :cond_0
    invoke-static {p0}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;II)Z

    move-result v1

    .line 400
    invoke-static {v0}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
