.class public Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;
.super Ljava/lang/Object;
.source "GridviewCachePreparator.java"


# static fields
.field public static final CACHE_RESULT_CONTINUE:I = 0x2

.field public static final CACHE_RESULT_ERROR:I = 0x3

.field public static final CACHE_RESULT_FINISH:I = 0x4

.field public static final CACHE_RESULT_OK:I = 0x1

.field public static final CACHE_SET_CUSTOM:I = 0x64

.field public static final CACHE_SET_DEFAULT:I = -0x1

.field public static final CACHE_SET_FOLDER:I = 0x65

.field public static final CACHE_SET_GRID:I = 0xa

.field public static final CACHE_SET_HIGH:I = 0xc

.field public static final CACHE_SET_MIDIUM:I = 0xb

.field public static final CACHE_TASK_DECODE:I = 0x2

.field public static final CACHE_TASK_ENCODE:I = 0x1

.field public static final FULL_FILM_ID:I = 0x1

.field public static final GRID_ID:I = 0x0

.field private static final MAX_MEM_CACHE_LIMIT_COUNT:I = 0x12

.field public static final SOURCE_BOTH:I = 0x11

.field public static final SOURCE_MEMORY:I = 0x1

.field public static final SOURCE_STORAGE:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEnableFileCache:Z

.field private mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mEnableFileCache:Z

    const/16 v0, 0x12

    if-le p2, v0, :cond_0

    const/16 p2, 0x12

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->TAG:Ljava/lang/String;

    const-string v1, "Context is null, reset fileCacheSize to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :cond_1
    new-instance v0, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-direct {v0, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    if-lez p3, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mEnableFileCache:Z

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableFileCache(Landroid/content/Context;I)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->clear()V

    return-void
.end method

.method public enableCache(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->enableCache(ZI)V

    return-void
.end method

.method public executeCacheTask(J)I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->executeCacheTask(J)I

    move-result v0

    return v0
.end method

.method public freeInvisibleRange()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->freeInvisibleRange()V

    return-void
.end method

.method public getBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getBitmap(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getCacheKey()I

    move-result v0

    return v0
.end method

.method public getDefaultCacheKey()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getDefaultCacheKey()I

    move-result v0

    return v0
.end method

.method public getIteratorCacheManager()Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    return-object v0
.end method

.method public getMemCacheSize()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->getMemCacheSize()I

    move-result v0

    return v0
.end method

.method public hasFileCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mEnableFileCache:Z

    return v0
.end method

.method public newMemoryCacheSet(II)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->newMemoryCacheSet(II)Z

    move-result v0

    return v0
.end method

.method public onMediaMounted()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->onMediaMounted()V

    return-void
.end method

.method public pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->pull(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v0

    return v0
.end method

.method public push(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->push(Lcom/htc/sunny2/frameworks/cache/CacheTask;IJ)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->release()V

    return-void
.end method

.method public removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->removeCache(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    return-void
.end method

.method public resetMemoryCacheSize(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->resetMemoryCacheSize(IIZ)V

    return-void
.end method

.method public setRangeBoundary(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setRangeBoundary(I)V

    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridviewCachePreparator;->mIteratorCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/cache/IteratorCacheManager;->setVisibleRange(II)V

    return-void
.end method
