.class public Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;
.super Ljava/lang/Object;
.source "IteratorFileCacheManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
    }
.end annotation


# static fields
.field public static final CACHE_COLOR_DEPTH_16BIT:I = 0x10

.field public static final CACHE_COLOR_DEPTH_32BIT:I = 0x20

.field public static final CACHE_COLOR_DEPTH_UNKNOWN:I = 0x0

.field public static final CACHE_FILE_EXT:Ljava/lang/String; = ".jpg"

.field public static final CACHE_ROOT:Ljava/lang/String; = null

.field public static final CACHE_ROOT_PHONE:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CACHE_ROOT_SERVICE:Ljava/lang/String; = null

.field public static final CACHE_SIZE_DEFAULT:I = 0x0

.field public static final CACHE_SIZE_NONE:I = -0x1

.field private static final DB_REMOVAL_MAX:I = 0x5

.field private static ITERATOR_BASE_COST:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static MIN_SPACE_DIV_BLOCK_SIZE:D = 0.0

.field private static final STORAGE_MIN_SPACE:J = 0x100000L

.field private static final TAG_PERF_INSERTDB:Ljava/lang/String; = null

.field private static final TAG_PERF_MAKEPATH:Ljava/lang/String; = null

.field private static final TAG_PERF_PULL:Ljava/lang/String; = null

.field private static final TAG_PERF_PUSH:Ljava/lang/String; = null

.field private static final TAG_PERF_REMOVE:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCacheSize:I

.field private mColorDepthSet:Landroid/util/SparseIntArray;

.field private mContext:Landroid/content/Context;

.field private mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

.field private mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

.field private mDecoderHandler:I

.field private mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field private mExternalStorageFolder:Ljava/lang/String;

.field private mFileCacheSet:Landroid/util/SparseIntArray;

.field private mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPhoneStorageFolder:Ljava/lang/String;

.field private mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

.field protected mScreenLarge:I

.field private mTaskLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "folder/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT_SERVICE:Ljava/lang/String;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT_PHONE:Ljava/lang/String;

    const-wide/high16 v0, -0x4010

    sput-wide v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    const-class v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[pull]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[push]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[remove]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[insertThumbDB]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[makeCacheTaskPath]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_MAKEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    iput v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    iput v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT_PHONE:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {v2}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    :try_start_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IteratorFileCacheManager] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x500

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT_PHONE:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->initializeThumbDB()V

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->start()V

    :try_start_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IteratorFileCacheManager] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x500

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->closeThumnDB()V

    return-void
.end method

.method private addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 9

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    iput v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    iget v5, v3, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mTaskLocker:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v4, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    iget v7, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iput v1, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v7, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    iput v7, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const/16 v7, 0x10

    iput v7, v5, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private closeThumnDB()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeThumnDB: mDBHelperExternal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDBHelperPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;->close()V

    :cond_0
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;->close()V

    :cond_1
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    return-void
.end method

.method private initializeThumbDB()V
    .locals 8

    const/4 v7, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[initializeThumbDB]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DBExternalThumb-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    :cond_1
    invoke-static {v7}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v3, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    const-string v5, "DBPhoneThumb"

    invoke-direct {v3, v4, v5}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    :cond_3
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    if-nez v6, :cond_0

    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] New sd card found. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->onMediaMounted()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    :cond_0
    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v12

    if-nez v12, :cond_1

    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] database closed. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT COUNT(_data) FROM thumbnails WHERE cacheSet="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move/from16 v0, p4

    if-lt v11, v0, :cond_6

    const/4 v2, 0x1

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    if-eqz v2, :cond_8

    sub-int v12, v11, p4

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT _data FROM thumbnails WHERE cacheSet="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ORDER BY date_modified LIMIT ?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x5

    if-ge v3, v12, :cond_7

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_INSERTDB:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DELETE FROM thumbnails WHERE _data=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Exception during check cache table full, Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v12

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_4
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DELETE FROM thumbnails WHERE _data=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    :try_start_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v4, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "cacheSet"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "thumbnails"

    const-string v13, "type"

    invoke-virtual {v5, v12, v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :try_start_5
    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Exception during delete oldest cache, Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v12

    :catch_2
    move-exception v8

    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Delete record before insert, cachePath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v8

    :try_start_6
    sget-object v12, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertThumbDB] Exception during updating new record, Ex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v12

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v12
.end method

.method private isStorageSpaceAvailable()Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    mul-int v8, v4, v5

    int-to-long v2, v8

    sget-wide v8, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    if-lez v5, :cond_1

    const-wide/32 v8, 0x100000

    int-to-long v10, v5

    div-long/2addr v8, v10

    long-to-double v8, v8

    :goto_0
    sput-wide v8, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    :cond_0
    int-to-double v8, v4

    sget-wide v10, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-wide v8, 0x41dfffffffc00000L

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v8, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[externalStorageChecker] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not support path. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperPhone:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "thumbnails"

    const-string v5, "_data=? and cacheSet=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "update access time fail"

    invoke-static {v4, v5, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method


# virtual methods
.method protected doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v0, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setBitmapColorDepth(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    invoke-virtual {v2, v3, v4, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget-object v4, v4, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v1

    goto :goto_0
.end method

.method protected doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 7

    const/4 v6, 0x3

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeBegin(Landroid/graphics/Bitmap;Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->execute(J)I

    move-result v6

    goto :goto_0
.end method

.method public execute(J)I
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v2, :cond_0

    const/4 v14, 0x3

    :goto_0
    return v14

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v18, p1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    iget v2, v2, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    :goto_1
    const/4 v14, 0x2

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-nez v12, :cond_2

    const/4 v14, 0x3

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v14, 0x4

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v18, p1, v2

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    sget-wide v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    cmp-long v2, v18, v2

    if-ltz v2, :cond_5

    :cond_3
    const/4 v2, 0x2

    if-ne v14, v2, :cond_5

    const/4 v14, 0x2

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v12, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v13

    :goto_3
    packed-switch v13, :pswitch_data_0

    const/4 v14, 0x3

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    sget-wide v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->ITERATOR_BASE_COST:J

    invoke-virtual {v2, v12, v3, v4}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeIterate(IJ)I

    move-result v13

    goto :goto_3

    :pswitch_1
    const/4 v14, 0x2

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    move-object/from16 v17, v0

    const/4 v2, 0x2

    if-eq v14, v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDecoderHandler:I

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v2, 0x4

    if-ne v14, v2, :cond_7

    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    :cond_6
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    const/4 v2, 0x4

    if-ne v14, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    new-instance v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;-><init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->sendMessage(ILjava/lang/Object;)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheTask()Lcom/htc/sunny2/frameworks/cache/CacheTask;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mRunningTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    return-object v0
.end method

.method public getFactor()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    return v0
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;
    .locals 8

    iget v4, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT_SERVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_MAKEPATH:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->CACHE_ROOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0
.end method

.method protected onMediaMounted()V
    .locals 5

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;->close()V

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBExternalThumb-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDBHelperExternal:Lcom/htc/sunny2/frameworks/cache/GalleryDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 4

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Pull by empty filename"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    sget v2, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_DECODE:I

    iput v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    iget-boolean v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    invoke-virtual {p0, p1, v2}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PULL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doDecode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto :goto_0
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I
    .locals 6

    const/4 v1, 0x3

    if-nez p1, :cond_1

    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Pull by empty cahce task."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget v3, Lcom/htc/sunny2/frameworks/cache/FileCacheTask;->FILE_CACHE_ENCODE:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[push] Null bitmap found..."

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->isStorageSpaceAvailable()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[push] Error caused by mFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or No space = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mScreenLarge:I

    iput v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_PUSH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->doEncode(Lcom/htc/sunny2/frameworks/cache/CacheTask;J)I

    move-result v1

    goto :goto_0
.end method

.method public release()V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] Release now..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const-string v1, ""

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(Ljava/lang/String;JJI)V

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->addNewTask(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mGalleryDBWorker:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iput-object v8, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[release] --"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v7

    sget-object v0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[release] Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->makeCacheTaskPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->TAG_PERF_REMOVE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/String;JJJ)V
    .locals 13

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mDeleteTask:Lcom/htc/sunny2/frameworks/cache/CacheTask;

    const-wide/16 v1, 0x0

    cmp-long v1, v1, p4

    if-eqz v1, :cond_1

    move-wide/from16 v3, p4

    :goto_1
    const/16 v1, 0x65

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    const/16 v6, 0xa

    const/4 v12, 0x0

    move-object v5, v0

    move-object v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p6

    invoke-virtual/range {v5 .. v12}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJI)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    const/16 v1, 0xb

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    const/16 v1, 0xc

    iput v1, v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->remove(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    goto :goto_0

    :cond_1
    move-wide v3, p2

    goto :goto_1
.end method

.method public declared-synchronized switchCacheSet(III)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mFileCacheSet:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mCacheSize:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->mColorDepthSet:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
