.class public Lcom/htc/album/modules/collection/Collection;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/collection/Collection$QueueComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/Collection;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final BUCKET_ID_OTHERS:Ljava/lang/String; = null

.field protected static final CACHE_ROOT:Ljava/lang/String; = null

.field protected static CACHE_SETS:[I = null

.field public static final COLLECTIONS_PROJECTION:[Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/Collection;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FILE_OP_TAG:Ljava/lang/String; = "[Collection][deleteCache]"

.field public static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected mBucketId:Ljava/lang/String;

.field protected mContainsMediaTypes:I

.field protected transient mContext:Landroid/content/Context;

.field protected mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

.field protected mDisplayName:Ljava/lang/String;

.field private mEnableImageListCache:Z

.field protected transient mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

.field protected mFilter:Ljava/lang/String;

.field protected mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field protected mIsVisible:I

.field protected mPhotoCnt:I

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field protected mShowLatest:Z

.field protected mSupportedMediaTypes:I

.field protected mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const-class v0, Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->LOG_TAG:Ljava/lang/String;

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String;

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->COLLECTIONS_PROJECTION:[Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_ROOT:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_SETS:[I

    .line 456
    new-instance v0, Lcom/htc/album/modules/collection/Collection$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/Collection$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 124
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 127
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 130
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 132
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 134
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 136
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 141
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 149
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 158
    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 124
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 127
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 130
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 132
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 134
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 136
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 141
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 149
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 164
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 167
    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 168
    invoke-virtual {p0, p1, p4}, Lcom/htc/album/modules/collection/Collection;->setProperties(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 124
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 127
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 130
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 132
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 134
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 141
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 149
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 470
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->readFromParcel(Landroid/os/Parcel;)V

    .line 471
    return-void
.end method

.method private static getQueryProjection(I)[Ljava/lang/String;
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 381
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 383
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 389
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    .line 387
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 389
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelDeleting()V
    .locals 2

    .prologue
    .line 663
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 666
    .local v0, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->cancelDeleting()V

    .line 668
    .end local v0           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/htc/album/modules/collection/Collection;)I
    .locals 2
    .parameter "collection"

    .prologue
    .line 346
    instance-of v0, p1, Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Lcom/htc/album/modules/collection/Collection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->compareTo(Lcom/htc/album/modules/collection/Collection;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public final doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 3
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 587
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/modules/collection/Collection;->makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 588
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-ne v1, v2, :cond_1

    .line 590
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 594
    :cond_1
    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 595
    return-object v0
.end method

.method public final enableDataCache(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    .line 564
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 568
    :cond_0
    return-void
.end method

.method public equals(Lcom/htc/album/modules/collection/Collection;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 446
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 447
    .local v0, cBucketId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 451
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "forceGet"

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 415
    :cond_1
    :goto_0
    return-object v0

    .line 408
    :cond_2
    const/4 v0, 0x0

    .line 409
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 411
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v4, v4, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v2, v3, v4, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getContainedMediaTypes()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    return v0
.end method

.method public getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 545
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 336
    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    return v0
.end method

.method public getQueyParams()Landroid/content/Intent;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x1

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v0, result:Landroid/content/Intent;
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move v4, v7

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSupportedMediaTypes()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    return v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v2, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :cond_0
    return v0
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 4
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 615
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public onDeleteIBT(Landroid/content/ContentResolver;I)V
    .locals 4
    .parameter "resolver"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 621
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2, p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 622
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->removeFileCache(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 627
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 628
    .local v1, imageUri:Landroid/net/Uri;
    invoke-virtual {p1, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFolderClicked(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJ)Lcom/htc/album/modules/collection/SimpleImage;
    .locals 9
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"

    .prologue
    .line 551
    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/collection/SimpleImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .local v0, image:Lcom/htc/album/modules/collection/SimpleImage;
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-wide/from16 v7, p7

    .line 552
    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJ)V

    .line 553
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .parameter "in"

    .prologue
    const/4 v9, 0x1

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 485
    .local v9, hasCoverImage:Z
    :goto_0
    if-eqz v9, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, coverPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, coverMime:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 490
    .local v3, coverDate:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 491
    .local v5, coverDegree:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 492
    .local v6, coverType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .local v7, coverSize:J
    move-object v0, p0

    .line 494
    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 498
    .end local v1           #coverPath:Ljava/lang/String;
    .end local v2           #coverMime:Ljava/lang/String;
    .end local v3           #coverDate:J
    .end local v5           #coverDegree:I
    .end local v6           #coverType:I
    .end local v7           #coverSize:J
    :cond_0
    return-void

    .line 484
    .end local v9           #hasCoverImage:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    .line 677
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 679
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 680
    return-void
.end method

.method public final declared-synchronized releaseListDataCache()V
    .locals 3

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[releaseListDataCache] mImageListCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :cond_0
    monitor-exit p0

    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadData()V
    .locals 2

    .prologue
    .line 600
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 603
    .local v0, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 604
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z

    .line 606
    .end local v0           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    return-void
.end method

.method protected removeFileCache(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 17
    .parameter "image"

    .prologue
    .line 633
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, filePath:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    .line 635
    .local v3, dateModified:J
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v5

    .line 636
    .local v5, dateTaken:J
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v7

    .line 637
    .local v7, imageSize:J
    const/16 v14, 0x500

    .line 639
    .local v14, factor:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-nez v1, :cond_0

    .line 640
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 642
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->getFactor()I

    move-result v14

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->removeAll(Ljava/lang/String;JJJ)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/modules/collection/Collection;->CACHE_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v9, v2

    move-wide v10, v3

    invoke-static/range {v9 .. v14}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 654
    .local v16, oldPath:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v15, file:Ljava/io/File;
    const-string v1, "[Collection][deleteCache]"

    invoke-static {v15, v1}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    const-string v1, "[Collection][deleteCache]"

    invoke-static {v15, v1}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 659
    :cond_1
    return-void
.end method

.method public setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V
    .locals 9
    .parameter "cover"

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    iget-wide v3, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v6, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    iget-wide v7, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    goto :goto_0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setPhotoCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 341
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 342
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "givenName"

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 179
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const v0, 0x7f0b0048

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 182
    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 248
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "com.htc.HTCAlbum.SNAPBOOTH"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const v0, 0x7f0b004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 187
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 189
    :cond_1
    const-string v0, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const v0, 0x7f0b0051

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 192
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 194
    :cond_2
    const-string v0, "com.htc.HTCAlbum.BURST_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const v0, 0x7f0b0052

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 197
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 199
    :cond_3
    const-string v0, "com.htc.HTCAlbum.MY_INKS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    const v0, 0x7f0b004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 202
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 204
    :cond_4
    const-string v0, "com.htc.HTCAlbum.SCRIBBLES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    const v0, 0x7f0b004f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 207
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 209
    :cond_5
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 212
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 214
    :cond_6
    const-string v0, "com.htc.HTCAlbum.ALL_PHOTOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 217
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 219
    :cond_7
    const-string v0, "com.htc.HTCAlbum.ALL_VIDEOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 221
    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 222
    const/16 v0, 0xf0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 224
    :cond_8
    const-string v0, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 227
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 229
    :cond_9
    const-string v0, "com.htc.HTCAlbum.ALL_3DS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    const v0, 0x7f0b0050

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 232
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 237
    :cond_a
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 239
    const v0, 0x7f0b0044

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 245
    :goto_1
    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    goto/16 :goto_0

    .line 243
    :cond_b
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 533
    return-void
.end method

.method public setSupportedMediaTypes(I)V
    .locals 0
    .parameter "newTypes"

    .prologue
    .line 394
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 395
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public showLatest()Z
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 253
    .local v0, isShowLatest:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 254
    return v0
.end method

.method public toggleVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 325
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v0, :cond_0

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJ)V
    .locals 9
    .parameter "sourceType"
    .parameter "itemPath"
    .parameter "itemTime"
    .parameter "mimetype"
    .parameter "degree"
    .parameter "fileSize"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-wide v3, p3

    move v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    .line 272
    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 294
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 295
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 296
    return-void

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    move-object v1, p2

    move-object v2, p5

    move-wide v3, p3

    move v5, p6

    move v6, p1

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJ)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 524
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 528
    :cond_0
    return-void

    .line 517
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
