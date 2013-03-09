.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.super Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;,
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
    }
.end annotation


# static fields
.field protected static final ADDITIONAL_TEXTURE_BUFFER:I = 0x1

.field public static final BUNDLE_CACHE_SET:Ljava/lang/String; = "CACHE_SET"

.field public static final BUNDLE_GRID_FILE_CACHE_SIZE:Ljava/lang/String; = "GRID_FILE_CACHE_SIZE"

.field public static final BUNDLE_GRID_MEM_CACHE_SIZE:Ljava/lang/String; = "GRID_MEM_CACHE_SIZE"

.field public static final BUNDLE_GRID_WIDTH_HEIGHT:Ljava/lang/String; = "GRID_WIDTH_HEIGHT"

.field public static final BUNDLE_IS_MULTIPLE_FOLDER_IMAGES:Ljava/lang/String; = "MULTIPLE_FOLDER_IMAGES"

.field public static final BUNDLE_SUB_INDEX:Ljava/lang/String; = "SUB_INDEX"

.field public static final BUNDLE_TEXTURE_MAX_COUNT:Ljava/lang/String; = "TEXTURE_MAX_COUNT"

.field protected static final CANCEL_TASK:I = -0x1

.field protected static final DEBUG:Z = false

.field protected static final DEFAULT_MEM_CACHE_SIZE:I = 0xc8

.field protected static final FAIL_TEXTURE_ID:Ljava/lang/String; = "TextureForFail"

.field public static final FLAG_CHECK_IMAGE_UPDATE:I = 0x1

.field public static final FLAG_DEFAULT:I = 0x0

.field protected static final ITEMS_PER_PAGE:I = 0x18

.field protected static final ITERATOR_STEP_MILLIS:I = 0x2

#the value of this static final field might be set in the static constructor
.field protected static final MAX_TEXTURES_LIMIT_COUNT:I = 0x0

.field protected static final MEDIA_DECODE_THREAD_BUFFER_RANGE:I = 0x6


# instance fields
.field protected final LOCK:Ljava/lang/Object;

.field private final LOCK_PAUSE:Ljava/lang/Object;

.field protected TAG:Ljava/lang/String;

.field protected mBeginIndex:I

.field protected mBottomIndex:I

.field protected mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field protected mCachePuller:Lcom/htc/sunny2/common/CachePuller;

.field protected mCacheSet:I

.field protected mColumnCount:I

.field protected mContext:Landroid/content/Context;

.field protected mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

.field protected mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

.field protected mDirection:I

.field protected mEndIndex:I

.field protected mFailTexture:Lcom/htc/sunny2/Texture;

.field protected mFailTextureUsedCount:I

.field private mFileCacheSize:I

.field protected mGridWidthHeight:I

.field protected mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

.field protected mIsCacheEnabled:Z

.field protected mIsInitial:Z

.field protected mIsMediaListExist:Z

.field protected mIsMutipleFolderImages:Z

.field private mIsPaused:Z

.field protected mItemCounts:I

.field protected mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

.field protected mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

.field protected mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field protected mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/sunny2/common/MediaDecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMemCacheSize:I

.field protected mOffLineBottom:I

.field protected mOffLineTop:I

.field protected mOldLoadingStatus:I

.field protected mStop:Z

.field protected mSunnyEnvironment:I

.field protected mTask:Lcom/htc/sunny2/common/IterationTask;

.field private mTaskWaitingTime:J

.field protected mTextureBufferRange:I

.field protected mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

.field protected mTextureMap:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

.field protected mTextureMaxCount:I

.field protected mTextureMaxCount_backup:I

.field protected mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

.field protected mTexturesCount:I

.field protected mTopIndex:I

.field protected mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

.field protected previousUpDirection:Z

.field private tempItem:Lcom/htc/sunny2/common/CacheItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    sput v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    return-void

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    const-class v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    const/16 v0, 0xb2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    new-instance v0, Lcom/htc/sunny2/common/CachePuller;

    invoke-direct {v0}, Lcom/htc/sunny2/common/CachePuller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    return-void
.end method

.method private isTextureNullOrDirty(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isProcessed(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(ILcom/htc/sunny2/IMediaList;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Not initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->unbind(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    if-lez v0, :cond_2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    :cond_2
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "MediaList has no media"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "bind() NG - not null texture pool or map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    :cond_7
    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    new-instance v0, Lcom/htc/sunny2/common/TextureMap;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ItemsAttributes3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mTextureForDirtyUpdate != 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bind] Buffer range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_f

    const/16 v0, 0x17

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    :goto_2
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v0, :cond_a

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->clear()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getMemCacheSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->newMemoryCacheSet(II)Z

    :cond_b
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_c

    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->runMediaDecoder()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    :cond_d
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind-, scroll speed 0, item count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    goto :goto_2
.end method

.method public checkImageUpdate(II)V
    .locals 9

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate + mediaListIdx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", item index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate() NG - null texture map or null media list or null decodeItem"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v6, p2, :cond_3

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate - notified item not decode and current decode item not notified item"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6, p2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v6}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate() NG = null media item, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preparator item count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", media list count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v6, p2}, Lcom/htc/sunny2/common/TextureMap;->getIdentifier(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate - the same id, needn\'t update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate - newIdentifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldIdentifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    const-string v6, "TextureForFail"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v7, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v7

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate - still in progress skip, index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v6, p2, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureId(II)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkImageUpdate - setTextureDirty "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", textureId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v7, "checkImageUpdate -"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deInit()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "ThumbnailPreparator_deInit +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "bInitial is false, ThumbnailPreparator_deInit -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "Release mUpdateListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailPreparator_deInit - Textures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected decodeFromCacheOrOriginalFile(J)Z
    .locals 14

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    if-nez v12, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MediaItem is null, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preparator list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", media list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sunny2/IMediaData;

    if-nez v12, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MediaItem is null, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeFromCacheOrOriginalFile] MeidaDataList is null, subIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/htc/sunny2/common/CacheItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {v12}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    iput v2, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v2, v0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    new-instance v13, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-direct {v13}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;-><init>()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_3

    if-eqz v13, :cond_3

    iput-object v13, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected decodeOriginalFile(J)Z
    .locals 22

    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;->$SwitchMap$com$htc$sunny2$widget$gridview$GridViewPreparatorImpl$DecodeState:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/sunny2/IMediaData;

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] MediaItem is null, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] List is null, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    if-nez v2, :cond_5

    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    new-instance v21, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v21 .. v21}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v2

    or-int/lit8 v17, v2, 0x30

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_4

    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    :cond_4
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->ITERATE:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;->updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    :cond_7
    :goto_3
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[decodeOriginalFile] IteratorTask is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v14, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->tempItem:Lcom/htc/sunny2/common/CacheItem;

    iget v3, v3, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v20

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] ITERATE: MediaItem is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaList count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v15

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/sunny2/IMediaData;

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] ITERATE: MediaItem is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaList count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[decodeOriginalFile] ITERATE: MediaDataList is null, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subIdx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", identifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaList count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_c
    new-instance v6, Lcom/htc/sunny2/common/CacheItem;

    sget-object v7, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v10

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v2

    long-to-int v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v13, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v6 .. v15}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v16, 0x11

    :goto_4
    new-instance v21, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct/range {v21 .. v21}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v2, :cond_d

    if-eqz v21, :cond_d

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    :cond_d
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 v16, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "[decodeOriginalFile] Iterator error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v8, 0x7d0

    add-long/2addr v6, v8

    cmp-long v2, v2, v6

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Task waiting time over time limit, request resume thread"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto/16 :goto_3

    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected findATextureToReuse(I)Lcom/htc/sunny2/Texture;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_2
    if-ne v1, v6, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    if-eq v1, v6, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_3
    if-ne v1, v6, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/common/TextureMap;->findAValidIndexNotInRange(III)I

    move-result v1

    if-eq v1, v6, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    invoke-interface {v2, v7, v1, v8}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V
    .locals 12

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v11, -0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v8, :cond_2

    :cond_0
    iput-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_0
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v8, :cond_5

    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_1

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v1, v2, v8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    sub-int v0, v8, v1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int/2addr v8, v1

    add-int/lit8 v1, v8, -0x1

    move v3, v0

    :goto_2
    if-gt v3, v2, :cond_5

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_4

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    rem-int v8, v1, v8

    if-nez v8, :cond_8

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-ne v0, v8, :cond_7

    :cond_5
    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v8, :cond_6

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v8, :cond_b

    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v8, :cond_b

    :cond_6
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_3
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v8, :cond_b

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v8, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Second Layer IMediaData is null, item index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v10}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v0, -0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    sub-int v8, v2, v8

    add-int/lit8 v0, v8, 0x1

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    add-int/lit8 v3, v0, -0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v9, :cond_a

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture2(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange2(I)Z

    move-result v8

    if-nez v8, :cond_a

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput v9, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-gtz v8, :cond_c

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    if-nez v8, :cond_f

    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    if-eqz v8, :cond_f

    :cond_c
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :goto_4
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gt v3, v8, :cond_f

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v8, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v5

    if-nez v5, :cond_d

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Third Layer IMediaData is null, item index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v10}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    :cond_d
    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v10, :cond_e

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture3(I)Lcom/htc/sunny2/Texture;

    move-result-object v8

    if-nez v8, :cond_e

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange3(I)Z

    move-result v8

    if-nez v8, :cond_e

    iput v3, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput v10, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v7, v8, -0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v6, v8, 0x1

    const/4 v4, 0x0

    :cond_10
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v7, v8, :cond_11

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v7, v8, :cond_12

    :cond_11
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v6, v8, :cond_17

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v6, v8, :cond_17

    :cond_12
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v7, v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v7, v8, :cond_14

    invoke-direct {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_13

    iput v7, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v7, v7, -0x1

    :cond_14
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v6, v8, :cond_16

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v6, v8, :cond_16

    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTextureNullOrDirty(I)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isOffLineDecodeAndNotInOffLineVisibleRange(I)Z

    move-result v8

    if-nez v8, :cond_15

    iput v6, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1

    :cond_15
    add-int/lit8 v6, v6, 0x1

    :cond_16
    add-int/lit8 v4, v4, 0x1

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v4, v8, :cond_10

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loop count is bigger than mediaList count, break while, item count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v8, v9, :cond_18

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "bottom index is smaller than top index"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iput v11, p1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    goto/16 :goto_1
.end method

.method public freeOutOfRange(III)V
    .locals 10

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMinValidIndex()I

    move-result v4

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7}, Lcom/htc/sunny2/common/TextureMap;->getMaxValidIndex()I

    move-result v3

    if-gez v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    if-lt v3, v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    :cond_1
    move v1, v4

    :goto_0
    if-gt v1, v3, :cond_5

    if-gt p2, v1, :cond_3

    if-gt v1, p3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v1, v9}, Lcom/htc/sunny2/Preparator$UpdateListener;->onExpired(IILandroid/os/Bundle;)V

    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v7, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v7, :cond_7

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    :goto_2
    if-ge v1, v5, :cond_7

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v6, v7, :cond_6

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeInvisibleRangeTextures - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v2, "SUB_INDEX"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v1, v2, :cond_5

    :goto_1
    return-object v1

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture2(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->queryTexture3(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "InValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mContext:Landroid/content/Context;

    const-string v1, "TEXTURE_MAX_COUNT"

    sget v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->MAX_TEXTURES_LIMIT_COUNT:I

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "ThumbnailPreparator_init +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mSunnyEnvironment:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Environment handle is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "TexturePreparationMaxCount is 0"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    monitor-exit v2

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    const-string v1, "CACHE_SET"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    const-string v1, "MULTIPLE_FOLDER_IMAGES"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[init] Buffer range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GRID_WIDTH_HEIGHT"

    const/16 v3, 0xb2

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    const-string v1, "GRID_MEM_CACHE_SIZE"

    const/16 v3, 0xc8

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMemCacheSize:I

    const-string v1, "GRID_FILE_CACHE_SIZE"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFileCacheSize:I

    new-instance v1, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-direct {v1}, Lcom/htc/sunny2/common/MediaDecoderManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mUpdateMediaListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$UpdateMediaListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    new-instance v1, Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/common/IterationTaskThread;->setPriority(I)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "ThumbnailPreparator_init -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange2(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOffLineDecodeAndNotInOffLineVisibleRange3(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isOffLineDecode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTimeExpired(J)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterate(J)V
    .locals 0

    return-void
.end method

.method public loadRange(IIIJ)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFromCacheForVisibleRangeItemsRightNow + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "null media list."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "no cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "no texture map."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-gez v11, :cond_4

    const/4 v11, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v13, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v13, v2, -0x1

    :cond_5
    move v9, v11

    :goto_1
    if-gt v9, v13, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_7

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CachePuller;->free()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "loadFromCacheForVisibleRangeItemsRightNow -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, v9}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v16

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFromCacheForVisibleRangeItemsRightNow: mediaData is null, content identifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preparator list count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mediaList count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    invoke-interface/range {v16 .. v16}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface/range {v16 .. v16}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v16 .. v16}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v8, v0

    const/16 v10, 0x11

    invoke-virtual/range {v2 .. v10}, Lcom/htc/sunny2/common/CachePuller;->setup(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;ILjava/lang/String;JIII)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCachePuller.setup NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/CachePuller;->iterate(J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/CachePuller;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_b

    :cond_a
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FindATextureToReuse NG - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v17

    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface/range {v16 .. v16}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v2, v9, v0, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v9, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFromCacheForVisibleRangeItemsRightNow NG - oriTextureHandle != 0, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "oriTextureHandle is not failTexture, recycle to pool"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "loadFromCacheForVisibleRangeItemsRightNow NG - mTexturePool is full"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/Texture;->release()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-interface/range {v16 .. v16}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v2, v9, v0, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "oriTextureHandle is failTexture"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v2, v9}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "textureHandle is the same as store in textureMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public notifyDataItemChanged(II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged+, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    :cond_1
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v10, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/htc/sunny2/Texture;->release()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - TextureMap is  null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v14

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - TextureMap is  null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v14

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - TextureMap is  null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v14

    :cond_a
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v14, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mTexturePool is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-nez v1, :cond_e

    monitor-exit v15

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v1, v14}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mTexturePool is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->release()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v14, v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v11

    if-nez v11, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: mediaData is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    goto/16 :goto_0

    :cond_f
    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/sunny2/IMediaData;

    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: mediaData is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataItemChanged NG: MediaList is null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preparator list count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mediaList count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v15

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    move-object/from16 v16, v0

    new-instance v1, Lcom/htc/sunny2/common/CacheItem;

    sget-object v2, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v5

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    :goto_2
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged-"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "notifyDataItemChanged NG - mMediaList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public notifyDataItemChanged(III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->checkImageUpdate(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    goto :goto_0
.end method

.method protected notifyLoadingStatus(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    :cond_0
    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread GridView preparation start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "RenderThread GridView preparation end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "onProcessPreparationIRT_Force stop"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "onProcessPreparationIRT_Not initialize"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isTimeExpired(J)Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mStop:Z

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Force stop"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "DecodeItem is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v1, v6, :cond_a

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v1, v4, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v1, v4, :cond_a

    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DecodeItem is expired "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelTask(Lcom/htc/sunny2/common/IterationTask;)V

    :cond_7
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    :cond_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v1, v4, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "onProcessPreparationIRT NG - mTexturePool is full"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    :cond_a
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-ne v1, v6, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processMediaThumbnail(J)Z

    move-result v1

    if-eqz v1, :cond_b

    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findAnItemToDecode(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    if-eq v1, v6, :cond_10

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setProcessed(IZ)V

    :cond_c
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeFromCacheOrOriginalFile(J)Z

    move-result v1

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_d
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    move-result v1

    monitor-exit v3

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture cache is full, textureMap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", texturePool "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", decodeItem index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTexturesCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextureMap2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TextureMap3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v5}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", failTexture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyLoadingStatus(I)V

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->processCurrentTask(IJ)V

    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    move-result v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto/16 :goto_0
.end method

.method public pausePreparator()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected processCurrentTask(IJ)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[processCache] IteratorTask is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->isTaskFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    iput-wide v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v2, v2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v2, Lcom/htc/sunny2/common/ItrCacheDecodeTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ItrCacheDecodeTask;->isFailed()Z

    move-result v1

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v2, v3, :cond_4

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->decodeOriginalFile(J)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    instance-of v2, v2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    check-cast v2, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->isFailed()Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[processCache] Error on encode cache"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v2, v2, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->GetName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processCache] Bitmap is null, cacheItem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ori filePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask()V

    goto :goto_2

    :cond_8
    iget-wide v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Task waiting time over time limit, request resume thread"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    iput-wide v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTaskWaitingTime:J

    goto/16 :goto_0
.end method

.method protected processMediaThumbnail(J)Z
    .locals 13

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/CacheItem;

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/htc/sunny2/common/CacheItem;->isStatus(I)Z

    move-result v10

    if-ne v9, v10, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/htc/sunny2/common/CacheItem;->getPosition()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->notifyDataItemChanged(II)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "InValid task, skip."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-lt v9, v10, :cond_4

    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v9, v10, :cond_8

    :cond_4
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v9, v10}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/IMediaData;

    if-nez v4, :cond_7

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - MedaiDataList is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_7
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v8, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v2, 0x11

    :goto_1
    new-instance v7, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v7}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_8

    if-eqz v7, :cond_8

    iput-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    :cond_8
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v6

    if-nez v6, :cond_9

    iget v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->findATextureToReuse(I)Lcom/htc/sunny2/Texture;

    move-result-object v6

    :cond_9
    if-eqz v6, :cond_22

    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v10, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v6, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v9, :cond_12

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_11

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->getTextureId(I)I

    move-result v9

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eq v9, v10, :cond_f

    :cond_a
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oldTexture not fail texture, texture dirty, recycle oldTexture, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setTextureToCurrentTask(Landroid/graphics/Bitmap;)V

    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsCacheEnabled:Z

    if-eqz v9, :cond_1f

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v9, v10}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    if-nez v4, :cond_1a

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_d
    iget-object v0, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_e
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oldTexture not fail texture, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_11
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    :cond_12
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_15

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "oldTexture not fail texture 2"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_13
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 2 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_15
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    :cond_16
    iget-boolean v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v5

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v9, :cond_19

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "oldTexture not fail texture 3"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v5}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_17
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG 3 - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_19
    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto/16 :goto_2

    :cond_1a
    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v8

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->hasSubList()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/IMediaData;

    if-nez v4, :cond_1c

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - mediaItem is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1b
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processMediaThumbnail NG - MediaDataList is null, index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subIdx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", identifier "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v11, v11, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preparator list count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMediaList count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v11}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1c
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    sget-object v10, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/CacheItem;->updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v10, v9, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iput-boolean v8, v9, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->isItemCacheable(Lcom/htc/sunny2/IMediaData;)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->hasFileCache()Z

    move-result v9

    if-eqz v9, :cond_1e

    const/16 v2, 0x11

    :goto_3
    new-instance v7, Lcom/htc/sunny2/common/ItrCacheEncodeTask;

    invoke-direct {v7}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;-><init>()V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    invoke-virtual {v7, v2}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setCacheSourceType(I)V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v7, v9}, Lcom/htc/sunny2/common/ItrCacheEncodeTask;->setIteratorCacheManager(Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;)V

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v9, :cond_1d

    if-eqz v7, :cond_1d

    iput-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    :cond_1d
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v2, 0x1

    goto :goto_3

    :cond_1f
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_20
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - get null bitmap, recycle texture"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v9, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - mTexturePool is full"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_21
    iget-object v9, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    const/4 v10, 0x0

    iget v11, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    goto :goto_4

    :cond_22
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v10, "processMediaThumbnail NG - No reusable texture"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_23

    iget-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    :cond_23
    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected queryTexture(I)Lcom/htc/sunny2/Texture;
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Preparator not initialize or no MediaList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected queryTexture2(I)Lcom/htc/sunny2/Texture;
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Preparator not initialize or no MediaList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method protected queryTexture3(I)Lcom/htc/sunny2/Texture;
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Preparator not initialize or no MediaList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method public refresh(ILcom/htc/sunny2/IMediaList;I)V
    .locals 11

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "refresh+"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    if-nez v8, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refresh() - null mediaList "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v8, :cond_4

    if-eqz p2, :cond_4

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "refresh() - call bind()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->bind(ILcom/htc/sunny2/IMediaList;I)V

    :goto_2
    return-void

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "refresh() - new media list count is 0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "decodeItem is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    sget-object v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v8}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->getMemCacheSize()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->newMemoryCacheSet(II)Z

    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "Clear video tasks."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    invoke-interface {p2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v8, v9, :cond_a

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    if-gez v8, :cond_a

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :cond_a
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v8, v9, :cond_b

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    if-gez v8, :cond_b

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    :cond_b
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v8, v9, :cond_c

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v8, :cond_c

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :cond_c
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-lt v8, v9, :cond_d

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gez v8, :cond_d

    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    new-instance v8, Lcom/htc/sunny2/common/TextureMap;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v8, v9}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->size()I

    move-result v4

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :goto_4
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-gt v0, v8, :cond_13

    invoke-interface {p2, v0}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    if-nez v2, :cond_12

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "refresh NG - null media data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v8}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    :cond_10
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v8, v9, :cond_11

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v9, v9, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "refresh NG - mTexturePool is full"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->release()V

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_11
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_3

    :cond_12
    invoke-interface {v2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/common/TextureMap;->remove(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v8, v0, v7, v1}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v6

    :goto_6
    if-ge v0, v6, :cond_16

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v7, v8, :cond_15

    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->release()V

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_14
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v7, v8, :cond_14

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_7

    :cond_16
    const/4 v3, 0x0

    :cond_17
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v8, :cond_1b

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    new-instance v8, Lcom/htc/sunny2/common/TextureMap;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v8, v9}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v6

    :goto_8
    if-ge v0, v6, :cond_1a

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v7

    if-eqz v7, :cond_19

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v7, v8, :cond_19

    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->release()V

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_18
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v7, v8, :cond_18

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_9

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v8, :cond_1f

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    new-instance v8, Lcom/htc/sunny2/common/TextureMap;

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-direct {v8, v9}, Lcom/htc/sunny2/common/TextureMap;-><init>(I)V

    iput-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v6

    :goto_a
    if-ge v0, v6, :cond_1e

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v7

    if-eqz v7, :cond_1d

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v7, v8, :cond_1d

    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->release()V

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_1c
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v7, v8, :cond_1c

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_b

    :cond_1e
    const/4 v3, 0x0

    :cond_1f
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount_backup:I

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v8, v9, :cond_20

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    :cond_20
    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v8, :cond_22

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    div-int/lit8 v8, v8, 0x3

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    :goto_c
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[refresh] Buffer range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ItemsAttributes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMutipleFolderImages:Z

    if-eqz v8, :cond_21

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ItemsAttributes2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ItemsAttributes3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->reset(Ljava/lang/String;I)V

    :cond_21
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v9, "refresh-"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_22
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    goto :goto_c
.end method

.method public resetDecodeDirection()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setDecodeDirection(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->previousUpDirection:Z

    return-void
.end method

.method public resumePreparator()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->LOCK_PAUSE:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsPaused:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColumnNumber(I)V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mColumnCount:I

    :cond_0
    return-void
.end method

.method public setDecodeDirection(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDirection:I

    return-void
.end method

.method protected setFailTextureToCurrentTask()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    return-void
.end method

.method protected setFailTextureToCurrentTask(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - texture is dirty, mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] texture is dirty, current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_5
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "setFailTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_9
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v0, v2, v1, v4}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_b
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    const-string v3, "TextureForFail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v1, "[setFailTextureToCurrentTask] current texture is FailTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOldLoadingStatus:I

    invoke-interface {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;->onLoadingStatusChange(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setTextureToCurrentTask(Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-nez p1, :cond_4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "bmp is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v10, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v5, v9, v6, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onFailed(IILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v4, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v0, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Texture;->setWidth(I)V

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Texture;->setHeight(I)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Texture;->setIdentifier(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v5

    invoke-static {v5}, Lcom/htc/sunny2/Sunny2;->Texture_Realize(I)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-interface {v5, v9, v6, v10}, Lcom/htc/sunny2/Preparator$UpdateListener;->onReady(IILandroid/os/Bundle;)V

    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iput-object v10, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->isTextureDirty(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v1, v5, :cond_8

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v5, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    :cond_8
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6, v9}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setTextureDirty(IZ)V

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "setTexture NG 1 - oriTextureHandle != 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v1, v5, :cond_b

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_a
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "textureHandle is the same as store in textureMap"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    if-nez v1, :cond_d

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "setTexture NG 2 - oriTextureHandle != 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v1, v5, :cond_f

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_e
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "textureHandle is the same as store in textureMap"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    if-nez v1, :cond_11

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "setTexture NG 3 - oriTextureHandle != 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eq v1, v5, :cond_13

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/common/TextureMap;->remove(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "setTextureToCurrentTask NG - mTexturePool is full"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_12
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v8, v8, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/sunny2/common/TextureMap;->put(ILcom/htc/sunny2/Texture;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "textureHandle is the same as store in textureMap"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_14
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v6, "Add decodeItem to mTextureMap is Error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v5, v5, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v5}, Lcom/htc/sunny2/Texture;->release()V

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    goto/16 :goto_2
.end method

.method public setVisibleRange(III)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsInitial:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "Not initialize"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt p3, p2, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Visible range setting error. beginIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    if-gez v1, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "visible range is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "item count is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    :cond_6
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex bigger than content list count, old index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    :cond_7
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMaxCount:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    if-le v2, v3, :cond_8

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    :cond_8
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int v0, v2, v1

    if-ltz v0, :cond_f

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-gez v2, :cond_e

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :cond_9
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_a

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    :cond_a
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->setVisibleRange(II)V

    :cond_b
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBeginIndex:I

    add-int/lit8 v2, v2, -0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    if-ge v2, v3, :cond_c

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    :cond_c
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mEndIndex:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    if-le v2, v3, :cond_d

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    :cond_d
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineTop:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mOffLineBottom:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/common/MediaDecoderManager;->setVisibleRange(II)V

    goto/16 :goto_0

    :cond_e
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_9

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemCounts:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureBufferRange:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    goto :goto_1

    :cond_f
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mBottomIndex:I

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTopIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v3, "top = bottom = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected setupCurrentTaskToMediaDecodeThread(Lcom/htc/sunny2/IMediaData;)V
    .locals 14

    const/4 v11, 0x0

    const/16 v13, 0x1001

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/16 v13, 0x1002

    :cond_0
    packed-switch v13, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v12

    iput v12, v11, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput v1, v11, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    const/4 v10, 0x0

    packed-switch v12, :pswitch_data_1

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v10, 0x1

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetWidth()I

    move-result v1

    iput v1, v11, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getTargetHeight()I

    move-result v1

    iput v1, v11, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-nez v10, :cond_7

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v1, v11}, Lcom/htc/sunny2/common/MediaDecoderManager;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    packed-switch v1, :pswitch_data_2

    :cond_3
    :goto_3
    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setFailTextureToCurrentTask(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    const/4 v11, 0x0

    return-void

    :pswitch_1
    new-instance v0, Lcom/htc/sunny2/common/ImageDecodeItem;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/common/ImageDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->getScaleType()I

    move-result v1

    or-int/lit8 v8, v1, 0x30

    invoke-virtual {v0, v8}, Lcom/htc/sunny2/common/ImageDecodeItem;->setDecodeFlags(I)V

    move-object v11, v0

    goto :goto_0

    :pswitch_2
    new-instance v11, Lcom/htc/sunny2/common/ImageResourceDecodeItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheSet:I

    invoke-direct {v11, v1, v2, p1}, Lcom/htc/sunny2/common/ImageResourceDecodeItem;-><init>(IILcom/htc/sunny2/IMediaData;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData ParcelFileDescriptor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_1

    :pswitch_4
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData Uri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_5
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v2, "setupCurrentTaskToMediaDecodeThread: MediaData InputStream is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    :pswitch_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v2, v11, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    goto/16 :goto_3

    :pswitch_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v2, v11, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    iget v2, v11, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->setOffLineDecode(IZ)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public unbind(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind+"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "decodeItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/MediaDecoderManager;->remvoeAllTask()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaDecoderManager:Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/common/MediaDecoderManager;->setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCachePuller:Lcom/htc/sunny2/common/CachePuller;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/CachePuller;->free()V

    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;->SETUP:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeState:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeState;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridviewCachePreparator:Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->freeInvisibleRange()V

    :cond_2
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mCacheItem:Lcom/htc/sunny2/common/CacheItem;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_9

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_8

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_7

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->put(Lcom/htc/sunny2/Texture;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind NG - mTexturePool is full"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->reset()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_2

    :cond_8
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap:Lcom/htc/sunny2/common/TextureMap;

    :cond_9
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_d

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_c

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_b

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_a

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_4

    :cond_c
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap2:Lcom/htc/sunny2/common/TextureMap;

    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    if-eqz v3, :cond_11

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3}, Lcom/htc/sunny2/common/TextureMap;->getContentListItemsCount()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_10

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/TextureMap;->get(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_f

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-ne v2, v3, :cond_e

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    goto :goto_6

    :cond_10
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureMap3:Lcom/htc/sunny2/common/TextureMap;

    :cond_11
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    if-eqz v3, :cond_14

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->textureCounts:I
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->access$100(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;)I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_13

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;->get()Lcom/htc/sunny2/Texture;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eq v2, v3, :cond_12

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->release()V

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturesCount:I

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTexturePool:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$TexturePool;

    :cond_14
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mTextureForDirtyUpdate:Lcom/htc/sunny2/Texture;

    :cond_15
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes2:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mItemsAttributes3:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTexture:Lcom/htc/sunny2/Texture;

    :cond_16
    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mFailTextureUsedCount:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Clear video tasks."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Release mContentList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mIsMediaListExist:Z

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mMediaList:Lcom/htc/sunny2/IMediaList;

    :cond_18
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->TAG:Ljava/lang/String;

    const-string v4, "unbind-"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
