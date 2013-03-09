.class public Lcom/htc/graphics/drawable/CacheUrlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CacheUrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;,
        Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;
    }
.end annotation


# static fields
.field protected static final CACHE_PATH:Ljava/lang/String; = ""

.field protected static final DEBUT_LOG_ENABLED:Z = false

.field private static final DEFAULT_HEIGHT:I = 0x17

.field private static final DEFAULT_WIDTH:I = 0x17

.field private static final LOG_TAG:Ljava/lang/String; = "UrlDrawable"

.field private static final MAX_FETCHED_IMAGE_DIMENSION:I = 0x96

.field private static final sFileUtilLock:Ljava/lang/Object;

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sRamCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mNeverDrawn:Z

.field protected mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

.field private mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRamCache:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$2;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$2;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;-><init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;-><init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/graphics/drawable/CacheUrlDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mNeverDrawn:Z

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/graphics/drawable/CacheUrlDrawable;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private alloweToGetImg()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmapFromRamCache()Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v2, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRamCache:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->isEnqueued()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->enqueue()Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p1, p2, v1}, Lcom/htc/opensense/cache/CacheManager;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private getCallbackInstance(Landroid/content/Context;)Lcom/htc/opensense/cache/DownloadCallback;
    .locals 1

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/content/Context;)V

    return-object v0
.end method

.method private static getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>(II)V

    invoke-virtual {p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v3, p1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {v0, p2, p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScaledDimension(Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v3, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method private static getScaledDimension(Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-le p1, p2, :cond_3

    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    move-result-object v0

    if-lez p1, :cond_4

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-ge v1, p1, :cond_5

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_5

    iput p1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    :cond_4
    :goto_1
    if-lez p2, :cond_0

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-le v1, p2, :cond_6

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_6

    iput p2, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-ge v1, p1, :cond_4

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_4

    iput p1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-le v1, p2, :cond_0

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_0

    iput p2, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    goto/16 :goto_0
.end method

.method public static final isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static roundifyBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x40a0

    const/high16 v0, 0x40a0

    invoke-static {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, p0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v7, -0xbdbdbe

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v3, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v4, v10, v10, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v5, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object p0, v6

    goto :goto_0
.end method

.method private sacaleRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    invoke-static {p1, v0, v1, v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-boolean v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->roundify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->roundifyBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private writeBitmapToRamCache(Landroid/graphics/Bitmap;)V
    .locals 4

    sget-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRamCache:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-boolean v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->drawOnScroll:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    iput-boolean v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mNeverDrawn:Z

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    :cond_2
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v4, v4, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v4

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    :cond_8
    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v4, v4, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v1, v2, v4

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v4

    goto :goto_4

    :cond_b
    const-string v2, "UrlDrawable"

    const-string v3, "[%d][%s] Nothing can be drawn"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-object v0
.end method

.method public isDimChanged()Z
    .locals 3

    const/16 v2, 0x17

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicWidth()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetParams()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->reset()V

    iput-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    :cond_0
    iput-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mNeverDrawn:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-void
.end method

.method setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->resetParams()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    if-eqz p3, :cond_1

    :goto_0
    iput-object p3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "UrlDrawable"

    const-string v6, "Url is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance p3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    invoke-direct {p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;-><init>()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v5, "UrlDrawable"

    const-string v6, "Context is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget-object v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v6, v6, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget-object v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v6, v6, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    if-ge v5, v6, :cond_4

    const-string v5, "UrlDrawable"

    const-string v6, "Options.minDim is not within the valid range set by Options.forceDim!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget-object v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v6, v6, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget-object v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v6, v6, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    if-le v5, v6, :cond_5

    const-string v5, "UrlDrawable"

    const-string v6, "Options.maxDim is not within the valid range set by Options.forceDim!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    iget-object v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v6, v6, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    if-le v5, v6, :cond_6

    const-string v5, "UrlDrawable"

    const-string v6, "Options.minDim should not exceed Options.maxDim!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sacaleRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_7
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->alloweToGetImg()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "cache_to_provider"

    invoke-static {p1, v5}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/htc/opensense/cache/CacheManager;->getDownloadInfo(Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getCallbackInstance(Landroid/content/Context;)Lcom/htc/opensense/cache/DownloadCallback;

    move-result-object v2

    iget v5, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-ne v5, v7, :cond_9

    iget-object v5, v4, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-direct {p0, p1, v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8
    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sacaleRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    :cond_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-boolean v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->downloadDataExpedited:Z

    if-eqz v5, :cond_a

    const-string v5, "expedited"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v3}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    goto/16 :goto_1

    :catch_0
    move-exception v5

    goto :goto_2
.end method
