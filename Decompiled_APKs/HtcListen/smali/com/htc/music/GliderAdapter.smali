.class public Lcom/htc/music/GliderAdapter;
.super Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;
.source "GliderAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/GliderAdapter$QueryHandler;,
        Lcom/htc/music/GliderAdapter$AlbumInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[GliderAdapter]"

.field private static final mMdColumns:[Ljava/lang/String;


# instance fields
.field private mAlbumIdArtPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumIdPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlbumIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

.field private mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

.field private mComponentCount:I

.field private mContext:Landroid/content/Context;

.field private mCookie:J

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

.field private mImageHeight:I

.field private mImageWidth:I

.field mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mIsDownloadInfoQueried:Z

.field private mIsEnhancerExist:Z

.field private mIsPluginMode:Z

.field private mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

.field private mMemCacheSize:I

.field private mMemCacheSizeHalf:I

.field private mSelectedPos:I

.field private mUnknownAlbumId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/GliderAdapter;->mMdColumns:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x100

    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;-><init>()V

    iput v3, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    iput-object v1, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iput-object v1, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    iput-object v1, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iput-object v1, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    iput v3, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    iput v4, p0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    iput v4, p0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    iput v2, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    iput-boolean v2, p0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    iput-object v1, p0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/GliderAdapter;->mCookie:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    iput v2, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/GliderAdapter;->mUnknownAlbumId:I

    new-instance v0, Lcom/htc/music/GliderAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/GliderAdapter$1;-><init>(Lcom/htc/music/GliderAdapter;)V

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iput-object p1, p0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/music/GliderAdapter;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/GliderAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/GliderAdapter;)Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/GliderAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/GliderAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/GliderAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/GliderAdapter;->mCookie:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/GliderAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/GliderAdapter;->mUnknownAlbumId:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/GliderAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/GliderAdapter;->mUnknownAlbumId:I

    return p1
.end method

.method static synthetic access$802(Lcom/htc/music/GliderAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/GliderAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    return v0
.end method

.method private declared-synchronized addBitmapToCache(I)Z
    .locals 14

    const/4 v2, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/htc/music/HtcMusic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    move v9, v8

    :goto_0
    monitor-exit p0

    return v9

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v1, v1

    if-lt p1, v1, :cond_3

    :cond_2
    move v9, v8

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    move-object v10, v0

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v1

    if-ne v3, v1, :cond_7

    :cond_4
    move v7, v3

    :goto_1
    if-nez v7, :cond_5

    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_8

    const/4 v7, 0x1

    :cond_5
    :goto_2
    if-eqz v7, :cond_a

    iget-boolean v1, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/htc/music/HtcMusic;

    iget-object v13, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_6

    :try_start_2
    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v13}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p1, v2, p1, v3}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_3
    move v9, v8

    goto :goto_0

    :cond_7
    move v7, v2

    goto :goto_1

    :cond_8
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v1, v2, :cond_5

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->recycle()V

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v11

    :try_start_4
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/htc/music/GliderAdapter;->mUnknownAlbumId:I

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget-object v3, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p1

    iget v4, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    move v2, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_a
    const/4 v8, 0x1

    goto :goto_3
.end method

.method private createDefaultAlbum()V
    .locals 5

    const/16 v4, 0x200

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v2}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v4, v4}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v1, 0x7f060001

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v15

    const v1, 0x7f060002

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v16

    const v1, 0x7f060003

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v12

    const v1, 0x7f060004

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v10

    const v1, 0x7f060005

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->intToFloatArray([I)[F

    move-result-object v11

    const v1, 0x7f060006

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v1, 0x7f0b0024

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    const v1, 0x7f0b0025

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    const v1, 0x7f0b0026

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    const v1, 0x7f0b0027

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    if-eqz v15, :cond_0

    if-eqz v16, :cond_0

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    if-eqz v7, :cond_0

    array-length v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    new-array v1, v1, [Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    if-ge v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v2}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v2, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v15, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v16, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v12, v8

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v12, v8

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v10, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    aget v2, v11, v8

    iput v2, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iput v13, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    iput v14, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v1, v1, v8

    aget v2, v7, v8

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "[GliderAdapter]"

    const-string v2, "init failed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mImgDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/GliderAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/GliderAdapter;->mImageHeight:I

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/util/AsyncImageDecoder;->setRecycleOnPause(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v1, :cond_3

    new-instance v1, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    invoke-direct {v1, v2}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/GliderAdapter;->createDefaultAlbum()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    new-instance v1, Lcom/htc/music/GliderAdapter$QueryHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/htc/music/GliderAdapter$QueryHandler;-><init>(Lcom/htc/music/GliderAdapter;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-void
.end method

.method private interpolateLinear(FFFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clearAllCache()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deInit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/GliderAdapter;->clearAllCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlbumInfo(I)Lcom/htc/music/GliderAdapter$AlbumInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContainerCount()I
    .locals 1

    iget v0, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mLayouts:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public declared-synchronized getItemBitmap(I)Lcom/htc/sunny2/SBitmap;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/htc/music/HtcMusic;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt p1, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eq v2, v3, :cond_1

    :cond_7
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDefaultAlbumBitmap:Lcom/htc/sunny2/SBitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getItemCount()I
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSelectionChanged(I)V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p1, v2

    iget v2, p0, Lcom/htc/music/GliderAdapter;->mComponentCount:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int v0, p1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :cond_1
    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    iget-object v2, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-virtual {v2, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    invoke-virtual {p0, p1}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    :cond_2
    iput p1, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pauseDecoder()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    :cond_0
    return-void
.end method

.method public declared-synchronized requestAllBitmap(I)V
    .locals 11

    const/4 v10, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_1
    iget v2, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSize:I

    iget-boolean v9, p0, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    if-ne v9, v10, :cond_3

    const/4 v7, 0x1

    :goto_0
    iget-object v9, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v9}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    if-lt p1, v3, :cond_0

    if-gt p1, v7, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    :cond_2
    const/4 v9, -0x1

    if-ne v9, v8, :cond_8

    if-nez v0, :cond_8

    mul-int v9, v4, v8

    add-int v5, p1, v9

    if-ge v5, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v9, v9

    add-int/lit8 v7, v9, -0x1

    goto :goto_0

    :cond_4
    if-ne v5, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-direct {p0, v5}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    add-int/lit8 v6, v6, 0x1

    :cond_6
    :goto_2
    if-ne v10, v8, :cond_7

    add-int/lit8 v4, v4, 0x1

    if-le v2, v6, :cond_0

    :cond_7
    mul-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_8
    if-ne v10, v8, :cond_6

    if-nez v1, :cond_6

    mul-int v9, v4, v8

    add-int v5, p1, v9

    if-le v5, v7, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    if-ne v5, v7, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-direct {p0, v5}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public resumeDecoder()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/GliderAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V
    .locals 17

    monitor-enter p0

    :try_start_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/GliderAdapter;->mIsPluginMode:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const-string v2, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    if-ge v11, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdSet:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, v11

    iget v2, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    if-eqz v15, :cond_1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "[GliderAdapter]"

    const-string v3, "Something wrong in setAlbumInfo"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/GliderAdapter;->mCookie:J

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/GliderAdapter;->mUnknownAlbumId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAsyncQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/GliderAdapter;->mCookie:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/music/GliderAdapter;->mMdColumns:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    if-ltz v2, :cond_4

    if-ltz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v2, v2

    move/from16 v0, p3

    if-lt v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v2, v2, p3

    iget v12, v2, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunny2/SBitmap;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v10}, Lcom/htc/sunny2/SBitmap;->substitute()Lcom/htc/sunny2/SBitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/GliderAdapter;->mAlbumIdMemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setDlAlbumArt(ILjava/lang/String;)V
    .locals 10

    monitor-enter p0

    if-gez p1, :cond_1

    :try_start_0
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: Illegal Arguments"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    if-gtz v7, :cond_3

    :cond_2
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumInfoArray = null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_5

    :cond_4
    const-string v7, "[GliderAdapter]"

    const-string v8, "setDlAlbumArt: mAlbumIdPosMap = null or size <= 0"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumIdPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_c

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    if-ge v3, v7, :cond_c

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    if-ne v7, p1, :cond_6

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    invoke-static {v7, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    aget-object v7, v7, v3

    iput-object p2, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    iget v6, p0, Lcom/htc/music/GliderAdapter;->mSelectedPos:I

    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    if-ge v6, v7, :cond_a

    iget v6, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    :cond_7
    :goto_2
    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int v2, v6, v7

    iget v7, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    add-int v5, v6, v7

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    if-gt v2, v3, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    if-eqz v0, :cond_6

    :cond_9
    const-string v7, "[GliderAdapter]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDlAlbumArt: update image of position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mBmpMemCache:Lcom/htc/music/util/MemoryCache3DBitmapByPosition;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->remove(Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0, v3}, Lcom/htc/music/GliderAdapter;->notifyUpdateItem(I)V

    invoke-direct {p0, v3}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_7

    iget-object v7, p0, Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;

    array-length v7, v7

    iget v8, p0, Lcom/htc/music/GliderAdapter;->mMemCacheSizeHalf:I

    sub-int/2addr v7, v8

    add-int/lit8 v6, v7, -0x1

    goto :goto_2

    :cond_b
    invoke-direct {p0, v3}, Lcom/htc/music/GliderAdapter;->addBitmapToCache(I)Z

    goto/16 :goto_1

    :cond_c
    const-string v7, "[GliderAdapter]"

    const-string v8, "pos illegal"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 22

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/music/GliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/music/GliderAdapter;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v17

    if-eqz v17, :cond_0

    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v10, v15

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    move/from16 v16, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget-object v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    sub-float v20, v11, v16

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    int-to-float v0, v6

    move/from16 v18, v0

    iget v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v20, v0

    iget v0, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/music/GliderAdapter;->interpolateLinear(FFFF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    goto/16 :goto_0
.end method
