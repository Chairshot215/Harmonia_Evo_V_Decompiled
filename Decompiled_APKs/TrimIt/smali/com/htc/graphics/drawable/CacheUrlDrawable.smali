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

    .prologue
    .line 296
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRamCache:Ljava/util/WeakHashMap;

    .line 297
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$2;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$2;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 658
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    .line 682
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sPaint:Landroid/graphics/Paint;

    .line 684
    sget-object v0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 685
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;-><init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mHandler:Landroid/os/Handler;

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 423
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "options"
    .parameter "state"

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$1;-><init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mHandler:Landroid/os/Handler;

    .line 470
    iput-object p4, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 471
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;)V

    .line 472
    return-void
.end method

.method static synthetic access$000(Lcom/htc/graphics/drawable/CacheUrlDrawable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mNeverDrawn:Z

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/graphics/drawable/CacheUrlDrawable;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private alloweToGetImg()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 602
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    if-nez v1, :cond_1

    .line 604
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

    .prologue
    .line 665
    sget-object v2, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sRamCache:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 666
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->isEnqueued()Z

    move-result v2

    if-nez v2, :cond_1

    .line 667
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 668
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 676
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 677
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->enqueue()Z

    .line 679
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 476
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p1, p2, v1}, Lcom/htc/opensense/cache/CacheManager;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 485
    :goto_0
    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 485
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 481
    :catch_1
    move-exception v0

    .line 483
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private getCallbackInstance(Landroid/content/Context;)Lcom/htc/opensense/cache/DownloadCallback;
    .locals 1
    .parameter "context"

    .prologue
    .line 489
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/content/Context;)V

    return-object v0
.end method

.method private static getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "forceDim"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v4, 0x1

    .line 371
    invoke-static {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>(II)V

    .line 374
    .local v0, default_dim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    invoke-virtual {p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {p1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    iget v2, p1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v3, p1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 389
    .end local v0           #default_dim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    :cond_0
    :goto_0
    return-object p0

    .line 381
    .restart local v0       #default_dim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    :cond_1
    invoke-static {v0, p2, p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScaledDimension(Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    move-result-object v1

    .line 382
    .local v1, scaled_dim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    invoke-virtual {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iget v2, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v3, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method private static getScaledDimension(Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    .locals 3
    .parameter "original"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 336
    :cond_1
    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    .line 337
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 338
    :cond_2
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-le p1, p2, :cond_3

    .line 339
    new-instance v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    move-result-object v0

    .line 344
    .local v0, scaled:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;
    if-lez p1, :cond_4

    .line 345
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-ge v1, p1, :cond_5

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_5

    .line 346
    iput p1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    .line 347
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

    .line 355
    :cond_4
    :goto_1
    if-lez p2, :cond_0

    .line 356
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-le v1, p2, :cond_6

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_6

    .line 357
    iput p2, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    .line 358
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

    .line 348
    :cond_5
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-ge v1, p1, :cond_4

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_4

    .line 350
    iput p1, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    .line 351
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

    .line 359
    :cond_6
    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    if-le v1, p2, :cond_0

    iget v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_0

    .line 361
    iput p2, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    .line 362
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
    .parameter "bitmap"

    .prologue
    .line 329
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
    .parameter "bitmap"
    .parameter "recycleOriginal"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x40a0

    .line 613
    const/high16 v0, 0x40a0

    .line 621
    .local v0, ROUND_RADIUS:F
    invoke-static {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 622
    move-object v5, p0

    .line 623
    .local v5, temp_bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 625
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 626
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 627
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 628
    const v7, -0xbdbdbe

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v3, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 636
    .local v3, rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 637
    .local v4, rectf:Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v10, v10, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 638
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 640
    invoke-virtual {v1, v5, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 641
    if-eqz p1, :cond_0

    .line 642
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 646
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #rectf:Landroid/graphics/RectF;
    .end local v5           #temp_bitmap:Landroid/graphics/Bitmap;
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    move-object p0, v6

    goto :goto_0
.end method

.method private sacaleRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->minDim:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->maxDim:I

    invoke-static {p1, v0, v1, v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 514
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-boolean v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->roundify:Z

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->roundifyBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 517
    :cond_0
    return-object p1
.end method

.method private writeBitmapToRamCache(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 650
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

    .line 656
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 692
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

    .line 699
    :cond_0
    iput-boolean v6, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mNeverDrawn:Z

    .line 700
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 701
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    const/4 v0, 0x0

    .local v0, transX:F
    const/4 v1, 0x0

    .line 704
    .local v1, transY:F
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_4

    .line 705
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 711
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_5

    .line 712
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 718
    :cond_2
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 719
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

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 758
    .end local v0           #transX:F
    .end local v1           #transY:F
    :cond_3
    :goto_2
    return-void

    .line 707
    .restart local v0       #transX:F
    .restart local v1       #transY:F
    :cond_4
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_1

    .line 708
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

    .line 714
    :cond_5
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    .line 715
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

    .line 724
    .end local v0           #transX:F
    .end local v1           #transY:F
    :cond_6
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 729
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 730
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 731
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 732
    const/4 v0, 0x0

    .restart local v0       #transX:F
    const/4 v1, 0x0

    .line 733
    .restart local v1       #transY:F
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_9

    .line 734
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

    .line 740
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_a

    .line 741
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

    .line 747
    :cond_8
    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 748
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

    .line 751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 736
    :cond_9
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_7

    .line 737
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

    .line 743
    :cond_a
    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->overlayPos:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_8

    .line 744
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

    .line 754
    .end local v0           #transX:F
    .end local v1           #transY:F
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

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->height:I

    .line 811
    :goto_0
    return v0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 811
    :cond_2
    const/16 v0, 0x17

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;

    iget v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Dimension;->width:I

    .line 827
    :goto_0
    return v0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 827
    :cond_2
    const/16 v0, 0x17

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 765
    const/4 v0, -0x3

    return v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-object v0
.end method

.method public isDimChanged()Z
    .locals 3

    .prologue
    const/16 v2, 0x17

    .line 792
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

    .prologue
    const/4 v1, 0x0

    .line 435
    iput-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->reset()V

    .line 438
    iput-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    .line 440
    :cond_0
    iput-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mNeverDrawn:Z

    .line 442
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 774
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 782
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 398
    return-void
.end method

.method setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;)V
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    const/4 v7, 0x1

    .line 523
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->resetParams()V

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 525
    iput-object p2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    .line 526
    if-eqz p3, :cond_1

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    .line 528
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    const-string v5, "UrlDrawable"

    const-string v6, "Url is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    :goto_1
    return-void

    .line 526
    .restart local p3
    :cond_1
    new-instance p3, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    .end local p3
    invoke-direct {p3}, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;-><init>()V

    goto :goto_0

    .line 533
    :cond_2
    if-nez p1, :cond_3

    .line 534
    const-string v5, "UrlDrawable"

    const-string v6, "Context is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 538
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

    .line 541
    const-string v5, "UrlDrawable"

    const-string v6, "Options.minDim is not within the valid range set by Options.forceDim!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 547
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

    .line 550
    const-string v5, "UrlDrawable"

    const-string v6, "Options.maxDim is not within the valid range set by Options.forceDim!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 556
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

    .line 558
    const-string v5, "UrlDrawable"

    const-string v6, "Options.minDim should not exceed Options.maxDim!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 562
    :cond_6
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 563
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sacaleRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 565
    :cond_7
    const/4 v0, 0x0

    .line 567
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 572
    :goto_2
    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 574
    invoke-direct {p0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->alloweToGetImg()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 575
    const-string v5, "cache_to_provider"

    invoke-static {p1, v5}, Lcom/htc/opensense/cache/CacheManager;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager;

    move-result-object v1

    .line 577
    .local v1, cacheManager:Lcom/htc/opensense/cache/CacheManager;
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/htc/opensense/cache/CacheManager;->getDownloadInfo(Ljava/lang/String;)Lcom/htc/opensense/cache/CacheManager$Info;

    move-result-object v4

    .line 578
    .local v4, info:Lcom/htc/opensense/cache/CacheManager$Info;
    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getCallbackInstance(Landroid/content/Context;)Lcom/htc/opensense/cache/DownloadCallback;

    move-result-object v2

    .line 579
    .local v2, callback:Lcom/htc/opensense/cache/DownloadCallback;
    iget v5, v4, Lcom/htc/opensense/cache/CacheManager$Info;->status:I

    if-ne v5, v7, :cond_9

    .line 580
    iget-object v5, v4, Lcom/htc/opensense/cache/CacheManager$Info;->uri:Landroid/net/Uri;

    invoke-direct {p0, p1, v5}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 594
    .end local v1           #cacheManager:Lcom/htc/opensense/cache/CacheManager;
    .end local v2           #callback:Lcom/htc/opensense/cache/DownloadCallback;
    .end local v4           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :cond_8
    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 595
    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->sacaleRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 582
    .restart local v1       #cacheManager:Lcom/htc/opensense/cache/CacheManager;
    .restart local v2       #callback:Lcom/htc/opensense/cache/DownloadCallback;
    .restart local v4       #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :cond_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 583
    .local v3, downloadExtra:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mOptions:Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;

    iget-boolean v5, v5, Lcom/htc/graphics/drawable/CacheUrlDrawable$Options;->downloadDataExpedited:Z

    if-eqz v5, :cond_a

    .line 584
    const-string v5, "expedited"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    :cond_a
    iget-object v5, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v3}, Lcom/htc/opensense/cache/CacheManager;->downloadPhotoByUrl(Ljava/lang/String;Lcom/htc/opensense/cache/DownloadCallback;Landroid/os/Bundle;)I

    goto/16 :goto_1

    .line 568
    .end local v1           #cacheManager:Lcom/htc/opensense/cache/CacheManager;
    .end local v2           #callback:Lcom/htc/opensense/cache/DownloadCallback;
    .end local v3           #downloadExtra:Landroid/os/Bundle;
    .end local v4           #info:Lcom/htc/opensense/cache/CacheManager$Info;
    :catch_0
    move-exception v5

    goto :goto_2
.end method
