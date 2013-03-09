.class public Lcom/google/android/finsky/utils/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;,
        Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;,
        Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;,
        Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;,
        Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;
    }
.end annotation


# static fields
.field private static MIN_CACHE_SIZE_BYTES:I


# instance fields
.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x30

    sput v0, Lcom/google/android/finsky/utils/BitmapLoader;->MIN_CACHE_SIZE_BYTES:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;II)V
    .locals 5
    .parameter "queue"
    .parameter "screenWidthPx"
    .parameter "screenHeightPx"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 57
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 68
    sget-object v2, Lcom/google/android/finsky/config/G;->bitmapLoaderCacheSizeOverrideMb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 71
    .local v1, gServicesCacheSizeMb:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 74
    sget v3, Lcom/google/android/finsky/utils/BitmapLoader;->MIN_CACHE_SIZE_BYTES:I

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x4

    int-to-float v4, v2

    sget-object v2, Lcom/google/android/finsky/config/G;->bitmapLoaderCacheSizeRatioToScreen:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    .local v0, cacheSizeInBytes:I
    :goto_0
    new-instance v2, Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-direct {v2, v0}, Lcom/google/android/finsky/utils/BitmapLruCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    .line 80
    return-void

    .line 77
    .end local v0           #cacheSizeInBytes:I
    :cond_0
    mul-int/lit16 v2, v1, 0x400

    mul-int/lit16 v0, v2, 0x400

    .restart local v0       #cacheSizeInBytes:I
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V
    .locals 4
    .parameter "cacheKey"
    .parameter "wrapper"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/BitmapLoader$2;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    .line 512
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .locals 11
    .parameter "requestUrl"
    .parameter "canHaveEmptyUrl"
    .parameter "cacheKey"
    .parameter "defaultImage"
    .parameter "remoteRequestCreator"
    .parameter "bitmapLoadedHandler"

    .prologue
    .line 156
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    .line 189
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/utils/BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 162
    .local v2, cachedBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 164
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    goto :goto_0

    .line 168
    :cond_1
    new-instance v3, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    .line 172
    .local v3, bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 173
    .local v10, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    if-eqz v10, :cond_2

    .line 175
    invoke-virtual {v10, v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->addHandler(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    move-object v0, v3

    .line 176
    goto :goto_0

    .line 180
    :cond_2
    invoke-interface/range {p5 .. p5}, Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;->create()Lcom/android/volley/Request;

    move-result-object v9

    .line 182
    .local v9, newRequest:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v9}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    invoke-direct {v1, p0, v9, v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/android/volley/Request;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 189
    goto :goto_0
.end method

.method private static getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;)V
    .locals 5
    .parameter "cacheKey"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 343
    .local v1, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    if-eqz v1, :cond_0

    .line 345
    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V

    .line 346
    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v1}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v1}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, url:Ljava/lang/String;
    :goto_0
    const-string v2, "Bitmap error %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-void

    .line 346
    :cond_1
    const-string v0, "<null request>"

    goto :goto_0
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "cacheKey"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 313
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    mul-int/2addr v1, v2

    const v2, 0x7d000

    if-gt v1, v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/utils/BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 323
    .local v0, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    sget-object v1, Lcom/google/android/finsky/config/G;->explorerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    if-nez v0, :cond_1

    .line 335
    :goto_1
    return-void

    .line 316
    .end local v0           #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    :cond_0
    const-string v1, "%s is too large to cache"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    .restart local v0       #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    :cond_1
    #setter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->responseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$302(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V

    .line 334
    const-string v1, "Loaded bitmap %s"

    new-array v2, v3, [Ljava/lang/Object;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v0}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public drain(I)V
    .locals 4
    .parameter "sequenceNumber"

    .prologue
    .line 88
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v3, p1}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V

    .line 89
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 90
    .local v2, wrappersToRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/volley/Request;->getSequence()I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 96
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .restart local v1       #key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    .end local v1           #key:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public evictCache()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLruCache;->evictAll()V

    .line 109
    return-void
.end method

.method public get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .locals 6
    .parameter "requestUrl"
    .parameter "defaultImage"
    .parameter "bitmapLoadedHandler"

    .prologue
    const/4 v4, 0x0

    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .locals 13
    .parameter "requestUrl"
    .parameter "defaultImage"
    .parameter "bitmapLoadedHandler"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 288
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/BitmapLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, cacheKey:Ljava/lang/String;
    const/4 v8, 0x0

    new-instance v2, Lcom/google/android/finsky/utils/BitmapLoader$1;

    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/utils/BitmapLoader$1;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v6, p0

    move-object v7, p1

    move-object v9, v5

    move-object v10, p2

    move-object v11, v2

    move-object/from16 v12, p3

    invoke-direct/range {v6 .. v12}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v2

    return-object v2
.end method
