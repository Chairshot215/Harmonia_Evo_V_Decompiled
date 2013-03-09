.class Lcom/android/htccontacts/ContactPhotoManagerImpl;
.super Lcom/android/htccontacts/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;,
        Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "ContactPhotoLoader"

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManager;-><init>()V

    .line 251
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 276
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 279
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v2, Landroid/util/LruCache;

    const v3, 0x7f0d0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 281
    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 282
    .local v0, maxBytes:I
    new-instance v2, Lcom/android/htccontacts/ContactPhotoManagerImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/htccontacts/ContactPhotoManagerImpl$1;-><init>(Lcom/android/htccontacts/ContactPhotoManagerImpl;I)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 287
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 288
    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactPhotoManagerImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZ)V
    .locals 2
    .parameter "key"
    .parameter "bytes"
    .parameter "preloading"

    .prologue
    .line 517
    new-instance v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p2}, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([B)V

    .line 518
    .local v0, holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    .line 522
    if-nez p3, :cond_0

    .line 523
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method private inflateBitmap(Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 392
    iget-object v1, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 393
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 401
    iget-object v2, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 407
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 409
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)Z
    .locals 3
    .parameter "view"
    .parameter "request"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 359
    .local v0, holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p2, p1}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 362
    const/4 v1, 0x0

    .line 383
    :goto_0
    return v1

    .line 365
    :cond_0
    iget-object v1, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v1, :cond_1

    .line 366
    invoke-virtual {p2, p1}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 367
    iget-boolean v1, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 371
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;)V

    .line 373
    iget-object v1, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    iget-object v1, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    iget-object v2, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 383
    iget-boolean v1, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .parameter "view"
    .parameter "request"

    .prologue
    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)Z

    move-result v0

    .line 327
    .local v0, loaded:Z
    if-eqz v0, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, photoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, photoIdsAsStrings:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 535
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 536
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 546
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 547
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    .line 549
    .local v2, request:Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
    iget-object v3, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 550
    .local v0, holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v3, :cond_0

    .line 551
    :cond_1
    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    #getter for: Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_2
    #getter for: Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    #getter for: Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    .end local v0           #holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    .end local v2           #request:Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
    :cond_3
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 486
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 487
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 489
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    .line 490
    .local v1, key:Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
    invoke-direct {p0, v3, v1}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)Z

    move-result v2

    .line 491
    .local v2, loaded:Z
    if-eqz v2, :cond_0

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 496
    .end local v1           #key:Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;
    .end local v2           #loaded:Z
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->softenCache()V

    .line 498
    iget-object v4, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 499
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 501
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 443
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 444
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 445
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 508
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 509
    .local v0, holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 511
    .end local v0           #holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 418
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 419
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/htccontacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;

    .line 477
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;->start()V

    .line 479
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 456
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 457
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 459
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->processLoadedImages()V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;JZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 2
    .parameter "view"
    .parameter "photoId"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "defaultProvider"

    .prologue
    .line 301
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p6, p1, p4, p5}, Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;ZZ)V

    .line 304
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->createFromId(JZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1
    .parameter "view"
    .parameter "photoUri"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "defaultProvider"

    .prologue
    .line 315
    if-nez p2, :cond_0

    .line 317
    invoke-virtual {p5, p1, p3, p4}, Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;ZZ)V

    .line 318
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/htccontacts/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 425
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 294
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 295
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 348
    .local v0, holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 350
    .end local v0           #holder:Lcom/android/htccontacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 431
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 434
    :cond_0
    return-void
.end method
