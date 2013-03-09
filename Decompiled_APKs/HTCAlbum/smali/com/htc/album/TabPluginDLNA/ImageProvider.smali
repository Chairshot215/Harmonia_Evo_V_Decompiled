.class public Lcom/htc/album/TabPluginDLNA/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    }
.end annotation


# static fields
.field public static final IPXTYPE_CUBE:I = 0x1

.field public static final IPXTYPE_UNKNOW:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_DOWNLOAD_BUFFER_GRID_L:I = 0x14

.field public static final MAX_DOWNLOAD_BUFFER_GRID_P:I = 0x1c


# instance fields
.field private mContentProvider:Landroid/content/ContentProviderClient;

.field private mContext:Landroid/content/Context;

.field private mHandlerData:Landroid/os/Handler;

.field private mImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnableMemCache:Z

.field private mListDefaultImage:Ljava/util/List;

.field private mMaxDownloadBuffer:I

.field private mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

.field private mMemCacheSize:I

.field private mUIScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 52
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 53
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    .line 59
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheSize:I

    .line 60
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMaxDownloadBuffer:I

    .line 61
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mIsEnableMemCache:Z

    .line 62
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mUIScrollState:I

    .line 81
    return-void
.end method

.method public static bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmapSrc"
    .parameter "bitmapMask"

    .prologue
    const/4 v9, 0x0

    .line 957
    move-object v1, p1

    .line 958
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 959
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 961
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 962
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

    .line 964
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 965
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 966
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

    .line 968
    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 971
    const/4 v1, 0x0

    .line 973
    :cond_0
    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 976
    const/4 v0, 0x0

    .line 978
    :cond_1
    return-object v2
.end method

.method public static bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidthDest"
    .parameter "nHeightDest"

    .prologue
    .line 927
    if-nez p0, :cond_1

    .line 930
    const/4 v0, 0x0

    .line 953
    :cond_0
    :goto_0
    return-object v0

    .line 932
    :cond_1
    const/4 v0, 0x0

    .line 934
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 935
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 937
    .local v2, nHeightSrc:I
    sub-int v6, v3, p1

    div-int/lit8 v4, v6, 0x2

    .line 938
    .local v4, nXMargin:I
    sub-int v6, v2, p2

    div-int/lit8 v5, v6, 0x2

    .line 942
    .local v5, nYMargin:I
    :try_start_0
    invoke-static {p0, v4, v5, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 949
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 951
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 944
    :catch_0
    move-exception v1

    .line 946
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

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

.method public static bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmapSrc"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 878
    if-nez p0, :cond_1

    .line 881
    const/4 v7, 0x0

    .line 904
    :cond_0
    :goto_0
    return-object v7

    .line 883
    :cond_1
    const/4 v7, 0x0

    .line 884
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 885
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 886
    .local v3, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 889
    .local v4, nHeightSrc:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 893
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 900
    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 895
    :catch_0
    move-exception v8

    .line 897
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bitmapResize] OutOfMemoryError, "

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

    .line 908
    invoke-static {p0}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v1

    .line 909
    .local v1, nDimensionSrc:[I
    aget v3, v1, v5

    if-lt v3, v4, :cond_0

    aget v3, v1, v4

    if-ge v3, v4, :cond_1

    .line 911
    :cond_0
    const/4 v0, 0x0

    .line 920
    :goto_0
    return-object v0

    .line 913
    :cond_1
    const/4 v0, 0x0

    .line 915
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 916
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    aget v3, v1, v5

    aget v4, v1, v4

    invoke-static {v3, v4, p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->countGridSampleValue(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 917
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 918
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 920
    goto :goto_0
.end method

.method public static bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmapSrc"
    .parameter "nDimTarget"

    .prologue
    .line 839
    if-nez p0, :cond_0

    .line 842
    const/4 v0, 0x0

    .line 874
    :goto_0
    return-object v0

    .line 845
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 846
    .local v4, nWidthSrc:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 848
    .local v2, nHeightSrc:I
    const/4 v0, 0x0

    .line 849
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 850
    .local v3, nWidth:F
    const/4 v1, 0x0

    .line 853
    .local v1, nHeight:F
    if-ge v4, v2, :cond_1

    .line 855
    int-to-float v3, p1

    .line 856
    mul-int v5, p1, v2

    div-int/2addr v5, v4

    int-to-float v1, v5

    .line 871
    :goto_1
    float-to-int v5, v3

    float-to-int v6, v1

    invoke-static {p0, v5, v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 874
    goto :goto_0

    .line 859
    :cond_1
    if-le v4, v2, :cond_2

    .line 861
    mul-int v5, p1, v4

    div-int/2addr v5, v2

    int-to-float v3, v5

    .line 862
    int-to-float v1, p1

    goto :goto_1

    .line 866
    :cond_2
    int-to-float v1, p1

    .line 867
    int-to-float v3, p1

    goto :goto_1
.end method

.method public static createBitmapCube(ILjava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "nIndex"
    .parameter "fDescriptor"
    .parameter "nDimension"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 736
    if-nez p1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-object v0

    .line 739
    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 744
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 745
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 749
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_1
    sget-object v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE_ARRAY:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v6

    aget v5, v5, v6

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 762
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 763
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 764
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 768
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 773
    .local v2, bitmapResized:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 783
    :goto_2
    if-eqz v1, :cond_2

    .line 784
    invoke-static {v1, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 786
    :cond_2
    if-eqz v2, :cond_0

    .line 787
    invoke-static {v2, p2, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 751
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapFull:Landroid/graphics/Bitmap;
    .end local v2           #bitmapResized:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 753
    .local v3, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createBitmapCube] Unable to decodeFileDescriptor, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 775
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapFull:Landroid/graphics/Bitmap;
    .restart local v2       #bitmapResized:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 777
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[createBitmapCube] Unable to decodeFileDescriptor, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static createBitmapCube(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nIndex"
    .parameter "szFilePath"
    .parameter "nDimension"

    .prologue
    const/4 v5, 0x1

    .line 717
    invoke-static {p1}, Lcom/htc/util/media/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 718
    .local v3, nDimensionSrc:[I
    const/4 v4, 0x0

    aget v4, v3, v4

    if-lt v4, v5, :cond_0

    aget v4, v3, v5

    if-ge v4, v5, :cond_1

    .line 720
    :cond_0
    const/4 v0, 0x0

    .line 732
    :goto_0
    return-object v0

    .line 723
    :cond_1
    const/4 v0, 0x0

    .line 724
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 725
    .local v1, bitmapFull:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 728
    .local v2, bitmapResized:Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 729
    invoke-static {v1, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapResizeByProportion(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 730
    invoke-static {v2, p2, p2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 732
    goto :goto_0
.end method

.method private doGetImageDecode(Landroid/content/Context;ILjava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nIndex"
    .parameter "szUri"
    .parameter "fDescriptor"
    .parameter "isToMemoryCache"

    .prologue
    const/4 v8, 0x1

    .line 673
    const/4 v1, 0x0

    .line 675
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    invoke-static {p2, p4, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->createBitmapCube(ILjava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    if-ne v8, p5, :cond_0

    .line 680
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const/4 v3, 0x5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 691
    :cond_0
    return-object v1
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;ZI)Z
    .locals 4
    .parameter "context"
    .parameter "bIsEnableMemCache"
    .parameter "nMemCacheSize"

    .prologue
    const/4 v3, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, bResult:Z
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    .line 87
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProvider][Initialize]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-boolean p2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mIsEnableMemCache:Z

    .line 90
    iput p3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheSize:I

    .line 92
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 94
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    .line 95
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->resetMemoryCacheSize(IIZ)V

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getImageContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    .line 100
    return v0
.end method

.method public Uninitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][Uninitialize]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 120
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 122
    :cond_0
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    .line 126
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetDefaultImage()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->release()V

    .line 132
    return-void
.end method

.method public createBitmapRoundedCube(Landroid/content/Context;ILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "context"
    .parameter "nPosition"
    .parameter "szUri"
    .parameter "nResDefault"
    .parameter "nResMask"

    .prologue
    .line 793
    const/4 v8, 0x0

    .line 798
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 799
    .local v11, bitmapSrc:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 800
    .local v10, bitmapMask:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 802
    .local v7, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 803
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILjava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 805
    :cond_0
    if-nez v11, :cond_2

    .line 807
    const/4 v1, -0x1

    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    move-object v9, v8

    .line 835
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 810
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, p4

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 813
    :cond_2
    const/4 v1, -0x1

    move/from16 v0, p5

    if-ne v1, v0, :cond_5

    .line 814
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPhotoFrameMask(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 818
    :goto_1
    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    .line 820
    invoke-static {v11, v10}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->bitmapApplyMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 825
    :cond_3
    if-eqz v7, :cond_4

    .line 826
    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_4
    :goto_2
    const/4 v7, 0x0

    move-object v9, v8

    .line 835
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 816
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, p5

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1

    .line 828
    :catch_0
    move-exception v12

    .line 831
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public doImageDecode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "nPosition"
    .parameter "szUri"

    .prologue
    const/4 v7, 0x1

    .line 633
    const/4 v9, 0x0

    .line 634
    .local v9, bResult:Z
    const/4 v10, 0x0

    .line 639
    .local v10, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 646
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][doImageDecode]: no need to decode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    :goto_0
    return v9

    .line 650
    :cond_1
    const/4 v8, 0x0

    .line 651
    .local v8, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 656
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILjava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 660
    :try_start_0
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_1
    const/4 v8, 0x0

    .line 669
    goto :goto_0

    .line 662
    :catch_0
    move-exception v11

    .line 665
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public forwardFullDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "serviceManager"
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"

    .prologue
    const/4 v5, 0x0

    .line 375
    const/4 v1, -0x1

    .line 377
    .local v1, nIntegrity:I
    if-nez p1, :cond_0

    move v2, v1

    .line 405
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 380
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_0
    const/4 v3, 0x0

    .line 382
    .local v3, szKey:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 383
    move-object v3, p4

    .line 387
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 388
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 390
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 391
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 392
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 393
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 394
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 395
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 396
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p1, p2, v5, p4, v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestItemPhoto(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    const/4 v1, -0x4

    .line 404
    :cond_2
    sget-object v4, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][requestFullPhotoDownload]: fullImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 405
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_3
    move v2, v1

    .line 385
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0
.end method

.method public forwardThumbnailDownloadRequest(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "serviceManager"
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"

    .prologue
    const/4 v5, 0x0

    .line 336
    const/4 v1, -0x1

    .line 338
    .local v1, nIntegrity:I
    if-nez p1, :cond_0

    move v2, v1

    .line 367
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 341
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_0
    const/4 v3, 0x0

    .line 343
    .local v3, szKey:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 344
    move-object v3, p4

    .line 349
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 350
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 352
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;-><init>()V

    .line 353
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iput p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 354
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 355
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 356
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 357
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 358
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p1, p2, v5, p4, v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->requestItemPhoto(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 363
    const/4 v1, -0x2

    .line 366
    :cond_2
    sget-object v4, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][requestThumbnailDownload]: thumnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 367
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_3
    move v2, v1

    .line 346
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0
.end method

.method public getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .parameter "szUri"

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, bResult:Z
    const/4 v4, 0x0

    .line 297
    .local v4, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    if-nez v5, :cond_0

    move-object v1, v0

    .line 327
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .local v1, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v1

    .line 308
    .end local v1           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 327
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v1       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 310
    .end local v1           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v3

    .line 313
    .local v3, e1:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 315
    .end local v3           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 318
    .local v3, e1:Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ImageProvider][getCachedFile]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v3           #e1:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 324
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getDefaultImage(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "nResid"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 219
    .local v1, imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 221
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;

    .restart local v1       #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_1
    iget v3, v1, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mResID:I

    if-ne p1, v3, :cond_0

    .line 227
    iget-object v0, v1, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 229
    :cond_2
    return-object v0
.end method

.method public getFullImageState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I
    .locals 6
    .parameter "mediumInfo"

    .prologue
    const/4 v5, 0x0

    .line 451
    const/4 v2, -0x1

    .line 453
    .local v2, nIntegrity:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 488
    .end local v2           #nIntegrity:I
    :cond_0
    :goto_0
    return v2

    .line 456
    .restart local v2       #nIntegrity:I
    :cond_1
    if-eqz p1, :cond_0

    .line 459
    iget-object v3, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 461
    .local v3, szKey:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 464
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 466
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v1, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, fullImgUri:Ljava/lang/String;
    iget-object v4, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 473
    iget-object v4, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_2
    if-eqz v0, :cond_3

    .line 478
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->isCachedFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 480
    iput-object v0, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 481
    const/4 v2, 0x1

    goto :goto_0

    .line 485
    :cond_3
    iput-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 486
    iput-object v5, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageBitmap(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "nIndex"
    .parameter "szUri"

    .prologue
    const/4 v7, 0x1

    .line 555
    const/4 v9, 0x0

    .line 556
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 558
    .local v8, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v10, v9

    .line 594
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v10

    .line 564
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->getDefaultCacheKey()I

    move-result v6

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 570
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v10, v9

    .line 571
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 572
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v9, 0x0

    .line 577
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v10, v9

    .line 578
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 580
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->doGetImageDecode(Landroid/content/Context;ILjava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 581
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    const/4 v9, 0x0

    .line 585
    :cond_4
    :try_start_0
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_1
    const/4 v8, 0x0

    move-object v10, v9

    .line 594
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 587
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 590
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getImageBitmap2(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "nIndex"
    .parameter "szUri"

    .prologue
    .line 529
    const/4 v8, 0x0

    .line 531
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v9, v8

    .line 550
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 537
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x1

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_2

    .line 544
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProvider][getImageBitmap2]: null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 545
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 547
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    const/4 v8, 0x0

    :cond_3
    move-object v9, v8

    .line 550
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getImageBitmapMasked(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "nIndex"
    .parameter "szUri"

    .prologue
    const/4 v11, -0x1

    .line 599
    const/4 v9, 0x0

    .line 600
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 602
    .local v8, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v10, v9

    .line 627
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v10

    .line 608
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->getDefaultCacheKey()I

    move-result v6

    const/4 v7, 0x1

    move-object v1, p3

    move v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 614
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v10, v9

    .line 615
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 616
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v9, 0x0

    .line 621
    invoke-virtual {p0, p3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v10, v9

    .line 622
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v11

    move v5, v11

    .line 624
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->createBitmapRoundedCube(Landroid/content/Context;ILjava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v10, v9

    .line 627
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getMaxDownloadBuffer()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMaxDownloadBuffer:I

    return v0
.end method

.method public getThumbnailState(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I
    .locals 6
    .parameter "mediumInfo"

    .prologue
    const/4 v5, 0x0

    .line 410
    const/4 v1, -0x1

    .line 412
    .local v1, nIntegrity:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 446
    .end local v1           #nIntegrity:I
    :cond_0
    :goto_0
    return v1

    .line 415
    .restart local v1       #nIntegrity:I
    :cond_1
    if-eqz p1, :cond_0

    .line 418
    iget-object v2, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 420
    .local v2, szKey:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 423
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 425
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 428
    const/4 v3, 0x0

    .line 429
    .local v3, thumbUri:Ljava/lang/String;
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 431
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    :cond_2
    if-eqz v3, :cond_3

    .line 436
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->isCachedFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 438
    iput-object v3, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 439
    const/4 v1, 0x0

    goto :goto_0

    .line 443
    :cond_3
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 444
    iput-object v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCachedFileExist(Ljava/lang/String;)Z
    .locals 9
    .parameter "szUri"

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, bResult:Z
    const/4 v5, 0x0

    .line 250
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    if-nez v6, :cond_0

    move v2, v1

    .line 291
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 261
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContentProvider:Landroid/content/ContentProviderClient;

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 280
    :goto_1
    if-nez v0, :cond_1

    move v2, v1

    .line 281
    .restart local v2       #bResult:I
    goto :goto_0

    .line 263
    .end local v2           #bResult:I
    :catch_0
    move-exception v4

    .line 266
    .local v4, e1:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v4           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 271
    .local v4, e1:Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ImageProvider][isCachedFileExist]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v4           #e1:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 277
    .local v4, e1:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 284
    .end local v4           #e1:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 289
    :goto_2
    const/4 v0, 0x0

    .line 290
    const/4 v1, 0x1

    move v2, v1

    .line 291
    .restart local v2       #bResult:I
    goto :goto_0

    .line 285
    .end local v2           #bResult:I
    :catch_3
    move-exception v3

    .line 287
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 709
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetCacheDownloadRequest()V

    .line 174
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->clear()V

    .line 178
    :cond_0
    return-void
.end method

.method public resetCacheDownloadRequest()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 136
    return-void
.end method

.method public resetDefaultImage()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 236
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;

    .restart local v0       #imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    if-eqz v0, :cond_1

    .line 238
    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    .line 234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 245
    return-void
.end method

.method public resetDownloadingCache()V
    .locals 8

    .prologue
    .line 139
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 140
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 141
    .local v5, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;>;"
    const/4 v2, 0x0

    .line 144
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;>;"
    const/4 v4, 0x0

    .line 145
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 151
    const/4 v6, -0x2

    iget v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v6, v7, :cond_0

    .line 154
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public resetMemoryCache()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ImageProvider][resetMemoryCache]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mUIScrollState:I

    .line 184
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->resetDefaultImage()V

    .line 185
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->release()V

    .line 186
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mHandlerData:Landroid/os/Handler;

    .line 714
    return-void
.end method

.method public setDefaultImageResource(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "nResid"

    .prologue
    .line 197
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;-><init>(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V

    .line 198
    .local v0, imageDefault:Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
    iput p2, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mResID:I

    .line 199
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    .line 201
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mListDefaultImage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public setMaxDownloadBuffer(I)V
    .locals 0
    .parameter "nBuffer"

    .prologue
    .line 189
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMaxDownloadBuffer:I

    .line 190
    return-void
.end method

.method public setPhotoDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"
    .parameter "uri"
    .parameter "nIntegrity"

    .prologue
    const/4 v4, 0x1

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 496
    .local v2, szKey:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 497
    move-object v2, p2

    .line 503
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mImageCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .line 504
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v1, :cond_2

    .line 524
    .end local v1           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_0
    :goto_1
    return v0

    .line 498
    :cond_1
    if-eqz p3, :cond_0

    .line 499
    move-object v2, p3

    goto :goto_0

    .line 507
    .restart local v1       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    if-nez p5, :cond_3

    if-eqz p4, :cond_3

    .line 509
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 510
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 513
    :cond_3
    if-ne v4, p5, :cond_4

    if-eqz p4, :cond_4

    .line 515
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 516
    iput v4, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1

    .line 520
    :cond_4
    const/4 v3, -0x3

    iput v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    goto :goto_1
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "nScrollState"

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mUIScrollState:I

    .line 106
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "nBegin"
    .parameter "nEnd"

    .prologue
    .line 205
    if-gez p1, :cond_0

    .line 206
    const/4 p1, 0x0

    .line 208
    :cond_0
    if-le p1, p2, :cond_1

    .line 209
    move p2, p1

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider;->mMemCacheManager:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCacheManager;->setVisibleRange(II)V

    .line 214
    :cond_2
    return-void
.end method
