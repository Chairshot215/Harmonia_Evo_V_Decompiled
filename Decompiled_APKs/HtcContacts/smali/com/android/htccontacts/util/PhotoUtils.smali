.class public final Lcom/android/htccontacts/util/PhotoUtils;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/PhotoUtils$1;,
        Lcom/android/htccontacts/util/PhotoUtils$CacheResult;,
        Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;,
        Lcom/android/htccontacts/util/PhotoUtils$Key;,
        Lcom/android/htccontacts/util/PhotoUtils$Numbered;,
        Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;
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

.field private static mDefaultInstance:Lcom/android/htccontacts/util/PhotoUtils;

.field private static mInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/PhotoUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static mOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private mActionAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mActionViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitmapLock:[I

.field private mCacheResultInstance:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

.field private mContactPhotoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/htccontacts/util/PhotoUtils$Key;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mFreeKeyIndex:I

.field private mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

.field private mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mName:Ljava/lang/String;

.field private mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mPhotoCacheUserCount:I

.field private mRecyclerListener:Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "photo"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/htccontacts/util/PhotoUtils;->PeopleThumbnailTable:[Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mBitmapLock:[I

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeyIndex:I

    .line 262
    iput-object p1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mName:Ljava/lang/String;

    .line 263
    return-void
.end method

.method private addContactPhoto(Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/String;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    .locals 6
    .parameter "key"
    .parameter "imagepath"

    .prologue
    const/4 v5, 0x0

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, result:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 750
    invoke-static {}, Lcom/android/htccontacts/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 751
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 752
    iget-object v3, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_2

    .line 753
    invoke-virtual {p0, p1, v0}, Lcom/android/htccontacts/util/PhotoUtils;->addContactPhoto(Lcom/android/htccontacts/util/PhotoUtils$Key;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 754
    .local v1, cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/htccontacts/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v2

    .line 779
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 780
    const/4 v3, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/htccontacts/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v2

    .line 782
    :cond_1
    return-object v2

    .line 758
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    if-eqz v3, :cond_3

    .line 759
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v5, v3}, Lcom/android/htccontacts/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v2

    goto :goto_0

    .line 761
    :cond_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v5, v3}, Lcom/android/htccontacts/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v2

    goto :goto_0
.end method

.method private cleanArray([Ljava/lang/Object;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 682
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 683
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    return-void

    .line 686
    :cond_1
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cleanPhotoCache()V
    .locals 10

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    .line 621
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;"
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    .line 623
    if-eqz v1, :cond_3

    .line 624
    iget-object v8, p0, Lcom/android/htccontacts/util/PhotoUtils;->mBitmapLock:[I

    monitor-enter v8

    .line 626
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 628
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;>;"
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

    .line 629
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 630
    .local v4, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    if-eqz v4, :cond_0

    .line 631
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;

    .line 632
    .local v6, value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    iget-object v7, v6, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 634
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 643
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;>;"
    .end local v6           #value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 637
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    .restart local v5       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;>;"
    .restart local v6       #value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    :cond_1
    :try_start_1
    const-string v7, "PhotoUtility"

    const-string v9, "bitmap is null or recycled!!!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;"
    .end local v4           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    .end local v6           #value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 643
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;>;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

    invoke-direct {p0, v7}, Lcom/android/htccontacts/util/PhotoUtils;->cleanArray([Ljava/lang/Object;)V

    .line 647
    invoke-direct {p0}, Lcom/android/htccontacts/util/PhotoUtils;->setNullResourceDrawables()V

    .line 648
    iget-object v7, p0, Lcom/android/htccontacts/util/PhotoUtils;->mName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/htccontacts/util/PhotoUtils;->removeFromInstances(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method private dropAll()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 458
    return-void
.end method

.method private getActionDrawableByType(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "type"

    .prologue
    .line 898
    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mActionViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 901
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mActionAddDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static getBitmapOpts()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 1008
    sget-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 1009
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1010
    sget-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 1013
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method private getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    .locals 1
    .parameter "isCached"
    .parameter "bitmapDrawable"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    invoke-direct {v0, p1, p2}, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;-><init>(ZLandroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    .line 926
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    return-object v0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    iput-boolean p1, v0, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;->isCached:Z

    .line 923
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mCacheResultInstance:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    iput-object p2, v0, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method private getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "type"

    .prologue
    .line 872
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 881
    :goto_0
    return-object v0

    .line 875
    :cond_0
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 877
    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_2

    .line 878
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 881
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPhotoDrawableByType(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 849
    if-nez p1, :cond_1

    .line 850
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 856
    :cond_0
    :goto_0
    return-object v0

    .line 851
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 852
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 853
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method

.method private getPhotoResIdByType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 840
    if-nez p1, :cond_0

    .line 841
    const v0, 0x2080846

    .line 845
    :goto_0
    return v0

    .line 842
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 843
    const v0, 0x208025a

    goto :goto_0

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRawContactThumbnailId(JLandroid/content/ContentResolver;)J
    .locals 2
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    .line 801
    invoke-static {p0, p1, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadRawContactThumbnailId(JLandroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUtility()Lcom/android/htccontacts/util/PhotoUtils;
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultInstance:Lcom/android/htccontacts/util/PhotoUtils;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/android/htccontacts/util/PhotoUtils;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/util/PhotoUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultInstance:Lcom/android/htccontacts/util/PhotoUtils;

    .line 275
    sget-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultInstance:Lcom/android/htccontacts/util/PhotoUtils;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultInstance:Lcom/android/htccontacts/util/PhotoUtils;

    return-object v0
.end method

.method public static getUtility(Ljava/lang/String;)Lcom/android/htccontacts/util/PhotoUtils;
    .locals 3
    .parameter "name"

    .prologue
    .line 290
    const-string v2, "default"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-static {}, Lcom/android/htccontacts/util/PhotoUtils;->getUtility()Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    .line 294
    :cond_0
    sget-object v2, Lcom/android/htccontacts/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/PhotoUtils;

    .line 295
    .local v1, utility:Lcom/android/htccontacts/util/PhotoUtils;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/htccontacts/util/PhotoUtils;->mName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 300
    .end local v1           #utility:Lcom/android/htccontacts/util/PhotoUtils;
    :cond_2
    new-instance v1, Lcom/android/htccontacts/util/PhotoUtils;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/util/PhotoUtils;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v1       #utility:Lcom/android/htccontacts/util/PhotoUtils;
    sget-object v2, Lcom/android/htccontacts/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initResourceDrawables(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 410
    if-nez p1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 414
    const v0, 0x2080846

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 419
    const v0, 0x208025a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 424
    const v0, 0x2080224

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 429
    const v0, 0x2080226

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 434
    const v0, 0x2080225

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    :cond_6
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mActionViewDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 439
    const v0, 0x20805de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mActionViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 443
    :cond_7
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mActionAddDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 444
    const v0, 0x20805da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mActionAddDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public static loadContactThumbnail(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "contactId"
    .parameter "cr"

    .prologue
    .line 793
    invoke-static {}, Lcom/android/htccontacts/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImageFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"

    .prologue
    .line 822
    invoke-static {}, Lcom/android/htccontacts/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadRawContactThumbnail(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    .line 797
    invoke-static {}, Lcom/android/htccontacts/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadRawContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final loadThumbnail(J)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "thumbnailId"

    .prologue
    .line 811
    invoke-static {}, Lcom/android/htccontacts/util/PhotoUtils;->getBitmapOpts()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized putIntoCache(Lcom/android/htccontacts/util/PhotoUtils$Key;Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 579
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_0
    monitor-exit p0

    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeFromInstances(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 652
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    const-string p1, "default"

    .line 656
    :cond_0
    const/4 v1, -0x1

    .line 657
    .local v1, match:I
    sget-object v4, Lcom/android/htccontacts/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 658
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 659
    sget-object v4, Lcom/android/htccontacts/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/util/PhotoUtils;

    .line 660
    .local v3, utility:Lcom/android/htccontacts/util/PhotoUtils;
    if-eqz v3, :cond_3

    .line 661
    iget-object v4, v3, Lcom/android/htccontacts/util/PhotoUtils;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 662
    move v1, v0

    .line 668
    .end local v3           #utility:Lcom/android/htccontacts/util/PhotoUtils;
    :cond_1
    const/4 v4, -0x1

    if-eq v4, v1, :cond_2

    .line 669
    sget-object v4, Lcom/android/htccontacts/util/PhotoUtils;->mInstances:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 671
    :cond_2
    return-void

    .line 658
    .restart local v3       #utility:Lcom/android/htccontacts/util/PhotoUtils;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private returnKey(Lcom/android/htccontacts/util/PhotoUtils$Key;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 491
    if-nez p1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

    array-length v1, v2

    .line 497
    .local v1, size:I
    iget v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeyIndex:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_1

    .line 498
    add-int/lit8 v2, v1, 0x32

    new-array v0, v2, [Lcom/android/htccontacts/util/PhotoUtils$Key;

    .line 499
    .local v0, newKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

    .line 501
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

    invoke-direct {p0, v2}, Lcom/android/htccontacts/util/PhotoUtils;->cleanArray([Ljava/lang/Object;)V

    .line 504
    .end local v0           #newKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;
    :cond_1
    iget v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeyIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeyIndex:I

    .line 505
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

    iget v3, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeyIndex:I

    aput-object p1, v2, v3

    goto :goto_0
.end method

.method private setNullResourceDrawables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 674
    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mDefaultTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 675
    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mSimTypePhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 676
    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mIncomingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 677
    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mOutgoingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 678
    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mMissedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 679
    return-void
.end method

.method private unregisterUpdateReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized acquireContactPhotoCache(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 364
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 368
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    .line 369
    const/16 v1, 0x32

    new-array v1, v1, [Lcom/android/htccontacts/util/PhotoUtils$Key;

    iput-object v1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mFreeKeys:[Lcom/android/htccontacts/util/PhotoUtils$Key;

    .line 372
    :cond_1
    iget v1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mPhotoCacheUserCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/htccontacts/util/PhotoUtils;->mPhotoCacheUserCount:I

    .line 373
    if-eqz p1, :cond_2

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 375
    .local v0, res:Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/PhotoUtils;->initResourceDrawables(Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addContactPhoto(Lcom/android/htccontacts/util/PhotoUtils$Key;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "key"
    .parameter "photo"

    .prologue
    const/4 v2, 0x0

    .line 541
    if-nez p2, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-object v2

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 548
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;

    .line 550
    .local v1, value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    if-eqz v1, :cond_2

    .line 551
    iget v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    .line 569
    :goto_1
    iget-object v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 556
    :cond_2
    new-instance v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;

    .end local v1           #value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    invoke-direct {v1, p0, v2}, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;-><init>(Lcom/android/htccontacts/util/PhotoUtils;Lcom/android/htccontacts/util/PhotoUtils$1;)V

    .line 557
    .restart local v1       #value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    iget v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    .line 560
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    if-eqz v2, :cond_3

    .line 561
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 567
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/htccontacts/util/PhotoUtils;->putIntoCache(Lcom/android/htccontacts/util/PhotoUtils$Key;Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;)V

    goto :goto_1

    .line 563
    :cond_3
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2
.end method

.method public delicateRecyclerListener(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 319
    if-eqz p1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRecyclerListener:Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;-><init>(Lcom/android/htccontacts/util/PhotoUtils;Lcom/android/htccontacts/util/PhotoUtils$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRecyclerListener:Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mRecyclerListener:Lcom/android/htccontacts/util/PhotoUtils$MyRecyclerListener;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 326
    :cond_1
    return-void
.end method

.method public getCacheSize()I
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 744
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getContactPhoto(Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "key"

    .prologue
    .line 517
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 519
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;

    .line 521
    .local v1, value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    if-eqz v1, :cond_0

    .line 522
    iget v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    .line 523
    iget-object v2, v1, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 529
    .end local v0           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    .end local v1           #value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getContactPhoto(JJ)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    .locals 3
    .parameter "bitmapKey"
    .parameter "thumbnailId"

    .prologue
    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, imagePath:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/htccontacts/util/PhotoUtils;->getContactPhoto(JLjava/lang/String;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v1

    return-object v1
.end method

.method public getContactPhoto(JLjava/lang/String;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    .locals 4
    .parameter "bitmapKey"
    .parameter "imagePath"

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, cacheResult:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    const/4 v1, 0x0

    .line 718
    .local v1, cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/PhotoUtils;->getKey(J)Lcom/android/htccontacts/util/PhotoUtils$Key;

    move-result-object v2

    .line 719
    .local v2, key:Lcom/android/htccontacts/util/PhotoUtils$Key;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/PhotoUtils;->getContactPhoto(Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 721
    if-nez v1, :cond_0

    .line 722
    invoke-direct {p0, v2, p3}, Lcom/android/htccontacts/util/PhotoUtils;->addContactPhoto(Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/String;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v0

    .line 729
    :goto_0
    return-object v0

    .line 723
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 725
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/android/htccontacts/util/PhotoUtils;->addContactPhoto(Lcom/android/htccontacts/util/PhotoUtils$Key;Ljava/lang/String;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v0

    goto :goto_0

    .line 727
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/htccontacts/util/PhotoUtils;->getCacheResult(ZLandroid/graphics/drawable/BitmapDrawable;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey(J)Lcom/android/htccontacts/util/PhotoUtils$Key;
    .locals 1
    .parameter "id"

    .prologue
    .line 480
    new-instance v0, Lcom/android/htccontacts/util/PhotoUtils$Key;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/htccontacts/util/PhotoUtils$Key;-><init>(Lcom/android/htccontacts/util/PhotoUtils;J)V

    return-object v0
.end method

.method getnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public releaseContactPhoto(Lcom/android/htccontacts/util/PhotoUtils$Key;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 592
    iget-object v4, p0, Lcom/android/htccontacts/util/PhotoUtils;->mContactPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 593
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;>;"
    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;

    .line 595
    .local v3, value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    if-eqz v3, :cond_0

    .line 596
    iget v4, v3, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    .line 597
    iget-object v1, v3, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 599
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget v4, v3, Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;->refCont:I

    if-gtz v4, :cond_0

    .line 600
    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 602
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 612
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #value:Lcom/android/htccontacts/util/PhotoUtils$BitmapValue;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/PhotoUtils;->returnKey(Lcom/android/htccontacts/util/PhotoUtils$Key;)V

    .line 613
    return-void
.end method

.method public declared-synchronized releaseontactPhotoCache(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mPhotoCacheUserCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mPhotoCacheUserCount:I

    .line 404
    iget v0, p0, Lcom/android/htccontacts/util/PhotoUtils;->mPhotoCacheUserCount:I

    if-gtz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/android/htccontacts/util/PhotoUtils;->cleanPhotoCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_0
    monitor-exit p0

    return-void

    .line 403
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
    .line 886
    if-nez p1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/htccontacts/util/PhotoUtils;->getActionDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 890
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 891
    if-eqz v0, :cond_0

    .line 892
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public setIconDrawableByType(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "iv"
    .parameter "type"

    .prologue
    .line 860
    if-nez p1, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/htccontacts/util/PhotoUtils;->getIconDrawableByType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 864
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 865
    if-eqz v0, :cond_0

    .line 866
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public setPhotoDrawableByType(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "iv"
    .parameter "type"

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 837
    :goto_0
    return-void

    .line 834
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/htccontacts/util/PhotoUtils;->getPhotoResIdByType(I)I

    move-result v0

    .line 835
    .local v0, resId:I
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto :goto_0
.end method
