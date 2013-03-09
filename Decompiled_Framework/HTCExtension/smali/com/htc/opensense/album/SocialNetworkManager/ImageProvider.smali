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

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    iput v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    iput v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    iput-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    return v0
.end method

.method public static bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v9, v4, v5

    div-int/lit8 v7, v9, 0x2

    add-int v8, v7, v5

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v11, v11, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p2, v9, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v7, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p0, v9, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v7, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    :cond_2
    return-object v2
.end method

.method public static bitmapByScalado(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;-><init>()V

    iput-boolean v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bVideo:Z

    iput-boolean v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bDrm:Z

    iput v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->degree:I

    const-string v2, "image/jpeg"

    iput-object v2, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mime:Ljava/lang/String;

    iput-object p0, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->uri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->degree:I

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImage(Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;)I

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->release()V

    return-object v1
.end method

.method public static bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v6, v3, p1

    div-int/lit8 v4, v6, 0x2

    sub-int v6, v2, p2

    div-int/lit8 v5, v6, 0x2

    :try_start_0
    invoke-static {p0, v4, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v1

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, p1}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p0, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v8

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

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    aget v3, v1, v5

    if-lt v3, v4, :cond_0

    aget v3, v1, v4

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    aget v3, v1, v5

    aget v4, v1, v4

    invoke-static {v3, v4, p1, p2}, Lcom/htc/opensense/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static bitmapResize4Filmstrip(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v6, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    div-int v3, v5, v6

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v3

    div-int/2addr v5, v6

    const v6, 0x4b000

    if-le v5, v6, :cond_2

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

    :cond_1
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method public static bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-ge v4, v2, :cond_1

    int-to-float v3, p1

    mul-int v5, p1, v2

    div-int/2addr v5, v4

    int-to-float v1, v5

    :goto_1
    float-to-int v5, v3

    float-to-int v6, v1

    invoke-static {p0, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-le v4, v2, :cond_2

    mul-int v5, p1, v4

    div-int/2addr v5, v2

    int-to-float v3, v5

    int-to-float v1, p1

    goto :goto_1

    :cond_2
    int-to-float v1, p1

    int-to-float v3, p1

    goto :goto_1
.end method

.method public static createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v2

    aget v5, v2, v8

    if-lt v5, v7, :cond_0

    aget v5, v2, v7

    if-ge v5, v7, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    aget v5, v2, v8

    aget v6, v2, v7

    if-ge v5, v6, :cond_2

    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MAX_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    :goto_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    float-to-int v5, v4

    float-to-int v6, v3

    invoke-static {v1, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_2
    aget v5, v2, v8

    aget v6, v2, v7

    if-le v5, v6, :cond_3

    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    sget-object v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v4, v5

    goto :goto_1
.end method

.method public static createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v3, v4

    if-lt v4, v5, :cond_0

    aget v4, v3, v5

    if-ge v4, v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapDecodeBySample(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v3, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

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

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

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

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private downgradeImageCache()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v4, v5, :cond_0

    iput v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    iput-boolean v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isOnScreenItem(II)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p2, v4

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    :cond_0
    if-gt p2, p1, :cond_1

    if-le v3, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isOnScreenItemComplete(I)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    :cond_0
    move v6, p1

    :goto_0
    if-le v5, v6, :cond_2

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

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    :goto_1
    return v2

    :cond_3
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v4, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v7, :cond_1

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isOnScreenThumbnailsReady(I)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    :cond_0
    move v6, p1

    :goto_0
    if-le v5, v6, :cond_2

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

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    :goto_1
    return v2

    :cond_3
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v4, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v7, :cond_1

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isValidImage(Landroid/net/Uri;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    if-lt v2, v3, :cond_0

    aget v2, v1, v3

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private prepareGridviewOffscreenPage(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private prepareImageCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .locals 3

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;-><init>()V

    iput p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v1

    iput-boolean v1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    invoke-virtual {v0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private requestOnScreenFullImages(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p1, v5

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_0

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    :cond_0
    move v4, p1

    :goto_0
    if-le v3, v4, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

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

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-eqz v2, :cond_1

    iget-boolean v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    :cond_4
    iget-boolean v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v5, :cond_1

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

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "photo_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "photo_url"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v3, p3, v4, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;ZI)Z
    .locals 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][Initialize]: "

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    iput p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    :cond_0
    return v0
.end method

.method public Uninitialize(Z)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][Uninitialize]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->release()V

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public cancelDownloadTasks()V
    .locals 8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-eqz v2, :cond_0

    iget v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget v7, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->stopDownloadPhotoByTaskId(I)V

    const/4 v6, 0x0

    iput v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public changeLayoutType(I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x0

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

    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->downgradeImageCache()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    iput v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    sget-object v0, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MAX_GRIDVIEW_DOWNLOAD_BUFFER:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    :cond_0
    :goto_0
    move-object v10, v1

    :goto_1
    return-object v10

    :cond_1
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v0, :cond_6

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    move-object v10, v1

    goto :goto_1

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

    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    :cond_6
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_c

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

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_a

    :cond_7
    const/4 v1, 0x0

    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_8

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

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

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    :cond_9
    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    :cond_a
    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    iget v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    iget-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v0, :cond_f

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_e

    :cond_d
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

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

    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x1

    iget-boolean v2, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v0, v2, :cond_0

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

    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    :cond_10
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_11

    iget-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

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

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    :cond_11
    if-eqz v1, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    :cond_12
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0
.end method

.method public doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;Z)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x5

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-eq v0, v2, :cond_0

    const/4 v0, -0x2

    if-eq v0, p2, :cond_0

    const/4 v0, -0x3

    if-ne v0, p2, :cond_2

    :cond_0
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v0, :cond_3

    iget v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_1

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_1

    iget v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    :cond_3
    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-boolean v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v0, :cond_4

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_4

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE_ARRAY:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v3

    aget v2, v2, v3

    invoke-static {p2, v0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

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

    const/4 v0, 0x0

    iput v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iget-boolean v2, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-ne v0, v2, :cond_1

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

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_6

    :cond_5
    const/4 v1, 0x0

    :cond_6
    if-nez v1, :cond_1

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_1

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v0, p4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE_ARRAY:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v3

    aget v2, v2, v3

    invoke-static {p2, v0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v1, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBitmapCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    :goto_0
    return-object v9

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v10, :cond_2

    move-object v9, v8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_3
    if-nez v8, :cond_4

    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, v10, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

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

    goto :goto_0
.end method

.method public getBitmapCache(ILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    :goto_0
    return-object v9

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

    goto :goto_0
.end method

.method public getBitmapDataPath(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapDataPath]: mMemCacheManager or aPhoto NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v1, :cond_2

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapDataPath]: imageCache NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v3, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapDataPath]: isExistValidImage NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getBitmapUri(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Landroid/net/Uri;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapUri]: mMemCacheManager or aPhoto NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v1, :cond_2

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapUri]: no imageCache !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v3, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProvider][getBitmapUri]: isExistValidImage NG !"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getDefaultImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v6, 0x0

    if-nez p3, :cond_1

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    move-object v7, v6

    :goto_1
    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_2

    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v1, :cond_2

    new-instance v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    invoke-direct {v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;-><init>()V

    iput p2, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    if-eqz p4, :cond_3

    iput-object p3, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "photo_url"

    invoke-virtual {v8, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v0, p3, v1, v8}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v0

    iput v0, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    if-nez p4, :cond_5

    move-object v7, v6

    goto :goto_1

    :cond_3
    iput-object p3, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget v2, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    move-object v0, p0

    move-object v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :cond_5
    if-nez v6, :cond_0

    const/4 v0, -0x2

    if-eq v0, p2, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v4, v5, :cond_4

    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v4, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v4

    if-ne v6, v4, :cond_3

    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isOnScreenItemComplete(I)Z

    move-result v4

    if-ne v6, v4, :cond_2

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

    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    :cond_4
    iget v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p2, v2, p5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public getImageBitmapMasked4User(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080702

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080703

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    invoke-static {v10, v9, v8}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_1
    return-object v7
.end method

.method public getImageDimension(Ljava/lang/String;)[I
    .locals 3

    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getImageIntegrity(Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)I
    .locals 6

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move v3, v2

    goto :goto_0
.end method

.method public getLayoutType()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    return v0
.end method

.method public getMaxDownloadBuffer()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    return v0
.end method

.method public isCenterOnscreenItemComplete(I)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    div-int/lit8 v8, v8, 0x2

    sub-int v6, p1, v8

    iget v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    div-int/lit8 v8, v8, 0x2

    add-int v7, p1, v8

    if-gez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v7, :cond_1

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    :cond_1
    move v5, v6

    :goto_0
    if-le v7, v5, :cond_3

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

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_3
    :goto_1
    return v2

    :cond_4
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v4, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    iget-object v8, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isExistValidImage(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isFileCacheExist(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Z)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v0, :cond_3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_4

    iput v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_5

    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v2, :cond_2

    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    iget v2, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

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

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-eqz v3, :cond_0

    iget v5, v3, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onCreate()V
    .locals 4

    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v1, :cond_0

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

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onCreate]: unable to create cache manager!"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onDestroy]: Destroy cache manager instance..."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/CacheManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

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

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onPause]: Destroy cache manager instance..."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/CacheManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

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

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    sget v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v1, :cond_0

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

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][onResume]: unable to create cache manager!"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][release]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->release()V

    :cond_0
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][release]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseMemoryCache()V
    .locals 8

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    move-object v4, v0

    if-eqz v4, :cond_1

    const/4 v7, -0x1

    iput v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->getDataHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e89

    iget v1, p1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    iget v1, p1, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-interface {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setAdapterList(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setBitmapCache(ILandroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 9

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v2, p1

    move v3, p4

    move-object v4, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public setDefaultImage(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultImageResource(Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    iput p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageDecoder(Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    return-void
.end method

.method public setImageDownloadedListener(Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    return-void
.end method

.method public setScrollState(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1

    if-le p1, p2, :cond_0

    move p2, p1

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperCacheManager;->setVisibleRange(II)V

    :cond_1
    return-void
.end method

.method public triggerNotifyImageDownloaded(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    invoke-interface {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    :cond_0
    return-void
.end method
