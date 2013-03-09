.class public Lcom/htc/MusicWidget3D/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MusicWidget3D/MusicUtils$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ATSTAG:Ljava/lang/String; = "MASD"

.field protected static final TAG:Ljava/lang/String; = "[MusicUtils]"

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 258
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 259
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 314
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 315
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 316
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 324
    sget-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 325
    sget-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 327
    sget-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 328
    sget-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 329
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 287
    return-void
.end method

.method public static clearAlbumArtCache()V
    .locals 2

    .prologue
    .line 333
    sget-object v1, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 334
    :try_start_0
    sget-object v0, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static generateReflection(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "srcBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 598
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p1

    if-gt v0, v2, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p2

    if-le v0, v2, :cond_2

    .line 599
    :cond_0
    const-string v2, "[MusicUtils]"

    const-string v4, "The reflection\'s width/height is out of bound"

    invoke-static {v2, v4}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v12, 0x0

    .line 631
    :cond_1
    return-object v12

    .line 603
    :cond_2
    mul-int v2, p1, p2

    new-array v3, v2, [I

    .line 604
    .local v3, srcPix:[I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 605
    .local v16, srcHeight:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 606
    .local v12, bm:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .local v18, y:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 607
    mul-int v4, v18, p1

    const/4 v6, 0x0

    sub-int v2, v16, p2

    add-int v7, v18, v2

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move/from16 v5, p1

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 606
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 610
    :cond_3
    const/4 v10, 0x0

    .line 611
    .local v10, alpha:I
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_6

    .line 612
    const/16 v17, 0x0

    .local v17, x:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, p1

    if-ge v0, v1, :cond_4

    .line 613
    mul-int v2, v18, p1

    add-int v14, v2, v17

    .line 614
    .local v14, index:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v15, v2, 0xff

    .line 615
    .local v15, r:I
    aget v2, v3, v14

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v13, v2, 0xff

    .line 616
    .local v13, g:I
    aget v2, v3, v14

    and-int/lit16 v11, v2, 0xff

    .line 618
    .local v11, b:I
    shl-int/lit8 v2, v15, 0x10

    or-int/2addr v2, v10

    shl-int/lit8 v4, v13, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v11

    aput v2, v3, v14

    .line 612
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 621
    .end local v11           #b:I
    .end local v13           #g:I
    .end local v14           #index:I
    .end local v15           #r:I
    :cond_4
    const/high16 v2, -0x100

    if-eq v10, v2, :cond_5

    .line 622
    const/high16 v2, 0x100

    add-int/2addr v10, v2

    .line 611
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 628
    .end local v17           #x:I
    :cond_6
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 629
    mul-int v4, v18, p1

    const/4 v6, 0x0

    sub-int v2, p2, v18

    add-int/lit8 v7, v2, -0x1

    const/4 v9, 0x1

    move-object v2, v12

    move/from16 v5, p1

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 628
    add-int/lit8 v18, v18, 0x1

    goto :goto_3
.end method

.method public static getAlbumArtReflection(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "res"
    .parameter "art"
    .parameter "reflectionHeight"

    .prologue
    .line 637
    const/16 v17, 0x0

    .line 639
    .local v17, refBitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 640
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 641
    .local v16, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 642
    const/high16 v3, 0x7f02

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 645
    .end local v16           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-eqz p1, :cond_1

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .local v11, albumArtWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 649
    .local v10, albumArtHeight:I
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 650
    .local v15, mode:Landroid/graphics/PorterDuffXfermode;
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    int-to-float v4, v10

    const/4 v5, 0x0

    sub-int v6, v10, p2

    int-to-float v6, v6

    const/high16 v7, 0x7f00

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 652
    .local v2, linearGradinet:Landroid/graphics/LinearGradient;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 653
    .local v14, coverPaint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 654
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 655
    const/16 v3, 0xff

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 657
    add-int v3, v10, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 659
    .local v12, bitmap:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 660
    .local v19, sh1:Landroid/graphics/BitmapShader;
    new-instance v18, Landroid/graphics/ComposeShader;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2, v15}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 662
    .local v18, reflectionShader:Landroid/graphics/ComposeShader;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    .line 663
    .local v13, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v13, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v3, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 666
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    int-to-float v6, v10

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 667
    const/16 v3, 0x40

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 668
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 669
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v3, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 670
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 672
    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-static {v12, v3, v10, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 673
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    .end local v2           #linearGradinet:Landroid/graphics/LinearGradient;
    .end local v10           #albumArtHeight:I
    .end local v11           #albumArtWidth:I
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #canvas:Landroid/graphics/Canvas;
    .end local v14           #coverPaint:Landroid/graphics/Paint;
    .end local v15           #mode:Landroid/graphics/PorterDuffXfermode;
    .end local v18           #reflectionShader:Landroid/graphics/ComposeShader;
    .end local v19           #sh1:Landroid/graphics/BitmapShader;
    :cond_1
    return-object v17
.end method

.method public static getArtworkFromFilePath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 506
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/htc/MusicWidget3D/MusicUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 507
    :cond_0
    const-string v2, "[MusicUtils]"

    const-string v3, "getArtworkFromFilePath()...path is null"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v2, 0x0

    .line 519
    :goto_0
    return-object v2

    .line 511
    :cond_1
    sget-object v2, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 512
    .local v1, temp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 513
    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 514
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    move-object v2, v0

    .line 519
    goto :goto_0

    .line 516
    :cond_2
    const-string v2, "[MusicUtils]"

    const-string v3, "decodeFile()...temp is null"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 372
    add-int/lit8 p2, p2, -0x2

    .line 373
    add-int/lit8 p3, p3, -0x2

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 375
    .local v4, res:Landroid/content/ContentResolver;
    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v10, p1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 376
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_4

    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v9, "r"

    invoke-virtual {v4, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 380
    const/4 v5, 0x1

    .line 385
    .local v5, sampleSize:I
    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 386
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 388
    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v9, 0x1

    .line 389
    .local v3, nextWidth:I
    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v9, 0x1

    .line 390
    .local v2, nextHeight:I
    :goto_0
    if-le v3, p2, :cond_0

    if-le v2, p3, :cond_0

    .line 391
    shl-int/lit8 v5, v5, 0x1

    .line 392
    shr-int/lit8 v3, v3, 0x1

    .line 393
    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    :cond_0
    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v5, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 397
    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 398
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 403
    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v9, p2, :cond_1

    sget-object v9, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, p3, :cond_2

    .line 404
    :cond_1
    const/4 v9, 0x1

    invoke-static {v0, p2, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 405
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    move-object v0, v6

    .line 414
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v1, :cond_3

    .line 415
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 411
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v9

    .line 414
    if-eqz v1, :cond_4

    .line 415
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    move-object v0, v8

    .line 420
    goto :goto_1

    .line 413
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v8

    .line 414
    if-eqz v1, :cond_5

    .line 415
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 417
    :cond_5
    :goto_3
    throw v8

    .line 416
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #nextHeight:I
    .restart local v3       #nextWidth:I
    .restart local v5       #sampleSize:I
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :catch_2
    move-exception v9

    goto :goto_2

    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method public static getArtworkQuickWithWrite(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "service"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 431
    if-gez p2, :cond_1

    .line 437
    invoke-static {p0}, Lcom/htc/MusicWidget3D/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    :cond_0
    :goto_0
    return-object v0

    .line 439
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 440
    .local v4, res:Landroid/content/ContentResolver;
    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v9, p2

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 441
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_6

    .line 442
    const/4 v1, 0x0

    .line 444
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v8, "r"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 447
    if-nez v1, :cond_2

    .line 449
    const-string v8, "[MusicUtils]"

    const-string v9, "fd is null..."

    invoke-static {v8, v9}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 450
    const/4 v0, 0x0

    .line 491
    if-eqz v1, :cond_0

    .line 492
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v8

    goto :goto_0

    .line 454
    :cond_2
    const/4 v5, 0x1

    .line 459
    .local v5, sampleSize:I
    :try_start_2
    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 462
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 464
    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v8, 0x1

    .line 465
    .local v3, nextWidth:I
    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v8, 0x1

    .line 466
    .local v2, nextHeight:I
    :goto_1
    if-le v3, p3, :cond_3

    if-le v2, p4, :cond_3

    .line 467
    shl-int/lit8 v5, v5, 0x1

    .line 468
    shr-int/lit8 v3, v3, 0x1

    .line 469
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 472
    :cond_3
    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 473
    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 474
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 480
    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v8, p3, :cond_4

    sget-object v8, Lcom/htc/MusicWidget3D/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v8, p4, :cond_5

    .line 481
    :cond_4
    const/4 v8, 0x1

    invoke-static {v0, p3, p4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 482
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    move-object v0, v6

    .line 491
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v1, :cond_0

    .line 492
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 493
    :catch_1
    move-exception v8

    goto :goto_0

    .line 488
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :catch_2
    move-exception v8

    .line 491
    if-eqz v1, :cond_6

    .line 492
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 497
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_6
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 490
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v8

    .line 491
    if-eqz v1, :cond_7

    .line 492
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 494
    :cond_7
    :goto_3
    throw v8

    .line 493
    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method public static getCachedArtwork(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "artIndex"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 339
    const/4 v2, 0x0

    .line 340
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 341
    :try_start_0
    sget-object v4, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 342
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    if-nez v2, :cond_0

    .line 348
    invoke-static {p0, p1, p2, p3}, Lcom/htc/MusicWidget3D/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 349
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 350
    new-instance v2, Lcom/htc/MusicWidget3D/MusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/htc/MusicWidget3D/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 351
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 353
    :try_start_1
    sget-object v4, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 354
    .local v3, value:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    .line 355
    sget-object v4, Lcom/htc/MusicWidget3D/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #value:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v2

    .line 342
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 357
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #value:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v2, v3

    goto :goto_0

    .line 359
    .end local v3           #value:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDatabaseErrorStr(Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/htc/music/IMediaPlaybackService;)Ljava/lang/String;
    .locals 8
    .parameter "res"
    .parameter "cursor"
    .parameter "service"

    .prologue
    const v7, 0x7f05000a

    const v6, 0x7f050008

    .line 54
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 55
    .local v1, ret:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, status:Ljava/lang/String;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDatabaseErrorStr()...status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cursor = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-static {}, Lcom/htc/MusicWidget3D/CustomizeSetting;->isInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    const v3, 0x7f050014

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_0
    :goto_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDatabaseErrorStr()...ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v1

    .line 78
    :cond_1
    const v3, 0x7f050010

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_2
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x20c00a1

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_4
    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    const v3, 0x7f050012

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_5
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 113
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_7

    .line 121
    const v3, 0x7f050016

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 128
    :cond_7
    const v3, 0x7f050008

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDatabaseErrorStr e "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 533
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 534
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getTrackCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "cxt"
    .parameter "filterstring"

    .prologue
    const/16 v3, 0x25

    const/4 v1, 0x0

    .line 143
    const/4 v9, 0x0

    .line 144
    .local v9, ret:Landroid/database/Cursor;
    const-string v5, "title_key"

    .line 145
    .local v5, sortOrder:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 148
    .local v2, cursorCols:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, keywords:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 154
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, searchWords:[Ljava/lang/String;
    array-length v0, v10

    new-array v4, v0, [Ljava/lang/String;

    .line 156
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    .line 157
    .local v6, col:Ljava/text/Collator;
    invoke-virtual {v6, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 158
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v10

    if-ge v8, v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v8

    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 158
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const/4 v8, 0x0

    :goto_1
    array-length v0, v10

    if-ge v8, v0, :cond_1

    .line 162
    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v0, "artist_key||"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, "album_key||"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, "title_key LIKE ?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 169
    .end local v6           #col:Ljava/text/Collator;
    .end local v8           #i:I
    .end local v10           #searchWords:[Ljava/lang/String;
    :cond_1
    const-string v0, " AND is_music=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/MusicWidget3D/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 178
    :goto_2
    return-object v9

    .line 173
    :catch_0
    move-exception v7

    .line 175
    .local v7, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 176
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getTrackSize(Landroid/content/Context;I)I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 541
    const/4 v9, -0x1

    .line 542
    .local v9, sizeInKBytes:I
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "_data"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v3, "_size"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/MusicWidget3D/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 543
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_0

    .line 544
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 545
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 546
    .local v8, i:I
    if-ltz v8, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 547
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v9, v0, 0x3e8

    .line 550
    .end local v8           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 552
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_1
    :goto_0
    return v9

    .line 554
    :catch_0
    move-exception v7

    .line 555
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackSize, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUnknownAlbumStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "defaultString"

    .prologue
    .line 572
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.music"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 573
    .local v1, resources:Landroid/content/res/Resources;
    const-string v2, "com.htc.music:string/unknown_album_name"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 575
    .end local v1           #resources:Landroid/content/res/Resources;
    .end local p1
    :goto_0
    return-object p1

    .line 574
    .restart local p1
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getUnknownArtistStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "defaultString"

    .prologue
    .line 563
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.music"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 564
    .local v1, resources:Landroid/content/res/Resources;
    const-string v2, "com.htc.music:string/unknown_artist_name"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 566
    .end local v1           #resources:Landroid/content/res/Resources;
    .end local p1
    :goto_0
    return-object p1

    .line 565
    .restart local p1
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 524
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    const/4 v1, 0x1

    .line 528
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 204
    const/4 v8, 0x0

    .line 206
    .local v8, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/MusicWidget3D/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 212
    const-string v0, "external"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 216
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_1
    :goto_0
    return v8

    .line 218
    :catch_0
    move-exception v7

    .line 220
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaScannerScanning, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isPluginNotReadyOrDMCMode(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "pService"

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, isPluginNotReadyOrDMCMode:Z
    if-eqz p0, :cond_2

    .line 683
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 692
    :cond_2
    :goto_0
    return v1

    .line 683
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, exp:Landroid/os/RemoteException;
    const-string v2, "[MusicUtils]"

    const-string v3, "MediaPlaybackService remote exception"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static launchMusic(Landroid/content/Context;)V
    .locals 4
    .parameter "cxt"

    .prologue
    .line 580
    if-nez p0, :cond_0

    .line 581
    const-string v2, "[MusicUtils]"

    const-string v3, "launchMusic(), cxt is null!"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :goto_0
    return-void

    .line 587
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "[MusicUtils]"

    const-string v3, "Music activity not found."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    .line 265
    sget-object v3, Lcom/htc/MusicWidget3D/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    sget-object v2, Lcom/htc/MusicWidget3D/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 268
    .local v2, timeArgs:[Ljava/lang/Object;
    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 269
    const/4 v3, 0x1

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 270
    const/4 v3, 0x2

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 271
    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 272
    const/4 v3, 0x4

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 274
    div-long v3, p1, v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 275
    const v3, 0x7f050019

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, durationformat_h:Ljava/lang/String;
    sget-object v3, Lcom/htc/MusicWidget3D/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    .end local v1           #durationformat_h:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 278
    :cond_0
    const v3, 0x7f050018

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, durationformat:Ljava/lang/String;
    sget-object v3, Lcom/htc/MusicWidget3D/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 197
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 189
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 190
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query failed, UnsupportedOperationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 191
    goto :goto_0

    .line 192
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 193
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query failed, SQLiteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 194
    goto :goto_0

    .line 195
    .end local v6           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v6

    .line 196
    .local v6, ex:Ljava/lang/Exception;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query failed, Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 197
    goto :goto_0
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x5

    .line 227
    invoke-static {p0}, Lcom/htc/MusicWidget3D/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_0
.end method
