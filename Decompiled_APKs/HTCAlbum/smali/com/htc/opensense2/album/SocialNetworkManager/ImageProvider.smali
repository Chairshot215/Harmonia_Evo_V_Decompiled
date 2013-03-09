.class public Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;


# static fields
.field public static final IPXTYPE_COMMENT:I = 0x5

.field public static final IPXTYPE_CUBE:I = 0x1

.field public static final IPXTYPE_FILMSTRIP:I = 0x3

.field public static final IPXTYPE_FULLSCREEN:I = 0x4

.field public static final IPXTYPE_GRID:I = 0x2

.field public static final IPXTYPE_UNKNOW:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImageProvider"

.field public static final MAX_SIZE_FILECACHE:I = 0xa00000

.field public static mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

.field public static mFileCacheRefCount:I


# instance fields
.field protected mAdapterList:Ljava/util/List;

.field public mCandidateCount:I

.field public mCandidateUrl:Ljava/lang/String;

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
            "Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;",
            ">;"
        }
    .end annotation
.end field

.field protected mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

.field private mImageDefault:Landroid/graphics/Bitmap;

.field private mImageDefaultResid:I

.field protected mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

.field private mIsEnableMemCache:Z

.field private mMaxDownloadBuffer:I

.field private mMaxVisibleBuffer:I

.field private mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

.field private mMemCacheSize:I

.field private mUIScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    .line 46
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    .line 48
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    .line 49
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 51
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    .line 52
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    .line 56
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    .line 57
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    .line 62
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateUrl:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    .line 384
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    return v0
.end method

.method public static bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmapSrc"
    .parameter "bitmapMask"

    .prologue
    const/4 v9, 0x0

    .line 1867
    move-object v1, p1

    .line 1868
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1869
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1871
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1872
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1874
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1875
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1876
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1878
    if-eqz v1, :cond_0

    .line 1880
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1881
    const/4 v1, 0x0

    .line 1883
    :cond_0
    if-eqz v0, :cond_1

    .line 1885
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1886
    const/4 v0, 0x0

    .line 1888
    :cond_1
    return-object v2
.end method

.method public static bitmapByScalado(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "szUri"

    .prologue
    const/4 v3, -0x1

    .line 1830
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeFile(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidthDest"
    .parameter "nHeightDest"

    .prologue
    .line 1837
    if-nez p0, :cond_1

    .line 1840
    const/4 v0, 0x0

    .line 1863
    :cond_0
    :goto_0
    return-object v0

    .line 1842
    :cond_1
    const/4 v0, 0x0

    .line 1844
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1845
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1847
    .local v2, nHeightSrc:I
    sub-int v6, v3, p1

    div-int/lit8 v4, v6, 0x2

    .line 1848
    .local v4, nXMargin:I
    sub-int v6, v2, p2

    div-int/lit8 v5, v6, 0x2

    .line 1852
    .local v5, nYMargin:I
    :try_start_0
    invoke-static {p0, v4, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1859
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1861
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1854
    :catch_0
    move-exception v1

    .line 1856
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ImageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][bitmapCropCenter]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bitmapDecodeBySample(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "szFilePath"
    .parameter "nTarget"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1700
    const/4 v0, 0x0

    .line 1702
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1703
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1704
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1705
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1708
    invoke-static {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1710
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1711
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1712
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1714
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1716
    return-object v0
.end method

.method public static bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 1759
    if-nez p0, :cond_1

    .line 1762
    const/4 v7, 0x0

    .line 1785
    :cond_0
    :goto_0
    return-object v7

    .line 1764
    :cond_1
    const/4 v7, 0x0

    .line 1765
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1766
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1767
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1770
    .local v4, nHeightSrc:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1774
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1781
    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1783
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1776
    :catch_0
    move-exception v8

    .line 1778
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "ImageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bitmapResize] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 1789
    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 1790
    .local v1, nDimensionSrc:[I
    aget v3, v1, v5

    if-lt v3, v4, :cond_0

    aget v3, v1, v4

    if-ge v3, v4, :cond_1

    .line 1792
    :cond_0
    const/4 v0, 0x0

    .line 1801
    :goto_0
    return-object v0

    .line 1794
    :cond_1
    const/4 v0, 0x0

    .line 1796
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1797
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    aget v3, v1, v5

    aget v4, v1, v4

    invoke-static {v3, v4, p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1798
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1799
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1801
    goto :goto_0
.end method

.method public static bitmapResize4Filmstrip(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "szFilePath"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1806
    const/4 v0, 0x0

    .line 1807
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1808
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1809
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1811
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1812
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1814
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    div-int v3, v5, v6

    .line 1815
    .local v3, sample:I
    if-nez v3, :cond_0

    .line 1816
    const/4 v3, 0x1

    .line 1817
    :cond_0
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    mul-int v6, v3, v3

    div-int/2addr v5, v6

    const v6, 0x4b000

    if-le v5, v6, :cond_2

    .line 1819
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

    .line 1823
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1824
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1826
    return-object v0

    .end local v1           #isExtraWidth:Z
    .restart local v3       #sample:I
    :cond_2
    move v1, v4

    .line 1817
    goto :goto_0
.end method

.method public static bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmapSrc"
    .parameter "nDimTarget"

    .prologue
    .line 1720
    if-nez p0, :cond_0

    .line 1723
    const/4 v0, 0x0

    .line 1755
    :goto_0
    return-object v0

    .line 1726
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1727
    .local v4, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1729
    .local v2, nHeightSrc:I
    const/4 v0, 0x0

    .line 1730
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1731
    .local v3, nWidth:F
    const/4 v1, 0x0

    .line 1734
    .local v1, nHeight:F
    if-ge v4, v2, :cond_1

    .line 1736
    int-to-float v3, p1

    .line 1737
    mul-int v5, p1, v2

    div-int/2addr v5, v4

    int-to-float v1, v5

    .line 1752
    :goto_1
    float-to-int v5, v3

    float-to-int v6, v1

    invoke-static {p0, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1755
    goto :goto_0

    .line 1740
    :cond_1
    if-le v4, v2, :cond_2

    .line 1742
    mul-int v5, p1, v4

    div-int/2addr v5, v2

    int-to-float v3, v5

    .line 1743
    int-to-float v1, p1

    goto :goto_1

    .line 1747
    :cond_2
    int-to-float v1, p1

    .line 1748
    int-to-float v3, p1

    goto :goto_1
.end method

.method public static createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "szFilePath"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1661
    const/4 v0, 0x0

    .line 1662
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1665
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v2

    .line 1666
    .local v2, nDimensionSrc:[I
    aget v5, v2, v8

    if-lt v5, v7, :cond_0

    aget v5, v2, v7

    if-ge v5, v7, :cond_1

    .line 1668
    :cond_0
    const/4 v5, 0x0

    .line 1696
    :goto_0
    return-object v5

    .line 1671
    :cond_1
    const/4 v4, 0x0

    .line 1672
    .local v4, nWidth:F
    const/4 v3, 0x0

    .line 1675
    .local v3, nHeight:F
    aget v5, v2, v8

    aget v6, v2, v7

    if-ge v5, v6, :cond_2

    .line 1677
    sget-object v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MAX_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    .line 1678
    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    .line 1692
    :goto_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1693
    float-to-int v5, v4

    float-to-int v6, v3

    invoke-static {v1, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 1696
    goto :goto_0

    .line 1680
    :cond_2
    aget v5, v2, v8

    aget v6, v2, v7

    if-le v5, v6, :cond_3

    .line 1682
    sget-object v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    .line 1683
    aget v5, v2, v7

    int-to-float v5, v5

    div-float v5, v3, v5

    aget v6, v2, v8

    int-to-float v6, v6

    mul-float v4, v5, v6

    goto :goto_1

    .line 1687
    :cond_3
    sget-object v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    int-to-float v3, v5

    .line 1688
    sget-object v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MIN_COMMENT_PHOTO_DIMEN:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

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

    .line 1641
    invoke-static {p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 1642
    .local v3, nDimensionSrc:[I
    const/4 v4, 0x0

    aget v4, v3, v4

    if-lt v4, v5, :cond_0

    aget v4, v3, v5

    if-ge v4, v5, :cond_1

    .line 1644
    :cond_0
    const/4 v0, 0x0

    .line 1657
    :goto_0
    return-object v0

    .line 1647
    :cond_1
    const/4 v0, 0x0

    .line 1648
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1649
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1653
    .local v2, bitmapResized:Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapDecodeBySample(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1654
    invoke-static {v1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1655
    invoke-static {v2, p2, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1657
    goto :goto_0
.end method

.method private doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nPosition"
    .parameter "uri"

    .prologue
    .line 2138
    const/4 v0, 0x0

    .line 2140
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v0

    .line 2156
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 2143
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 2144
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v3, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 2156
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 2147
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const-string v3, "ImageProvider"

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

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2149
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2151
    const-string v3, "ImageProvider"

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

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private downgradeImageCache()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2192
    const/4 v2, 0x0

    .line 2193
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2194
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2200
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v0, 0x0

    .line 2201
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 2204
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 2207
    const/4 v4, 0x1

    iget-boolean v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v4, v5, :cond_0

    .line 2209
    iput v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2210
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 2211
    iput-boolean v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    goto :goto_0

    .line 2215
    :cond_1
    return-void
.end method

.method private isLocalPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 1114
    if-nez p1, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return v4

    .line 1116
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1118
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1120
    const-string v5, "http"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v1, 0x1

    .line 1122
    .local v1, isLocal:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1124
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1125
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    .end local v1           #isLocal:Z
    .end local v2           #path:Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 1120
    goto :goto_1
.end method

.method private isOnScreenItem(II)Z
    .locals 5
    .parameter "nIndexItem"
    .parameter "nFirstIndex"

    .prologue
    .line 2004
    const/4 v1, 0x0

    .line 2006
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 2007
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 2009
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p2, v4

    .line 2010
    .local v3, nCount:I
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 2011
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 2013
    :cond_0
    if-gt p2, p1, :cond_1

    if-le v3, p1, :cond_1

    .line 2014
    const/4 v1, 0x1

    .line 2016
    :cond_1
    return v1
.end method

.method private isOnScreenItemComplete(I)Z
    .locals 9
    .parameter "nFirstIndex"

    .prologue
    .line 1963
    const/4 v2, 0x1

    .line 1965
    .local v2, bIsReady:Z
    const/4 v1, 0x0

    .line 1966
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 1968
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    .line 1969
    .local v5, nCount:I
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 1970
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1972
    :cond_0
    move v6, p1

    .local v6, nIndex:I
    :goto_0
    if-le v5, v6, :cond_2

    .line 1976
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 1972
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1981
    :catch_0
    move-exception v3

    .line 2000
    :cond_2
    :goto_1
    return v2

    .line 1986
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_4

    .line 1989
    const/4 v2, 0x0

    .line 1990
    goto :goto_1

    .line 1992
    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v7, :cond_1

    .line 1995
    const/4 v2, 0x0

    .line 1996
    goto :goto_1
.end method

.method private isOnScreenThumbnailsReady(I)Z
    .locals 9
    .parameter "nFirstIndex"

    .prologue
    .line 1922
    const/4 v2, 0x1

    .line 1924
    .local v2, bIsReady:Z
    const/4 v1, 0x0

    .line 1925
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 1927
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v5, p1, v7

    .line 1928
    .local v5, nCount:I
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    .line 1929
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1931
    :cond_0
    move v6, p1

    .local v6, nIndex:I
    :goto_0
    if-le v5, v6, :cond_2

    .line 1935
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 1931
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1940
    :catch_0
    move-exception v3

    .line 1959
    :cond_2
    :goto_1
    return v2

    .line 1945
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_4

    .line 1948
    const/4 v2, 0x0

    .line 1949
    goto :goto_1

    .line 1951
    :cond_4
    iget-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v7, :cond_1

    .line 1954
    const/4 v2, 0x0

    .line 1955
    goto :goto_1
.end method

.method private isValidImage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 2126
    const/4 v0, 0x1

    .line 2128
    .local v0, bResult:Z
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 2129
    .local v1, nDimensionSrc:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    if-lt v2, v3, :cond_0

    aget v2, v1, v3

    if-ge v2, v3, :cond_1

    .line 2131
    :cond_0
    const/4 v0, 0x0

    .line 2134
    :cond_1
    return v0
.end method

.method private prepareGridviewOffscreenPage(I)Z
    .locals 1
    .parameter "nFirstIndex"

    .prologue
    .line 2089
    const/4 v0, 0x0

    .line 2091
    .local v0, bIsReady:Z
    return v0
.end method

.method private prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 4
    .parameter "nIndex"
    .parameter "anAlbum"
    .parameter "hHandler"

    .prologue
    .line 2055
    const/4 v0, 0x0

    .line 2057
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 2058
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 2059
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 2060
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 2061
    const/4 v1, -0x2

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2063
    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 2068
    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2072
    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateUrl:Ljava/lang/String;

    .line 2083
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    return-object v0

    .line 2074
    :cond_1
    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2078
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setCandidate(Z)V

    .line 2079
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    .line 2080
    const-string v1, "ImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][prepareImageCache]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 3
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"

    .prologue
    .line 2037
    const/4 v0, 0x0

    .line 2039
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 2040
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 2041
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 2042
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 2043
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 2044
    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2045
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    .line 2047
    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 2049
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    return-object v0
.end method

.method private prepareImageCache(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 2
    .parameter "id"
    .parameter "url"
    .parameter "hHandler"

    .prologue
    .line 2020
    const/4 v0, 0x0

    .line 2022
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 2023
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 2024
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 2025
    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 2026
    const-string v1, ""

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 2027
    const/4 v1, -0x2

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 2029
    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 2031
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    return-object v0
.end method

.method private requestOnScreenFullImages(I)V
    .locals 8
    .parameter "nFirstIndex"

    .prologue
    .line 2095
    const/4 v0, 0x0

    .line 2096
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 2098
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    add-int v3, p1, v5

    .line 2099
    .local v3, nCount:I
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_0

    .line 2100
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 2102
    :cond_0
    move v4, p1

    .local v4, nIndex:I
    :goto_0
    if-le v3, v4, :cond_2

    .line 2106
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_3

    .line 2102
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2109
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :catch_0
    move-exception v1

    .line 2111
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ImageProvider"

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

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 2114
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_1

    .line 2117
    iget-boolean v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 2119
    :cond_4
    iget-boolean v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v5, :cond_1

    .line 2120
    iget v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1
.end method

.method private requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "nIndex"
    .parameter "szUID"
    .parameter "szURL"

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 787
    .local v1, nTaskID:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 798
    .end local v1           #nTaskID:I
    .local v2, nTaskID:I
    :goto_0
    return v2

    .line 790
    .end local v2           #nTaskID:I
    .restart local v1       #nTaskID:I
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 791
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "photo_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v3, "photo_url"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v3, p3, v4, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v1

    move v2, v1

    .line 798
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
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, bResult:Z
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 93
    const-string v1, "ImageProvider"

    const-string v2, "[HTCAlbum][ImageProvider][Initialize]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIsEnableMemCache:Z

    .line 96
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheSize:I

    .line 98
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 99
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 100
    :cond_0
    return v0
.end method

.method public Uninitialize(Z)V
    .locals 3
    .parameter "bIsFreeMem"

    .prologue
    const/4 v2, 0x0

    .line 194
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][Uninitialize]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 201
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 207
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->release()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 214
    :cond_3
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method

.method public cancelDownloadTasks()V
    .locals 8

    .prologue
    .line 2161
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2162
    .local v5, tempImageCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2163
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2165
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 2167
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2172
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v4, 0x0

    .line 2173
    .local v4, nCount:I
    const/4 v0, 0x0

    .line 2174
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 2177
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 2180
    iget v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v6, :cond_0

    .line 2183
    add-int/lit8 v4, v4, 0x1

    .line 2184
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v6, :cond_1

    .line 2185
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget v7, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/cache/CacheManager;->stopDownloadPhotoByTaskId(I)V

    .line 2186
    :cond_1
    const/4 v6, 0x0

    iput v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    .line 2189
    :cond_2
    return-void
.end method

.method public changeLayoutType(I)V
    .locals 5
    .parameter "nIPXType"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 261
    const-string v0, "ImageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][changeLayoutType]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    .line 263
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 264
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 270
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->downgradeImageCache()V

    .line 271
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    .line 273
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 276
    :pswitch_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 277
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 278
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 281
    :pswitch_1
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 282
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 283
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 286
    :pswitch_2
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    .line 287
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MAX_GRIDVIEW_DOWNLOAD_BUFFER:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 288
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxVisibleBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "nPosition"
    .parameter "imageCache"
    .parameter "nFirstVisibleIndex"

    .prologue
    .line 1349
    const/4 v1, 0x0

    .line 1363
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1365
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    .line 1368
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    :cond_0
    :goto_0
    move-object v10, v1

    .line 1553
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v10

    .line 1371
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v0, :cond_6

    .line 1374
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1379
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1382
    :cond_2
    const/4 v1, 0x0

    .line 1383
    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1384
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 1386
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    move-object v10, v1

    .line 1387
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1390
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1391
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 1393
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 1397
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_0

    .line 1402
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v0, :cond_4

    .line 1403
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    .line 1406
    :cond_4
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_5

    .line 1409
    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1412
    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto :goto_0

    .line 1415
    :cond_5
    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1417
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0

    .line 1422
    :cond_6
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    .line 1426
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1431
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_a

    .line 1434
    :cond_7
    const/4 v1, 0x0

    .line 1435
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_8

    .line 1437
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1438
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1440
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1441
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 1447
    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1450
    :cond_9
    const/4 v1, 0x0

    .line 1451
    const/4 v0, -0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1452
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1453
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 1454
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    .line 1463
    :cond_a
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    .line 1466
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_b

    .line 1468
    const/4 v0, 0x1

    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenThumbnailsReady(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v2, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1471
    invoke-direct {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestOnScreenFullImages(I)V

    goto/16 :goto_0

    .line 1474
    :cond_b
    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v0, :cond_0

    .line 1476
    iget v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto/16 :goto_0

    .line 1482
    :cond_c
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    iget-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-nez v0, :cond_f

    .line 1485
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1490
    if-eqz v1, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_e

    .line 1493
    :cond_d
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1496
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    .line 1502
    :cond_e
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1504
    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1505
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1506
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    .line 1511
    :cond_f
    const/4 v0, 0x1

    iget-boolean v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    if-ne v0, v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1516
    const/4 v0, 0x1

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1521
    if-eqz v1, :cond_10

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1523
    :cond_10
    const/4 v1, 0x0

    .line 1524
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v0, :cond_0

    .line 1526
    const/4 v0, 0x2

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v0, v2, :cond_11

    .line 1529
    iget-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doImageCode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1530
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1532
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1533
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 1539
    :cond_11
    if-eqz v1, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1542
    :cond_12
    const/4 v0, 0x0

    iput v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1543
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 1545
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0
.end method

.method public doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;ZZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "nPosition"
    .parameter "szURL"
    .parameter "imageCache"
    .parameter "bIsIdle"
    .parameter "bIsGrid"

    .prologue
    .line 1294
    const/4 v1, 0x0

    .line 1297
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1299
    iget v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v0, :cond_0

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_0

    .line 1301
    iget v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1345
    :cond_0
    :goto_0
    return-object v1

    .line 1304
    :cond_1
    const/4 v0, 0x5

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-eq v0, v2, :cond_2

    const/4 v0, -0x2

    if-eq v0, p2, :cond_2

    const/4 v0, -0x3

    if-ne v0, p2, :cond_3

    .line 1307
    :cond_2
    iget-object v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapComment(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 1309
    :cond_3
    iget-boolean v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-nez v0, :cond_5

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_5

    .line 1311
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1312
    .local v10, option:Landroid/graphics/BitmapFactory$Options;
    if-eqz p6, :cond_4

    .line 1313
    iget-object v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-static {p2, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1316
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 1320
    const/4 v0, 0x0

    iput v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1321
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    goto :goto_0

    .line 1315
    :cond_4
    iget-object v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {p2, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 1326
    .end local v10           #option:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    const/4 v0, 0x1

    iget-boolean v2, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    if-ne v0, v2, :cond_0

    .line 1328
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    const/4 v9, 0x1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1330
    if-eqz v1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v0, v2, :cond_7

    .line 1331
    :cond_6
    const/4 v1, 0x0

    .line 1333
    :cond_7
    if-nez v1, :cond_0

    const/16 v0, 0x4f4d

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v2, :cond_0

    .line 1337
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1338
    .restart local v10       #option:Landroid/graphics/BitmapFactory$Options;
    iget-object v0, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {p2, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1339
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    iget-object v2, p4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    goto/16 :goto_0
.end method

.method public doImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "nPosition"
    .parameter "uriFilePath"

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    invoke-interface {v1, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;->onDoImageDecode(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 341
    :cond_0
    return-object v0
.end method

.method public forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;Z)I
    .locals 8
    .parameter "nIndex"
    .parameter "anAlbum"
    .parameter "hHandler"
    .parameter "bIsForceLiveUpdate"

    .prologue
    .line 1072
    const/4 v1, -0x1

    .line 1074
    .local v1, nIntegrity:I
    const/4 v3, 0x0

    .line 1075
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1077
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v5, :cond_1

    :cond_0
    move v2, v1

    .line 1110
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 1080
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    .line 1082
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_2
    :goto_1
    move v2, v1

    .line 1110
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 1089
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1091
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v4

    .line 1092
    .local v4, url:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1094
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1095
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1096
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_1

    .line 1100
    :cond_4
    iget-boolean v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->isCandidate()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1102
    iget v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1103
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1
.end method

.method public forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 9
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"
    .parameter "nIndexFirst"
    .parameter "nIndexEnd"

    .prologue
    .line 1136
    const/4 v2, -0x1

    .line 1138
    .local v2, nIntegrity:I
    const/4 v3, 0x0

    .line 1139
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1141
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v0

    .line 1217
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 1148
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_2

    .line 1149
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1156
    :goto_1
    if-nez v0, :cond_3

    move-object v1, v0

    .line 1157
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1152
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    .line 1153
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 1159
    :cond_3
    iget-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 1160
    .local v5, urlThumb:Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 1162
    .local v4, urlFull:Ljava/lang/String;
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1164
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1165
    const/4 v6, 0x1

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move-object v1, v0

    .line 1166
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1168
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_4
    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1170
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1171
    const/4 v6, 0x0

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move-object v1, v0

    .line 1172
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1178
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p0, p4, p5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isScreenItemComplete(III)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1185
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_7

    const/4 v6, -0x1

    if-eq v6, v2, :cond_6

    const/4 v6, -0x2

    if-ne v6, v2, :cond_7

    .line 1191
    :cond_6
    const-string v6, "ImageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][forwardDownloadRequest]: thumb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1193
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_7
    :goto_2
    move-object v1, v0

    .line 1217
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1196
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_8
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_7

    const/4 v6, 0x1

    invoke-virtual {p0, p4, p5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isScreenItemComplete(III)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1198
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_7

    if-eqz v2, :cond_9

    const/4 v6, -0x1

    if-eq v6, v2, :cond_9

    const/4 v6, -0x2

    if-eq v6, v2, :cond_9

    const/4 v6, -0x4

    if-ne v6, v2, :cond_7

    :cond_9
    if-eqz v4, :cond_7

    .line 1207
    const-string v6, "ImageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][forwardDownloadRequest]: full: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1209
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2
.end method

.method public forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)V
    .locals 4
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v1, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1287
    const/4 v0, 0x0

    .line 1289
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v1, :cond_0

    .line 1290
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0
.end method

.method public forwardDownloadRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .parameter "id"
    .parameter "url"
    .parameter "hHandler"

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1065
    const/4 v0, 0x0

    .line 1066
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    iget v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_0
.end method

.method public forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 11
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1221
    const/4 v2, -0x1

    .line 1223
    .local v2, nIntegrity:I
    const/4 v3, 0x0

    .line 1224
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1226
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v0

    .line 1277
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 1233
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_2

    .line 1234
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1241
    :goto_1
    if-nez v0, :cond_3

    move-object v1, v0

    .line 1242
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1237
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    .line 1238
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 1244
    :cond_3
    iget-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 1245
    .local v5, urlThumb:Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 1247
    .local v4, urlFull:Ljava/lang/String;
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1249
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1250
    iput v10, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move-object v1, v0

    .line 1251
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1253
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_4
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_5

    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1255
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1256
    iput v9, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move-object v1, v0

    .line 1257
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1261
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_7

    const/4 v6, -0x1

    if-ne v6, v2, :cond_7

    .line 1264
    const-string v6, "ImageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][forwardDownloadRequestSingle]: thumb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p0, v0, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1266
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_6
    :goto_2
    move-object v1, v0

    .line 1277
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 1268
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_7
    iget-boolean v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v6, :cond_6

    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v6, :cond_6

    if-nez v2, :cond_6

    .line 1272
    const-string v6, "ImageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][forwardDownloadRequestSingle]: full: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p0, v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I

    move-result v6

    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 1274
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2
.end method

.method public getBitmapCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "nType"
    .parameter "nSource"

    .prologue
    .line 827
    const/4 v8, 0x0

    .line 828
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 829
    .local v10, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    .line 861
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 832
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v10       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v10, :cond_2

    move-object v9, v8

    .line 833
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 835
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    .line 836
    .local v1, szFilePath:Ljava/lang/String;
    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 838
    iget-object v0, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 839
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 847
    :cond_3
    if-nez v8, :cond_4

    .line 849
    const/4 v0, 0x1

    iget-object v2, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v0, v2, :cond_4

    .line 851
    iget-object v0, v10, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 852
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_4
    move-object v9, v8

    .line 861
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
    .line 877
    const/4 v8, 0x0

    .line 878
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v9, v8

    .line 888
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 881
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v9, v8

    .line 888
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getDefaultImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "bIsThumbnail"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 651
    const/4 v7, 0x0

    .line 653
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_1

    .line 655
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    move-object v8, v7

    .line 702
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v8

    .line 659
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 665
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v0, :cond_2

    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v0, v1, :cond_2

    .line 668
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 669
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 670
    if-eqz p4, :cond_3

    .line 671
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 674
    :goto_2
    invoke-virtual {v4, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 676
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 679
    .local v9, bundle:Landroid/os/Bundle;
    const-string v0, "photo_url"

    invoke-virtual {v9, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v0, p3, v1, v9}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v0

    iput v0, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 692
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v9           #bundle:Landroid/os/Bundle;
    :cond_2
    :goto_3
    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    if-nez p4, :cond_5

    move-object v8, v7

    .line 694
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 673
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iput-object p3, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    goto :goto_2

    .line 687
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 688
    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget v2, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 698
    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    if-nez v7, :cond_0

    .line 699
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "hHandler"
    .parameter "nFirstVisibleIndex"

    .prologue
    const/4 v6, 0x1

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 955
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v1, v0

    .line 1004
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 958
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 964
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v4, :cond_2

    .line 966
    const/4 v2, 0x0

    .line 968
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 970
    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    if-ne v4, v5, :cond_4

    .line 972
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-direct {p0, v4, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItem(II)Z

    move-result v4

    if-ne v6, v4, :cond_3

    .line 974
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 1004
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 978
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_3
    invoke-direct {p0, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isOnScreenItemComplete(I)Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 980
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][getImageBitmap2]: off screen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 987
    :cond_4
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 999
    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 1000
    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p2, v2, p5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public getImageBitmapMasked4User(Landroid/content/Context;ILjava/lang/String;ILandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "nResMask"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 1581
    const/4 v9, 0x0

    .line 1582
    .local v9, bitmapSrc:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 1583
    .local v8, bitmapMask:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 1585
    .local v7, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1586
    const/4 v0, -0x1

    if-ne v0, p4, :cond_2

    .line 1588
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080703

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1596
    :goto_0
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 1598
    invoke-static {v9, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1600
    :cond_0
    if-nez v7, :cond_1

    .line 1602
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 1604
    :cond_1
    return-object v7

    .line 1592
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0
.end method

.method public getImageBitmapMasked4User(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 1557
    const/4 v9, 0x0

    .line 1558
    .local v9, bitmapSrc:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 1559
    .local v8, bitmapMask:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 1561
    .local v7, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1562
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080703

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1564
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 1566
    invoke-static {v9, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1568
    :cond_0
    if-nez v7, :cond_1

    .line 1570
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 1572
    :cond_1
    return-object v7
.end method

.method public getImageBitmapWithCustomMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "srcBmp"
    .parameter "maskBmp"

    .prologue
    .line 1609
    const/4 v0, 0x0

    .line 1611
    .local v0, destBmp:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1613
    invoke-static {p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1616
    :cond_0
    return-object v0
.end method

.method public getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 4
    .parameter "anAlbum"

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 947
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 945
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move-object v1, v0

    .line 947
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0
.end method

.method public getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 4
    .parameter "aPhoto"

    .prologue
    .line 929
    const/4 v0, 0x0

    .line 931
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 936
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 934
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move-object v1, v0

    .line 936
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0
.end method

.method public getImageCache(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 3
    .parameter "id"

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 919
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 924
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 922
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move-object v1, v0

    .line 924
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0
.end method

.method public getImageDimension(Ljava/lang/String;)[I
    .locals 3
    .parameter "szUrl"

    .prologue
    .line 371
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 372
    .local v1, nDimension:[I
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 373
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 375
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 377
    :cond_0
    return-object v1

    .line 371
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getImageGridBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "nIndex"
    .parameter "szURL"
    .parameter "bIsThumbnail"
    .parameter "hHandler"
    .parameter "bIsIdle"

    .prologue
    .line 707
    const/4 v8, 0x0

    .line 709
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_1

    .line 711
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    move-object v9, v8

    .line 780
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v9

    .line 715
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 721
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_3

    const/16 v1, 0x4f4d

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    if-ne v1, v2, :cond_3

    .line 724
    new-instance v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    invoke-direct {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 725
    .local v5, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v11

    .line 727
    .local v11, inLocal:Z
    iput p2, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 728
    if-eqz p4, :cond_4

    .line 730
    iput-object p3, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 731
    if-eqz v11, :cond_2

    .line 733
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 734
    const/4 v1, 0x0

    iput v1, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 746
    :cond_2
    :goto_2
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->setDataHandler(Landroid/os/Handler;)V

    .line 748
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 751
    .local v10, bundle:Landroid/os/Bundle;
    const-string v1, "photo_url"

    invoke-virtual {v10, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    if-eqz v11, :cond_5

    .line 757
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 770
    .end local v5           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v11           #inLocal:Z
    :cond_3
    :goto_3
    const/4 v1, -0x3

    if-ne p2, v1, :cond_7

    if-nez p4, :cond_7

    move-object v9, v8

    .line 772
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 739
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #inLocal:Z
    :cond_4
    iput-object p3, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 740
    if-eqz v11, :cond_2

    .line 742
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 743
    const/4 v1, 0x1

    iput v1, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_2

    .line 760
    .restart local v10       #bundle:Landroid/os/Bundle;
    :cond_5
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v1, p3, v2, v10}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v1

    iput v1, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_3

    .line 765
    .end local v5           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v11           #inLocal:Z
    :cond_6
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 766
    .restart local v5       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget v3, v5, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p3

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->doGetImageDecodeSimple(Landroid/content/Context;ILjava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;ZZ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_3

    .line 776
    .end local v5           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_7
    if-nez v8, :cond_0

    .line 777
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public getImageIntegrity(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)I
    .locals 6
    .parameter "aPhoto"

    .prologue
    .line 633
    const/4 v2, -0x1

    .line 635
    .local v2, nIntegrity:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v2

    .line 647
    .end local v2           #nIntegrity:I
    .local v3, nIntegrity:I
    :goto_0
    return v3

    .line 638
    .end local v3           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    :cond_1
    const/4 v1, 0x0

    .line 639
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v0, 0x0

    .line 641
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    move v3, v2

    .line 642
    .end local v2           #nIntegrity:I
    .restart local v3       #nIntegrity:I
    goto :goto_0

    .line 644
    .end local v3           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    :cond_2
    iget v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    move v3, v2

    .line 647
    .end local v2           #nIntegrity:I
    .restart local v3       #nIntegrity:I
    goto :goto_0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    return v0
.end method

.method public getMaxDownloadBuffer()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    return v0
.end method

.method public isExistValidImage(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uriImage"

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 624
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 613
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isValidImage(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 615
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    move v1, v0

    .line 620
    .restart local v1       #bResult:I
    goto :goto_0

    .line 623
    .end local v1           #bResult:I
    .end local v2           #file:Ljava/io/File;
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 624
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isFileCacheExist(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Z)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 5
    .parameter "nIndex"
    .parameter "aPhoto"
    .parameter "bForceThumbnail"

    .prologue
    const/4 v4, 0x1

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz p2, :cond_0

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 605
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_0
    return-object v1

    .line 566
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_3

    .line 568
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->prepareImageCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 570
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 571
    const/4 v2, -0x2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_2
    :goto_1
    move-object v1, v0

    .line 605
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    goto :goto_0

    .line 581
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_3
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_4

    .line 584
    iput v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 588
    :cond_4
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isExistValidImage(Landroid/net/Uri;)Z

    move-result v2

    if-ne v4, v2, :cond_5

    .line 591
    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 592
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v2, :cond_2

    .line 593
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1

    .line 597
    :cond_5
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 598
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-nez v2, :cond_2

    .line 599
    iget v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoDownload(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    goto :goto_1
.end method

.method public isImageDownloadInProgress()Z
    .locals 6

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, bResult:Z
    const/4 v3, 0x0

    .line 805
    .local v3, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 806
    .local v2, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 808
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v1, 0x0

    .line 809
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 811
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 812
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v3       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v3, :cond_0

    .line 814
    iget v5, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    if-eqz v5, :cond_0

    .line 817
    const/4 v0, 0x1

    .line 823
    :cond_1
    return v0
.end method

.method public isScreenItemComplete(III)Z
    .locals 8
    .parameter "nIndexBegin"
    .parameter "nIndexEnd"
    .parameter "nIntegrity"

    .prologue
    .line 1893
    const/4 v2, 0x1

    .line 1894
    .local v2, bResult:Z
    const/4 v1, 0x0

    .line 1895
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v4, 0x0

    .line 1896
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move v5, p1

    .local v5, nIndex:I
    :goto_0
    if-le p2, v5, :cond_1

    .line 1900
    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 1896
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1903
    :catch_0
    move-exception v3

    .line 1918
    :cond_1
    :goto_1
    return v2

    .line 1905
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v4       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v4, :cond_3

    .line 1908
    const/4 v2, 0x0

    .line 1909
    goto :goto_1

    .line 1911
    :cond_3
    iget v6, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-le p3, v6, :cond_0

    .line 1914
    const/4 v2, 0x0

    .line 1915
    goto :goto_1
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 109
    sget v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, nCacheDir:Ljava/io/File;
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v2

    sput-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 117
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    const-string v2, "ImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProvider][onCreate]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 122
    if-eqz v1, :cond_1

    .line 123
    const-string v2, "ImageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ImageProvider][onCreate]: unable to create cache manager! PATH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v2, "ImageProvider"

    const-string v3, "[HTCAlbum][ImageProvider][onCreate]: Cache is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1633
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 132
    sget v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 133
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 134
    sget v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "ImageProvider"

    const-string v2, "[HTCAlbum][ImageProvider][onDestroy]: Destroy cache manager instance..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_0
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/CacheManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 147
    :cond_0
    const-string v1, "ImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onDestroy]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 174
    sget v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 175
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 176
    sget v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "ImageProvider"

    const-string v2, "[HTCAlbum][ImageProvider][onPause]: Destroy cache manager instance..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense/cache/CacheManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 189
    :cond_0
    const-string v1, "ImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onPause]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 152
    sget v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    .line 153
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    if-nez v1, :cond_0

    .line 155
    const-string v1, "ImageProvider"

    const-string v2, "[HTCAlbum][ImageProvider][onResume]: Create cache manager instance..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 160
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    const/high16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/htc/opensense/cache/CacheManager;->setMaxSizeAllocatedInCurrentFolder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    const-string v1, "ImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][onResume]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    .line 165
    const-string v1, "ImageProvider"

    const-string v2, "[HTCAlbum][ImageProvider][onResume]: unable to create cache manager!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][release]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->release()V

    .line 257
    :cond_0
    const-string v0, "ImageProvider"

    const-string v1, "[HTCAlbum][ImageProvider][release]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public releaseMemoryCache()V
    .locals 8

    .prologue
    .line 218
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v7, :cond_0

    .line 219
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 221
    :cond_0
    const/4 v4, 0x0

    .line 222
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v6, 0x0

    .line 223
    .local v6, nCountBmp:I
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 224
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 225
    .local v5, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 228
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 230
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 231
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 233
    const/4 v7, -0x1

    iput v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 234
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 235
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public requestPhotoDownload(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;I)I
    .locals 11
    .parameter "imageCache"
    .parameter "nIntegrity"

    .prologue
    const/4 v10, -0x2

    .line 1008
    const/4 v3, 0x0

    .line 1009
    .local v3, nTaskID:I
    const/4 v5, 0x0

    .line 1010
    .local v5, szURL:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1011
    .local v6, uri:Landroid/net/Uri;
    const/4 v2, 0x1

    .line 1014
    .local v2, isThumb:Z
    if-nez p1, :cond_0

    move v4, v3

    .line 1055
    .end local v3           #nTaskID:I
    .local v4, nTaskID:I
    :goto_0
    return v4

    .line 1017
    .end local v4           #nTaskID:I
    .restart local v3       #nTaskID:I
    :cond_0
    if-nez p2, :cond_2

    .line 1019
    iget-object v5, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 1020
    iget-object v6, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1021
    iput v10, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1031
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    move v4, v3

    .end local v3           #nTaskID:I
    .restart local v4       #nTaskID:I
    goto :goto_0

    .line 1023
    .end local v4           #nTaskID:I
    .restart local v3       #nTaskID:I
    :cond_2
    const/4 v7, 0x1

    if-ne v7, p2, :cond_1

    .line 1025
    iget-object v5, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 1027
    iget-object v6, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 1028
    const/4 v2, 0x0

    goto :goto_1

    .line 1033
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1034
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "photo_id"

    iget-object v8, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v7, "photo_url"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v7, "ImageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][ImageProvider][requestPhotoDownload]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-direct {p0, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->isLocalPath(Ljava/lang/String;)Z

    move-result v1

    .line 1041
    .local v1, inLocal:Z
    iget-boolean v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    if-nez v7, :cond_6

    if-eqz v1, :cond_6

    if-nez v6, :cond_6

    .line 1043
    iget v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v7, v10, :cond_4

    .line 1044
    const/4 v7, 0x0

    iput v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 1045
    :cond_4
    if-eqz v2, :cond_5

    .line 1046
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 1050
    :goto_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    :goto_3
    move v4, v3

    .line 1055
    .end local v3           #nTaskID:I
    .restart local v4       #nTaskID:I
    goto :goto_0

    .line 1048
    .end local v4           #nTaskID:I
    .restart local v3       #nTaskID:I
    :cond_5
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    goto :goto_2

    .line 1053
    :cond_6
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mFileCacheManager:Lcom/htc/opensense/cache/CacheManager;

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCbDownload:Lcom/htc/opensense/cache/DownloadCallback;

    invoke-virtual {v7, v5, v8, v0}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    move-result v3

    goto :goto_3
.end method

.method public requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V
    .locals 5
    .parameter "imageCache"

    .prologue
    const/4 v4, 0x0

    .line 893
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 895
    const-string v1, "ImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ImageProvider][requestPhotoUpdate]:1 update notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 897
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "index_id"

    iget v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 898
    const/16 v1, 0x4e89

    invoke-virtual {p1, v1, v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 914
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 902
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v1, :cond_1

    .line 905
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    iget v2, p1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    goto :goto_0

    .line 910
    :cond_1
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public resolveCandidateItem(Ljava/lang/String;Landroid/net/Uri;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .locals 7
    .parameter "szUrl"
    .parameter "uri"

    .prologue
    .line 513
    const/4 v2, 0x0

    .line 515
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    if-gtz v4, :cond_0

    .line 516
    const/4 v4, 0x0

    .line 553
    :goto_0
    return-object v4

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 522
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 524
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v0, 0x0

    .line 525
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 528
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v2       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_1

    .line 531
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->isCandidate()Z

    move-result v5

    if-ne v4, v5, :cond_4

    .line 537
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 539
    iput-object p2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 540
    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mCandidateCount:I

    .line 541
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][resolveCandidateItem]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v4, v2

    .line 553
    goto :goto_0

    .line 544
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 548
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAdapterList(Ljava/util/List;)V
    .locals 1
    .parameter "listAdapter"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mAdapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
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
    .line 865
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v2, p1

    move v3, p4

    move-object v4, p3

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 874
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 1638
    return-void
.end method

.method public setDefaultImage(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "nIPXType"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 319
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mIPTType:I

    packed-switch v0, :pswitch_data_0

    .line 330
    :pswitch_0
    return-void

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultImageResource(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "nResid"

    .prologue
    .line 299
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 304
    :cond_0
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    .line 305
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefaultResid:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .local v0, bitmapTemp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 307
    .local v1, nDimension:I
    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, v1, -0x1

    invoke-static {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDefault:Landroid/graphics/Bitmap;

    .line 310
    return-void
.end method

.method public setImageDecoder(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V
    .locals 0
    .parameter "decoder"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDecoder:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;

    .line 334
    return-void
.end method

.method public setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    .line 346
    return-void
.end method

.method public setMaxDownloadBuffer(I)V
    .locals 0
    .parameter "nBuffer"

    .prologue
    .line 363
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMaxDownloadBuffer:I

    .line 364
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "nScrollState"

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I

    .line 106
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "nBegin"
    .parameter "nEnd"

    .prologue
    .line 349
    if-le p1, p2, :cond_0

    .line 350
    move p2, p1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->setVisibleRange(II)V

    .line 356
    :cond_1
    return-void
.end method

.method public triggerNotifyImageDownloaded(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageDownloadListener:Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;

    invoke-interface {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;->onImageDownloaded(I)V

    .line 630
    :cond_0
    return-void
.end method
