.class public final Lcom/android/htcdialer/util/PhotoUtils;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/util/PhotoUtils$1;,
        Lcom/android/htcdialer/util/PhotoUtils$CacheResult;,
        Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;,
        Lcom/android/htcdialer/util/PhotoUtils$Key;,
        Lcom/android/htcdialer/util/PhotoUtils$Numbered;,
        Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;
    }
.end annotation


# static fields
.field private static final CACHE_INCREASE_SIZE:I = 0x32

.field private static final CACHE_SIZE_MAX:I = 0xc8

.field public static final DEBUG:Z = false

.field public static final DEBUG_DEV:I = 0x1

.field public static final DEBUG_LEVEL:I = 0x2

.field public static final DEBUG_NEVER:I = 0x4

.field public static final DEBUG_QA:I = 0x2

.field public static final DEBUG_SHIP:I = 0x3

.field public static final ERROR_DEBUG:Z = true

.field public static final ICON_ACTION_ADD:I = 0x7

.field public static final ICON_ACTION_VIEW:I = 0x6

.field public static final ICON_TYPE_INCOMING:I = 0x3

.field public static final ICON_TYPE_MISSED:I = 0x5

.field public static final ICON_TYPE_OUTGOING:I = 0x4

.field public static final NON_DEFINE:I = -0x1

.field private static final PEOPLE_THUMBNAIL_ID_COLUMN:I = 0x0

.field private static final PEOPLE_THUMBNAIL_THUMBNAIL_COLUMN:I = 0x1

.field public static final PHOTO_TYPE_CONTACT:I = 0x2

.field public static final PHOTO_TYPE_DEFAULT:I = 0x0

.field public static final PHOTO_TYPE_SIM:I = 0x1

.field private static final PeopleThumbnailTable:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PhotoUtility"

.field private static mDefaultInstance:Lcom/android/htcdialer/util/PhotoUtils;

.field private static mInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/util/PhotoUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static mOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private mActionAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mActionViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitmapLock:[I

.field private mCacheResultInstance:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

.field private mContactPhotoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/htcdialer/util/PhotoUtils$Key;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mFreeKeyIndex:I

.field private mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

.field private mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mName:Ljava/lang/String;

.field private mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mPhotoCacheUserCount:I

.field private mRecyclerListener:Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "photo"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/htcdialer/util/PhotoUtils;->PeopleThumbnailTable:[Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mBitmapLock:[I

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeyIndex:I

    .line 275
    iput-object p1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mName:Ljava/lang/String;

    .line 276
    return-void
.end method

.method private addContactPhoto(Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/String;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;
    .locals 6
    .parameter "key"
    .parameter "imagepath"

    .prologue
    const/4 v5, 0x0

    .line 735
    const/4 v2, 0x0

    .line 736
    .local v2, result:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 737
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 738
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 739
    iget-object v3, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_2

    .line 740
    invoke-virtual {p0, p1, v0}, Lcom/android/htcdialer/util/PhotoUtils;->addContactPhoto(Lcom/android/htcdialer/util/PhotoUtils$Key;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 741
    .local v1, cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/htcdialer/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v2

    .line 766
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 767
    const/4 v3, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/htcdialer/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v2

    .line 769
    :cond_1
    return-object v2

    .line 745
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    if-eqz v3, :cond_3

    .line 746
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v5, v3}, Lcom/android/htcdialer/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v2

    goto :goto_0

    .line 748
    :cond_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v5, v3}, Lcom/android/htcdialer/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v2

    goto :goto_0
.end method

.method private cleanArray([Ljava/lang/Object;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 669
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 670
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 676
    :cond_0
    return-void

    .line 673
    :cond_1
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cleanPhotoCache()V
    .locals 10

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    .line 608
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;"
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    .line 610
    if-eqz v1, :cond_3

    .line 611
    iget-object v8, p0, Lcom/android/htcdialer/util/PhotoUtils;->mBitmapLock:[I

    monitor-enter v8

    .line 613
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 615
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 616
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 617
    .local v4, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    if-eqz v4, :cond_0

    .line 618
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;

    .line 619
    .local v6, value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    iget-object v7, v6, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 620
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 621
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 630
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;>;"
    .end local v6           #value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 624
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    .restart local v5       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;>;"
    .restart local v6       #value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    :cond_1
    :try_start_1
    const-string v7, "PhotoUtility"

    const-string v9, "bitmap is null or recycled!!!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;"
    .end local v4           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    .end local v6           #value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 630
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;>;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

    invoke-direct {p0, v7}, Lcom/android/htcdialer/util/PhotoUtils;->cleanArray([Ljava/lang/Object;)V

    .line 634
    invoke-direct {p0}, Lcom/android/htcdialer/util/PhotoUtils;->setNullResourceDrawables()V

    .line 635
    iget-object v7, p0, Lcom/android/htcdialer/util/PhotoUtils;->mName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/htcdialer/util/PhotoUtils;->removeFromInstances(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private dropAll()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 445
    return-void
.end method

.method private static getBitmapOpts()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 960
    sget-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 962
    sget-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 965
    :cond_0
    sget-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;
    .locals 1
    .parameter "isCached"
    .parameter "bitmapDrawable"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    invoke-direct {v0, p1, p2}, Lcom/android/htcdialer/util/PhotoUtils$CacheResult;-><init>(ZLandroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    .line 882
    :goto_0
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    return-object v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    iput-boolean p1, v0, Lcom/android/htcdialer/util/PhotoUtils$CacheResult;->isCached:Z

    .line 879
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    iput-object p2, v0, Lcom/android/htcdialer/util/PhotoUtils$CacheResult;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public static getUtility()Lcom/android/htcdialer/util/PhotoUtils;
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultInstance:Lcom/android/htcdialer/util/PhotoUtils;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/android/htcdialer/util/PhotoUtils;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/android/htcdialer/util/PhotoUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultInstance:Lcom/android/htcdialer/util/PhotoUtils;

    .line 288
    sget-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultInstance:Lcom/android/htcdialer/util/PhotoUtils;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    sget-object v0, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultInstance:Lcom/android/htcdialer/util/PhotoUtils;

    return-object v0
.end method

.method public static getUtility(Ljava/lang/String;)Lcom/android/htcdialer/util/PhotoUtils;
    .locals 3
    .parameter "name"

    .prologue
    .line 303
    const-string v2, "default"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getUtility()Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v1

    .line 316
    :goto_0
    return-object v1

    .line 307
    :cond_0
    sget-object v2, Lcom/android/htcdialer/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/util/PhotoUtils;

    .line 308
    .local v1, utility:Lcom/android/htcdialer/util/PhotoUtils;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/htcdialer/util/PhotoUtils;->mName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 313
    .end local v1           #utility:Lcom/android/htcdialer/util/PhotoUtils;
    :cond_2
    new-instance v1, Lcom/android/htcdialer/util/PhotoUtils;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/util/PhotoUtils;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v1       #utility:Lcom/android/htcdialer/util/PhotoUtils;
    sget-object v2, Lcom/android/htcdialer/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initResourceDrawables(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 396
    if-nez p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 401
    const v0, 0x7f020085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 406
    const v0, 0x208025a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 411
    const v0, 0x20809b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 416
    const v0, 0x20809b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 420
    :cond_5
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 421
    const v0, 0x20809b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 425
    :cond_6
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mActionViewDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 426
    const v0, 0x7f020008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mActionViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    :cond_7
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mActionAddDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 431
    const v0, 0x7f020007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mActionAddDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public static loadContactThumbnail(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "contactId"
    .parameter "cr"

    .prologue
    .line 780
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImageFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"

    .prologue
    .line 801
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final loadThumbnail(J)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "thumbnailId"

    .prologue
    .line 790
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized putIntoCache(Lcom/android/htcdialer/util/PhotoUtils$Key;Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 566
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_0
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeFromInstances(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    const-string p1, "default"

    .line 643
    :cond_0
    const/4 v1, -0x1

    .line 644
    .local v1, match:I
    sget-object v4, Lcom/android/htcdialer/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 645
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 646
    sget-object v4, Lcom/android/htcdialer/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/util/PhotoUtils;

    .line 647
    .local v3, utility:Lcom/android/htcdialer/util/PhotoUtils;
    if-eqz v3, :cond_3

    .line 648
    iget-object v4, v3, Lcom/android/htcdialer/util/PhotoUtils;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 649
    move v1, v0

    .line 655
    .end local v3           #utility:Lcom/android/htcdialer/util/PhotoUtils;
    :cond_1
    const/4 v4, -0x1

    if-eq v4, v1, :cond_2

    .line 656
    sget-object v4, Lcom/android/htcdialer/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 658
    :cond_2
    return-void

    .line 645
    .restart local v3       #utility:Lcom/android/htcdialer/util/PhotoUtils;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private returnKey(Lcom/android/htcdialer/util/PhotoUtils$Key;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 478
    if-nez p1, :cond_0

    .line 493
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

    array-length v1, v2

    .line 484
    .local v1, size:I
    iget v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeyIndex:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_1

    .line 485
    add-int/lit8 v2, v1, 0x32

    new-array v0, v2, [Lcom/android/htcdialer/util/PhotoUtils$Key;

    .line 486
    .local v0, newKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

    .line 488
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

    invoke-direct {p0, v2}, Lcom/android/htcdialer/util/PhotoUtils;->cleanArray([Ljava/lang/Object;)V

    .line 491
    .end local v0           #newKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;
    :cond_1
    iget v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeyIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeyIndex:I

    .line 492
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

    iget v3, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeyIndex:I

    aput-object p1, v2, v3

    goto :goto_0
.end method

.method private setNullResourceDrawables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 662
    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 663
    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 664
    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 665
    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 666
    return-void
.end method

.method private unregisterUpdateReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized acquireContactPhotoCache(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 351
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 352
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 355
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    .line 356
    const/16 v1, 0x32

    new-array v1, v1, [Lcom/android/htcdialer/util/PhotoUtils$Key;

    iput-object v1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mFreeKeys:[Lcom/android/htcdialer/util/PhotoUtils$Key;

    .line 359
    :cond_1
    iget v1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    .line 360
    if-eqz p1, :cond_2

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 362
    .local v0, res:Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/htcdialer/util/PhotoUtils;->initResourceDrawables(Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addContactPhoto(Lcom/android/htcdialer/util/PhotoUtils$Key;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "key"
    .parameter "photo"

    .prologue
    const/4 v2, 0x0

    .line 528
    if-nez p2, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-object v2

    .line 533
    :cond_1
    iget-object v3, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 534
    iget-object v3, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 535
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;

    .line 537
    .local v1, value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    if-eqz v1, :cond_2

    .line 538
    iget v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    .line 556
    :goto_1
    iget-object v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 543
    :cond_2
    new-instance v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;

    .end local v1           #value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    invoke-direct {v1, p0, v2}, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;-><init>(Lcom/android/htcdialer/util/PhotoUtils;Lcom/android/htcdialer/util/PhotoUtils$1;)V

    .line 544
    .restart local v1       #value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    iget v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    .line 547
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_3

    .line 548
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 554
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/htcdialer/util/PhotoUtils;->putIntoCache(Lcom/android/htcdialer/util/PhotoUtils$Key;Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;)V

    goto :goto_1

    .line 550
    :cond_3
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2
.end method

.method public delicateRecyclerListener(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRecyclerListener:Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;-><init>(Lcom/android/htcdialer/util/PhotoUtils;Lcom/android/htcdialer/util/PhotoUtils$1;)V

    iput-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRecyclerListener:Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mRecyclerListener:Lcom/android/htcdialer/util/PhotoUtils$MyRecyclerListener;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 339
    :cond_1
    return-void
.end method

.method public getActionDrawableByType(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "type"

    .prologue
    .line 854
    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mActionViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 857
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mActionAddDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCacheSize()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 731
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getContactPhoto(Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "key"

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 506
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;

    .line 508
    .local v1, value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    if-eqz v1, :cond_0

    .line 509
    iget v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    .line 510
    iget-object v2, v1, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 516
    .end local v0           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    .end local v1           #value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactPhoto(JJ)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;
    .locals 3
    .parameter "bitmapKey"
    .parameter "thumbnailId"

    .prologue
    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, imagePath:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/htcdialer/util/PhotoUtils;->getContactPhoto(JLjava/lang/String;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v1

    return-object v1
.end method

.method public getContactPhoto(JLjava/lang/String;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;
    .locals 4
    .parameter "bitmapKey"
    .parameter "imagePath"

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, cacheResult:Lcom/android/htcdialer/util/PhotoUtils$CacheResult;
    const/4 v1, 0x0

    .line 705
    .local v1, cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/util/PhotoUtils;->getKey(J)Lcom/android/htcdialer/util/PhotoUtils$Key;

    move-result-object v2

    .line 706
    .local v2, key:Lcom/android/htcdialer/util/PhotoUtils$Key;
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/util/PhotoUtils;->getContactPhoto(Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 708
    if-nez v1, :cond_0

    .line 709
    invoke-direct {p0, v2, p3}, Lcom/android/htcdialer/util/PhotoUtils;->addContactPhoto(Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/String;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    .line 710
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 712
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/android/htcdialer/util/PhotoUtils;->addContactPhoto(Lcom/android/htcdialer/util/PhotoUtils$Key;Ljava/lang/String;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v0

    goto :goto_0

    .line 714
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/htcdialer/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htcdialer/util/PhotoUtils$CacheResult;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "type"

    .prologue
    .line 828
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 837
    :goto_0
    return-object v0

    .line 831
    :cond_0
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 832
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 833
    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_2

    .line 834
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 837
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey(J)Lcom/android/htcdialer/util/PhotoUtils$Key;
    .locals 1
    .parameter "id"

    .prologue
    .line 467
    new-instance v0, Lcom/android/htcdialer/util/PhotoUtils$Key;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/htcdialer/util/PhotoUtils$Key;-><init>(Lcom/android/htcdialer/util/PhotoUtils;J)V

    return-object v0
.end method

.method public getPhotoDrawableByType(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 817
    if-nez p1, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 824
    :cond_0
    :goto_0
    return-object v0

    .line 819
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 820
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 821
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method

.method getnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public releaseContactPhoto(Lcom/android/htcdialer/util/PhotoUtils$Key;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 579
    iget-object v4, p0, Lcom/android/htcdialer/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 580
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;>;"
    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;

    .line 582
    .local v3, value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    if-eqz v3, :cond_0

    .line 583
    iget v4, v3, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    .line 584
    iget-object v1, v3, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 586
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget v4, v3, Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;->refCont:I

    if-gtz v4, :cond_0

    .line 587
    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 592
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 599
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #value:Lcom/android/htcdialer/util/PhotoUtils$BitmapValue;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/htcdialer/util/PhotoUtils;->returnKey(Lcom/android/htcdialer/util/PhotoUtils$Key;)V

    .line 600
    return-void
.end method

.method public declared-synchronized releaseontactPhotoCache(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    .line 390
    iget v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    if-gtz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/htcdialer/util/PhotoUtils;->cleanPhotoCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_0
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseontactPhotoCache(Lcom/android/htcdialer/DialerService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    .line 374
    iget v0, p0, Lcom/android/htcdialer/util/PhotoUtils;->mPhotoCacheUserCount:I

    if-gtz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/htcdialer/util/PhotoUtils;->cleanPhotoCache()V

    .line 376
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/android/htcdialer/DialerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/util/PhotoUtils;->unregisterUpdateReceiver(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_0
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setActionDrawableByType(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "iv"
    .parameter "type"

    .prologue
    .line 842
    if-nez p1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/util/PhotoUtils;->getActionDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 846
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 847
    if-eqz v0, :cond_0

    .line 848
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public setPhotoDrawableByType(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "iv"
    .parameter "type"

    .prologue
    .line 805
    if-nez p1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/util/PhotoUtils;->getPhotoDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 809
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    if-eqz v0, :cond_0

    .line 811
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method
