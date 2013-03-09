.class public Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseData;


# static fields
.field public static final IPXTYPE_COMMENT:I = 0x5

.field public static final IPXTYPE_CUBE:I = 0x1

.field public static final IPXTYPE_FILMSTRIP:I = 0x3

.field public static final IPXTYPE_FULLSCREEN:I = 0x4

.field public static final IPXTYPE_GRID:I = 0x2

.field public static final IPXTYPE_UNKNOW:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_SIZE_FILECACHE:I = 0xa00000

.field public static mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

.field public static mFileCacheRefCount:I


# instance fields
.field protected mAdapterList:Ljava/util/List;

.field private mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

.field private mContext:Landroid/content/Context;

.field private mHandlerData:Landroid/os/Handler;

.field private mIPTType:I

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;",
            ">;"
        }
    .end annotation
.end field

.field protected mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

.field private mImageDefault:Landroid/graphics/Bitmap;

.field private mImageDefaultResid:I

.field protected mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

.field private mIsEnableMemCache:Z

.field private mMaxDownloadBuffer:I

.field private mMaxVisibleBuffer:I

.field private mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

.field private mMemCacheSize:I

.field private mUIScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 65
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 66
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 67
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    .line 70
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    .line 72
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    .line 73
    iput v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 74
    iput v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 75
    iput-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    .line 76
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    .line 80
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    .line 81
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    .line 392
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    .line 103
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    return v0
.end method

.method public static bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bitmapSrc"
    .parameter "bitmapMask"
    .parameter "bitmapFrame"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1443
    const/4 v4, 0x0

    .line 1444
    .local v4, frameSize:I
    const/4 v5, 0x0

    .line 1445
    .local v5, maskSize:I
    move-object v1, p1

    .line 1446
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1447
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1449
    .local v2, bmRet:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1450
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1452
    sub-int v9, v4, v5

    div-int/lit8 v7, v9, 0x2

    .line 1453
    .local v7, rectBegin:I
    add-int v8, v7, v5

    .line 1455
    .local v8, rectEnd:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1457
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1458
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v11, v11, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p2, v9, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1459
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v7, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p0, v9, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1461
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1462
    .local v6, p:Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1463
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v7, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1465
    if-eqz v1, :cond_0

    .line 1467
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1468
    const/4 v1, 0x0

    .line 1470
    :cond_0
    if-eqz v0, :cond_1

    .line 1472
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1473
    const/4 v0, 0x0

    .line 1475
    :cond_1
    if-eqz p2, :cond_2

    .line 1477
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1478
    const/4 p2, 0x0

    .line 1480
    :cond_2
    return-object v2
.end method

.method public static bitmapByScalado(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "szUri"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1394
    const/4 v1, 0x0

    .line 1395
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;-><init>()V

    .line 1396
    .local v0, albumImg:Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;
    iput-boolean v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bVideo:Z

    .line 1397
    iput-boolean v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bDrm:Z

    .line 1398
    iput v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->degree:I

    .line 1399
    const-string v2, "image/jpeg"

    iput-object v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mime:Ljava/lang/String;

    .line 1400
    iput-object p0, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->uri:Landroid/net/Uri;

    .line 1402
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1403
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->degree:I

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImage(Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;)I

    .line 1404
    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->release()V

    .line 1406
    return-object v1
.end method

.method public static bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidthDest"
    .parameter "nHeightDest"

    .prologue
    .line 1413
    if-nez p0, :cond_1

    .line 1416
    const/4 v0, 0x0

    .line 1439
    :cond_0
    :goto_0
    return-object v0

    .line 1418
    :cond_1
    const/4 v0, 0x0

    .line 1420
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1421
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1423
    .local v2, nHeightSrc:I
    sub-int v6, v3, p1

    div-int/lit8 v4, v6, 0x2

    .line 1424
    .local v4, nXMargin:I
    sub-int v6, v2, p2

    div-int/lit8 v5, v6, 0x2

    .line 1428
    .local v5, nYMargin:I
    :try_start_0
    invoke-static {p0, v4, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1435
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1437
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1430
    :catch_0
    move-exception v1

    .line 1432
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][bitmapCropCenter]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bitmapDecodeBySample(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "szFilePath"
    .parameter "nTarget"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1264
    const/4 v0, 0x0

    .line 1266
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1267
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1268
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1269
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1272
    invoke-static {v1, p1}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1274
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1275
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1276
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1278
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1280
    return-object v0
.end method

.method public static bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 1323
    if-nez p0, :cond_1

    .line 1326
    const/4 v7, 0x0

    .line 1349
    :cond_0
    :goto_0
    return-object v7

    .line 1328
    :cond_1
    const/4 v7, 0x0

    .line 1329
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1330
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1331
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1334
    .local v4, nHeightSrc:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1338
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1345
    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1340
    :catch_0
    move-exception v8

    .line 1342
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bitmapResize] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bitmapResize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "szFilePath"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1353
    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 1354
    .local v1, nDimensionSrc:[I
    aget v3, v1, v5

    if-lt v3, v4, :cond_0

    aget v3, v1, v4

    if-ge v3, v4, :cond_1

    .line 1356
    :cond_0
    const/4 v0, 0x0

    .line 1365
    :goto_0
    return-object v0

    .line 1358
    :cond_1
    const/4 v0, 0x0

    .line 1360
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1361
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    aget v3, v1, v5

    aget v4, v1, v4

    invoke-static {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1362
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1363
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1365
    goto :goto_0
.end method

.method public static bitmapResize4Filmstrip(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "szFilePath"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1370
    const/4 v0, 0x0

    .line 1371
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1372
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1373
    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1375
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1376
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1378
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    div-int v3, v5, v6

    .line 1379
    .local v3, sample:I
    if-nez v3, :cond_0

    .line 1380
    const/4 v3, 0x1

    .line 1381
    :cond_0
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v3

    div-int/2addr v5, v6

    const v6, 0x4b000

    if-le v5, v6, :cond_2

    .line 1383
    .local v1, isExtraWidth:Z
    :goto_0
    if-eqz v1, :cond_1

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v7, 0x4112c00000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .end local v3           #sample:I
    :cond_1
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1387
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1388
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1390
    return-object v0

    .end local v1           #isExtraWidth:Z
    .restart local v3       #sample:I
    :cond_2
    move v1, v4

    .line 1381
    goto :goto_0
.end method

.method public static bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmapSrc"
    .parameter "nDimTarget"

    .prologue
    .line 1284
    if-nez p0, :cond_0

    .line 1287
    const/4 v0, 0x0

    .line 1319
    :goto_0
    return-object v0

    .line 1290
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1291
    .local v4, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1293
    .local v2, nHeightSrc:I
    const/4 v0, 0x0

    .line 1294
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1295
    .local v3, nWidth:F
    const/4 v1, 0x0

    .line 1298
    .local v1, nHeight:F
    if-ge v4, v2, :cond_1

    .line 1300
    int-to-float v3, p1

    .line 1301
    mul-int v5, p1, v2

    div-int/2addr v5, v4

    int-to-float v1, v5

    .line 1316
    :goto_1
    float-to-int v5, v3

    float-to-int v6, v1

    invoke-static {p0, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1319
    goto :goto_0

    .line 1304
    :cond_1
    if-le v4, v2, :cond_2

    .line 1306
    mul-int v5, p1, v4

    div-int/2addr v5, v2

    int-to-float v3, v5

    .line 1307
    int-to-float v1, p1

    goto :goto_1

    .line 1311
    :cond_2
    int-to-float v1, p1

    .line 1312
    int-to-float v3, p1

    goto :goto_1
.end method

.method public static createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "szFilePath"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1229
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v2

    .line 1230
    .local v2, nDimensionSrc:[I
    aget v5, v2, v8

    if-lt v5, v7, :cond_0

    aget v5, v2, v7

    if-ge v5, v7, :cond_1

    .line 1232
    :cond_0
    const/4 v5, 0x0

    .line 1260
    :goto_0
    return-object v5

    .line 1235
    :cond_1
    const/4 v4, 0x0

    .line 1236
    .local v4, nWidth:F
    const/4 v3, 0x0

    .line 1239
    .local v3, nHeight:F
    aget v5, v2, v8

    aget v6, v2, v7

    if-ge v5, v6, :cond_2

    .line 1241
    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MAX_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    .line 1242
    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    .line 1256
    :goto_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1257
    float-to-int v5, v4

    float-to-int v6, v3

    invoke-static {v1, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 1260
    goto :goto_0

    .line 1244
    :cond_2
    aget v5, v2, v8

    aget v6, v2, v7

    if-le v5, v6, :cond_3

    .line 1246
    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    .line 1247
    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    goto :goto_1

    .line 1251
    :cond_3
    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    .line 1252
    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v4, v5

    goto :goto_1
.end method

.method public static createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nIndex"
    .parameter "szFilePath"
    .parameter "nDimension"

    .prologue
    const/4 v5, 0x1

    .line 1205
    invoke-static {p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 1206
    .local v3, nDimensionSrc:[I
    const/4 v4, 0x0

    aget v4, v3, v4

    if-lt v4, v5, :cond_0

    aget v4, v3, v5

    if-ge v4, v5, :cond_1

    .line 1208
    :cond_0
    const/4 v0, 0x0

    .line 1221
    :goto_0
    return-object v0

    .line 1211
    :cond_1
    const/4 v0, 0x0

    .line 1212
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1213
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1217
    .local v2, bitmapResized:Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapDecodeBySample(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1218
    invoke-static {v1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1219
    invoke-static {v2, p2, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1221
    goto :goto_0
.end method

.method private doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nPosition"
    .parameter "uri"

    .prologue
    .line 1697
    const/4 v0, 0x0

    .line 1699
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v0

    .line 1715
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1702
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1703
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v3, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 1715
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1706
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][doImageCode]: invalid image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1708
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1710
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][doImageCode]: remove image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private downgradeImageCache()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1750
    const/4 v2, 0x0

    .line 1751
    .local v2, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1752
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1758
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v0, 0x0

    .line 1759
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1761
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 1762
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 1765
    const/4 v4, 0x1

    iget-boolean v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v4, v5, :cond_0

    .line 1767
    iput v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1768
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1769
    iput-boolean v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    goto :goto_0

    .line 1773
    :cond_1
    return-void
.end method

.method private isOnScreenItem(II)Z
    .locals 5
    .parameter "nIndexItem"
    .parameter "nFirstIndex"

    .prologue
    .line 1614
    const/4 v1, 0x0

    .line 1616
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 1617
    .local v0, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 1619
    .local v2, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p2, v4

    .line 1620
    .local v3, nCount:I
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 1621
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1623
    :cond_0
    if-gt p2, p1, :cond_1

    if-le v3, p1, :cond_1

    .line 1624
    const/4 v1, 0x1

    .line 1626
    :cond_1
    return v1
.end method

.method private isOnScreenItemComplete(I)Z
    .locals 9
    .parameter "nFirstIndex"

    .prologue
    .line 1526
    const/4 v2, 0x1

    .line 1528
    .local v2, bIsReady:Z
    const/4 v1, 0x0

    .line 1529
    .local v1, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 1531
    .local v4, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    .line 1532
    .local v5, nCount:I
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 1533
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1535
    :cond_0
    move v6, p1

    .local v6, nIndex:I
    :goto_0
    if-le v5, v6, :cond_2

    .line 1539
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 1535
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1544
    :catch_0
    move-exception v3

    .line 1563
    :cond_2
    :goto_1
    return v2

    .line 1549
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_4

    .line 1552
    const/4 v2, 0x0

    .line 1553
    goto :goto_1

    .line 1555
    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v7, :cond_1

    .line 1558
    const/4 v2, 0x0

    .line 1559
    goto :goto_1
.end method

.method private isOnScreenThumbnailsReady(I)Z
    .locals 9
    .parameter "nFirstIndex"

    .prologue
    .line 1485
    const/4 v2, 0x1

    .line 1487
    .local v2, bIsReady:Z
    const/4 v1, 0x0

    .line 1488
    .local v1, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 1490
    .local v4, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    .line 1491
    .local v5, nCount:I
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 1492
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1494
    :cond_0
    move v6, p1

    .local v6, nIndex:I
    :goto_0
    if-le v5, v6, :cond_2

    .line 1498
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 1494
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1503
    :catch_0
    move-exception v3

    .line 1522
    :cond_2
    :goto_1
    return v2

    .line 1508
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_4

    .line 1511
    const/4 v2, 0x0

    .line 1512
    goto :goto_1

    .line 1514
    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v7, :cond_1

    .line 1517
    const/4 v2, 0x0

    .line 1518
    goto :goto_1
.end method

.method private isValidImage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 1685
    const/4 v0, 0x1

    .line 1687
    .local v0, bResult:Z
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 1688
    .local v1, nDimensionSrc:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    if-lt v2, v3, :cond_0

    aget v2, v1, v3

    if-ge v2, v3, :cond_1

    .line 1690
    :cond_0
    const/4 v0, 0x0

    .line 1693
    :cond_1
    return v0
.end method

.method private prepareGridviewOffscreenPage(I)Z
    .locals 1
    .parameter "nFirstIndex"

    .prologue
    .line 1648
    const/4 v0, 0x0

    .line 1650
    .local v0, bIsReady:Z
    return v0
.end method

.method private prepareImageCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .locals 3
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"

    .prologue
    .line 1630
    const/4 v0, 0x0

    .line 1632
    .local v0, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 1633
    .restart local v0       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iput p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 1634
    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 1635
    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 1636
    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 1637
    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v1

    iput-boolean v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    .line 1639
    invoke-virtual {v0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 1641
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    return-object v0
.end method

.method private requestOnScreenFullImages(I)V
    .locals 8
    .parameter "nFirstIndex"

    .prologue
    .line 1654
    const/4 v0, 0x0

    .line 1655
    .local v0, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 1657
    .local v2, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p1, v5

    .line 1658
    .local v3, nCount:I
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_0

    .line 1659
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 1661
    :cond_0
    move v4, p1

    .local v4, nIndex:I
    :goto_0
    if-le v3, v4, :cond_2

    .line 1665
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_3

    .line 1661
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1668
    .end local v0           #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    :catch_0
    move-exception v1

    .line 1670
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ImageProvider][requestOnScreenFullImages]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 1673
    .restart local v0       #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_1

    .line 1676
    iget-boolean v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 1678
    :cond_4
    iget-boolean v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v5, :cond_1

    .line 1679
    iget v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1
.end method

.method private requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "nIndex"
    .parameter "szUID"
    .parameter "szURL"

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 660
    .local v1, nTaskID:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 671
    .end local v1           #nTaskID:I
    .local v2, nTaskID:I
    :goto_0
    return v2

    .line 663
    .end local v2           #nTaskID:I
    .restart local v1       #nTaskID:I
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 664
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "photo_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v3, "photo_url"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v3, p3, v4, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v1

    move v2, v1

    .line 671
    .end local v1           #nTaskID:I
    .restart local v2       #nTaskID:I
    goto :goto_0
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;ZI)Z
    .locals 4
    .parameter "context"
    .parameter "bIsEnableMemCache"
    .parameter "nMemCacheSize"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, bResult:Z
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 115
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][Initialize]: "

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    .line 118
    iput p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    .line 120
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 121
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    .line 122
    :cond_0
    return v0
.end method

.method public Uninitialize(Z)V
    .locals 3
    .parameter "bIsFreeMem"

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][Uninitialize]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 226
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->release()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    return-void
.end method

.method public cancelDownloadTasks()V
    .locals 8

    .prologue
    .line 1720
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1721
    .local v5, tempImageCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1722
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1724
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 1726
    .local v2, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1731
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v4, 0x0

    .line 1732
    .local v4, nCount:I
    const/4 v0, 0x0

    .line 1733
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1735
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 1736
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 1739
    iget v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v6, :cond_0

    .line 1742
    add-int/lit8 v4, v4, 0x1

    .line 1743
    sget-object v6, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget v7, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->stopDownloadPhotoByTaskId(I)V

    .line 1744
    const/4 v6, 0x0

    iput v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    .line 1747
    :cond_1
    return-void
.end method

.method public changeLayoutType(I)V
    .locals 5
    .parameter "nIPXType"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 277
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][changeLayoutType]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    .line 279
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 280
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->downgradeImageCache()V

    .line 287
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    .line 289
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 292
    :pswitch_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 293
    iput v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 294
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 297
    :pswitch_1
    iput v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 298
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 299
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 302
    :pswitch_2
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 303
    sget-object v0, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MAX_GRIDVIEW_DOWNLOAD_BUFFER:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 304
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "nPosition"
    .parameter "imageCache"
    .parameter "nFirstVisibleIndex"

    .prologue
    .line 953
    const/4 v1, 0x0

    .line 967
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 969
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    .line 972
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    :cond_0
    :goto_0
    move-object v10, v1

    .line 1159
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v10

    .line 975
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v0, :cond_6

    .line 978
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 983
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 986
    :cond_2
    const/4 v1, 0x0

    .line 987
    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 988
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 989
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 990
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    move-object v10, v1

    .line 991
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 994
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 995
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 997
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    .line 1001
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 1006
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v0, :cond_4

    .line 1007
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    .line 1010
    :cond_4
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_5

    .line 1013
    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1016
    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto :goto_0

    .line 1021
    :cond_5
    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1022
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    .line 1027
    :cond_6
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    .line 1031
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1036
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_a

    .line 1039
    :cond_7
    const/4 v1, 0x0

    .line 1040
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_8

    .line 1042
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1043
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1045
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1046
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    .line 1052
    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1055
    :cond_9
    const/4 v1, 0x0

    .line 1056
    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1057
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 1059
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    .line 1068
    :cond_a
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    .line 1071
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_b

    .line 1073
    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1076
    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto/16 :goto_0

    .line 1081
    :cond_b
    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1082
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    .line 1088
    :cond_c
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v0, :cond_f

    .line 1091
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1096
    if-eqz v1, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_e

    .line 1099
    :cond_d
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1102
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    .line 1108
    :cond_e
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1110
    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1112
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    .line 1117
    :cond_f
    const/4 v0, 0x1

    iget-boolean v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v0, v2, :cond_0

    .line 1121
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1122
    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1127
    if-eqz v1, :cond_10

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1129
    :cond_10
    const/4 v1, 0x0

    .line 1130
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v0, :cond_0

    .line 1132
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_11

    .line 1135
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1136
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1138
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1139
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    .line 1145
    :cond_11
    if-eqz v1, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1148
    :cond_12
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1149
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1150
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1151
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0
.end method

.method public doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;Z)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "nPosition"
    .parameter "szURL"
    .parameter "imageCache"
    .parameter "bIsIdle"

    .prologue
    .line 899
    const/4 v1, 0x0

    .line 902
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x5

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-eq v0, v2, :cond_0

    const/4 v0, -0x2

    if-eq v0, p2, :cond_0

    const/4 v0, -0x3

    if-ne v0, p2, :cond_2

    .line 904
    :cond_0
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 949
    :cond_1
    :goto_0
    return-object v1

    .line 906
    :cond_2
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 908
    iget v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_1

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_1

    .line 911
    iget v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    .line 914
    :cond_3
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-boolean v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v0, :cond_4

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_4

    .line 918
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 919
    .local v10, option:Landroid/graphics/BitmapFactory$Options;
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE_ARRAY:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v3

    aget v2, v2, v3

    invoke-static {p2, v0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 920
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 924
    const/4 v0, 0x0

    iput v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    goto :goto_0

    .line 930
    .end local v10           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const/4 v0, 0x1

    iget-boolean v2, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-ne v0, v2, :cond_1

    .line 932
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 934
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_6

    .line 935
    :cond_5
    const/4 v1, 0x0

    .line 937
    :cond_6
    if-nez v1, :cond_1

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_1

    .line 941
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 942
    .restart local v10       #option:Landroid/graphics/BitmapFactory$Options;
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE_ARRAY:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v3

    aget v2, v2, v3

    invoke-static {p2, v0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 943
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    goto/16 :goto_0
.end method

.method public doImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "nPosition"
    .parameter "uriFilePath"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v1, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    :cond_0
    return-object v0
.end method

.method public getBitmapCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    .line 754
    const/4 v8, 0x0

    .line 755
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 756
    .local v10, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    .line 788
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 759
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v10       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v10, :cond_2

    move-object v9, v8

    .line 760
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 762
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    .line 763
    .local v1, szFilePath:Ljava/lang/String;
    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 765
    iget-object v0, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 766
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 774
    :cond_3
    if-nez v8, :cond_4

    .line 776
    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_4

    .line 778
    iget-object v0, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 779
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_4
    move-object v9, v8

    .line 788
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getBitmapCache(ILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "nIndex"
    .parameter "szFilePath"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    .line 804
    const/4 v8, 0x0

    .line 805
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    .line 815
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 808
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v9, v8

    .line 815
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getBitmapDataPath(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Ljava/lang/String;
    .locals 6
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    const/4 v3, 0x0

    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 729
    .local v1, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 731
    :cond_0
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapDataPath]: mMemCacheManager or aPhoto NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 750
    :goto_0
    return-object v2

    .line 735
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v1       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    .line 737
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapDataPath]: imageCache NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 738
    goto :goto_0

    .line 741
    :cond_2
    const/4 v2, 0x0

    .line 742
    .local v2, szFilePath:Ljava/lang/String;
    const/4 v4, 0x1

    iget-object v5, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v5

    if-ne v4, v5, :cond_3

    .line 744
    iget-object v3, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 745
    goto :goto_0

    .line 748
    :cond_3
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapDataPath]: isExistValidImage NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 750
    goto :goto_0
.end method

.method public getBitmapUri(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Landroid/net/Uri;
    .locals 6
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    const/4 v3, 0x0

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 702
    .local v1, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 704
    :cond_0
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapUri]: mMemCacheManager or aPhoto NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :goto_0
    return-object v3

    .line 708
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v1       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    .line 710
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapUri]: no imageCache !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_2
    const/4 v2, 0x0

    .line 715
    .local v2, szFilePath:Ljava/lang/String;
    const/4 v4, 0x1

    iget-object v5, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v5

    if-ne v4, v5, :cond_3

    .line 718
    iget-object v3, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 721
    :cond_3
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapUri]: isExistValidImage NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getDefaultImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "bIsThumbnail"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 598
    const/4 v6, 0x0

    .line 600
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_1

    .line 602
    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    move-object v7, v6

    .line 653
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v7

    .line 606
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 612
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_2

    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v1, :cond_2

    .line 615
    new-instance v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    invoke-direct {v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 616
    .local v4, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iput p2, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 617
    if-eqz p4, :cond_3

    .line 618
    iput-object p3, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 621
    :goto_2
    invoke-virtual {v4, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 623
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v8, bundle:Landroid/os/Bundle;
    const-string v0, "photo_url"

    invoke-virtual {v8, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v0, p3, v1, v8}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v0

    iput v0, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 627
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v4           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .end local v8           #bundle:Landroid/os/Bundle;
    :cond_2
    :goto_3
    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    if-nez p4, :cond_5

    move-object v7, v6

    .line 642
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 620
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iput-object p3, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    goto :goto_2

    .line 635
    .end local v4           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .line 636
    .restart local v4       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget v2, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    move-object v0, p0

    move-object v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    .line 646
    .end local v4           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :cond_5
    if-nez v6, :cond_0

    .line 648
    const/4 v0, -0x2

    if-eq v0, p2, :cond_0

    .line 649
    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"
    .parameter "nFirstVisibleIndex"

    .prologue
    const/4 v6, 0x1

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 846
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v1, v0

    .line 895
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 849
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 855
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v4, :cond_2

    .line 857
    const/4 v2, 0x0

    .line 859
    .local v2, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 861
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v4, v5, :cond_4

    .line 863
    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v4, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v4

    if-ne v6, v4, :cond_3

    .line 865
    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .end local v2           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 895
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 869
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :cond_3
    invoke-direct {p0, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItemComplete(I)Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 871
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][getImageBitmap2]: off screen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 878
    :cond_4
    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 890
    .end local v2           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .line 891
    .restart local v2       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p2, v2, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public getImageBitmapMasked4User(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 1163
    const/4 v8, 0x0

    .line 1164
    .local v8, bitmapFrame:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 1165
    .local v10, bitmapSrc:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 1166
    .local v9, bitmapMask:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 1168
    .local v7, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080702

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1169
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1170
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080703

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1172
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 1174
    invoke-static {v10, v9, v8}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1176
    :cond_0
    if-nez v7, :cond_1

    .line 1178
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 1180
    :cond_1
    return-object v7
.end method

.method public getImageDimension(Ljava/lang/String;)[I
    .locals 3
    .parameter "szUrl"

    .prologue
    .line 379
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 380
    .local v1, nDimension:[I
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .line 381
    .local v0, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 383
    iget-object v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 385
    :cond_0
    return-object v1

    .line 379
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getImageIntegrity(Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)I
    .locals 6
    .parameter "aPhoto"

    .prologue
    .line 580
    const/4 v2, -0x1

    .line 582
    .local v2, nIntegrity:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 594
    .end local v2           #nIntegrity:I
    .local v3, nIntegrity:I
    :goto_0
    return v3

    .line 585
    .end local v3           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    :cond_1
    const/4 v1, 0x0

    .line 586
    .local v1, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    const/4 v0, 0x0

    .line 588
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v1       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    move v3, v2

    .line 589
    .end local v2           #nIntegrity:I
    .restart local v3       #nIntegrity:I
    goto :goto_0

    .line 591
    .end local v3           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    :cond_2
    iget v2, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move v3, v2

    .line 594
    .end local v2           #nIntegrity:I
    .restart local v3       #nIntegrity:I
    goto :goto_0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    return v0
.end method

.method public getMaxDownloadBuffer()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    return v0
.end method

.method public isCenterOnscreenItemComplete(I)Z
    .locals 10
    .parameter "nFirstIndex"

    .prologue
    .line 1567
    const/4 v2, 0x1

    .line 1569
    .local v2, bIsReady:Z
    const/4 v1, 0x0

    .line 1570
    .local v1, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 1572
    .local v4, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    div-int/lit8 v8, v8, 0x2

    sub-int v6, p1, v8

    .line 1573
    .local v6, nPosBegin:I
    iget v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    div-int/lit8 v8, v8, 0x2

    add-int v7, p1, v8

    .line 1575
    .local v7, nPosEnd:I
    if-gez v6, :cond_0

    .line 1576
    const/4 v6, 0x0

    .line 1577
    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v7, :cond_1

    .line 1578
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 1582
    :cond_1
    move v5, v6

    .local v5, nIndex:I
    :goto_0
    if-le v7, v5, :cond_3

    .line 1586
    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    .line 1582
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1591
    :catch_0
    move-exception v3

    .line 1610
    :cond_3
    :goto_1
    return v2

    .line 1596
    :cond_4
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_5

    .line 1599
    const/4 v2, 0x0

    .line 1600
    goto :goto_1

    .line 1602
    :cond_5
    iget-object v8, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_2

    .line 1605
    const/4 v2, 0x0

    .line 1606
    goto :goto_1
.end method

.method public isExistValidImage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uriImage"

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 558
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 571
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 560
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 562
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    move v1, v0

    .line 567
    .restart local v1       #bResult:I
    goto :goto_0

    .line 570
    .end local v1           #bResult:I
    .end local v2           #file:Ljava/io/File;
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 571
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isFileCacheExist(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Z)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .locals 5
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "bForceThumbnail"

    .prologue
    const/4 v4, 0x1

    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-eqz p2, :cond_0

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 552
    .end local v0           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 511
    .end local v1           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_3

    .line 513
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 516
    const/4 v2, 0x2

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_2
    :goto_1
    move-object v1, v0

    .line 552
    .end local v0           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 526
    .end local v1           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    :cond_3
    iget-object v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_4

    .line 529
    iput v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 533
    :cond_4
    iget-object v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_5

    .line 536
    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 537
    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v2, :cond_2

    .line 539
    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 544
    :cond_5
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 545
    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

    .line 546
    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1
.end method

.method public isImageDownloadInProgress()Z
    .locals 6

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 678
    .local v3, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 679
    .local v2, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 681
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v1, 0x0

    .line 682
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 684
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 685
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    check-cast v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    .restart local v3       #imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    if-eqz v3, :cond_0

    .line 687
    iget v5, v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v5, :cond_0

    .line 690
    const/4 v0, 0x1

    .line 696
    :cond_1
    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 131
    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 132
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 138
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onCreate]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 143
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onCreate]: unable to create cache manager!"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1197
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 151
    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 152
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 153
    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onDestroy]: Destroy cache manager instance..."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/CacheManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 166
    :cond_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onDestroy]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 193
    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 194
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 195
    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onPause]: Destroy cache manager instance..."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/CacheManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 208
    :cond_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onPause]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 171
    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 172
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v1, :cond_0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 178
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onResume]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 183
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onResume]: unable to create cache manager!"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][release]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->release()V

    .line 273
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][release]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public releaseMemoryCache()V
    .locals 8

    .prologue
    .line 234
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v7, :cond_0

    .line 235
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 237
    :cond_0
    const/4 v4, 0x0

    .line 238
    .local v4, imageCache:Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    const/4 v6, 0x0

    .line 239
    .local v6, nCountBmp:I
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 240
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 241
    .local v5, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 244
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;>;"
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 247
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 249
    const/4 v7, -0x1

    iput v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 250
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 251
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V
    .locals 3
    .parameter "imageCache"

    .prologue
    const/4 v2, 0x0

    .line 820
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    const/16 v0, 0x4e89

    iget v1, p1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 839
    :goto_0
    return-void

    .line 827
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    iget v1, p1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-interface {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    goto :goto_0

    .line 835
    :cond_1
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setAdapterList(Ljava/util/List;)V
    .locals 1
    .parameter "listAdapter"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-void
.end method

.method public setBitmapCache(ILandroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 9
    .parameter "nIndex"
    .parameter "bitmap"
    .parameter "szFilePath"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v2, p1

    move v3, p4

    move-object v4, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 801
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 1202
    return-void
.end method

.method public setDefaultImage(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "nIPXType"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 331
    :cond_0
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    .line 342
    :pswitch_0
    return-void

    .line 331
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultImageResource(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "nResid"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 320
    :cond_0
    iput p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    .line 321
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 322
    return-void
.end method

.method public setImageDecoder(Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V
    .locals 0
    .parameter "decoder"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    .line 346
    return-void
.end method

.method public setImageDownloadedListener(Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    .line 358
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "nScrollState"

    .prologue
    .line 126
    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 128
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "nBegin"
    .parameter "nEnd"

    .prologue
    .line 361
    if-le p1, p2, :cond_0

    .line 362
    move p2, p1

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->setVisibleRange(II)V

    .line 368
    :cond_1
    return-void
.end method

.method public triggerNotifyImageDownloaded(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    invoke-interface {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    .line 577
    :cond_0
    return-void
.end method
