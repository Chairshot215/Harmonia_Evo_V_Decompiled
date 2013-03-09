.class Lcom/htc/opensense/widget/HtcGridView2$PageCache;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;,
        Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;
    }
.end annotation


# static fields
.field private static final ENABLE_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcGridView2"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field protected mAdapterPage:Ljava/lang/Object;

.field protected mBKPaint:Landroid/graphics/Paint;

.field protected mCacheBasePos:I

.field protected mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

.field protected mCachePagesCount:I

.field private mCenterPageIndexInCache:I

.field private mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

.field protected mDestRect:Landroid/graphics/Rect;

.field private mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

.field protected mItemBackbroudColor:I

.field protected mItemSpacingColor:I

.field protected mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

.field protected mLoadedPage:[Z

.field protected mLockPage:Ljava/lang/Object;

.field protected mPageElements:I

.field protected mPageHeight:I

.field protected mPageWidth:I

.field private mParentView:Lcom/htc/opensense/widget/HtcGridView2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<*>;"
        }
    .end annotation
.end field

.field private mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

.field protected mRectAllPage:Landroid/graphics/Rect;

.field protected mRectView:Landroid/graphics/Rect;

.field protected mSpacingPaint:Landroid/graphics/Paint;

.field protected mSrcRect:Landroid/graphics/Rect;

.field protected mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected mTotalCacheItems:I

.field protected mTotalElements:I

.field mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;I)V
    .locals 3
    .parameter
    .parameter "nCachePages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, parentView:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2612
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    .line 2613
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    .line 2614
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    .line 2615
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-direct {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    .line 2616
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    .line 2618
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    .line 2620
    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    .line 2622
    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    .line 2623
    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    .line 2625
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    .line 2626
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    .line 2627
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    .line 2628
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    .line 2630
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSpacingPaint:Landroid/graphics/Paint;

    .line 2631
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    .line 2632
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTextPaint:Landroid/graphics/Paint;

    .line 2637
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    .line 2638
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapterPage:Ljava/lang/Object;

    .line 2648
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    .line 2649
    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    .line 2651
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2652
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    .line 2653
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    new-array v0, v0, [Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2654
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    new-array v0, v0, [Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2656
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    .line 2658
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemBackbroudColor:I

    .line 2659
    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    .line 2661
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    .line 2678
    return-void
.end method

.method static synthetic access$3200(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2608
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->draw(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2608
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->draw(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    return-object v0
.end method

.method private createPage(III)Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    .locals 4
    .parameter "pageIdx"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 2782
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    .line 2783
    .local v0, page:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 2784
    invoke-virtual {v0, p2, p3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    .line 2785
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    .line 2787
    return-object v0
.end method

.method private draw(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 6
    .parameter "fetchInfo"

    .prologue
    const/16 v5, 0x1111

    .line 3424
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 3450
    :cond_0
    :goto_0
    return-void

    .line 3431
    :cond_1
    iget v1, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    .line 3432
    .local v1, nDataIndex:I
    move v2, v1

    .line 3433
    .local v2, nPosInCache:I
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v2, v3

    .line 3435
    if-ltz v2, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    if-ge v2, v3, :cond_0

    .line 3440
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-nez v3, :cond_2

    .line 3441
    new-instance v3, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    .line 3444
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3445
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3446
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 3447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3448
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private draw(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, fetchInfos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;>;"
    const/16 v9, 0x1112

    const/4 v8, -0x1

    .line 3383
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 3421
    :cond_0
    :goto_0
    return-void

    .line 3392
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-nez v6, :cond_2

    .line 3393
    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    .line 3395
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [I

    .line 3396
    .local v0, drawIndexes:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 3397
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    .line 3398
    .local v1, fetchInfo:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    if-nez v1, :cond_3

    .line 3399
    aput v8, v0, v2

    .line 3396
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3403
    :cond_3
    iget v4, v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    .line 3404
    .local v4, nDataIndex:I
    move v5, v4

    .line 3405
    .local v5, nPosInCache:I
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v5, v6

    .line 3407
    if-ltz v5, :cond_4

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    if-lt v5, v6, :cond_5

    .line 3408
    :cond_4
    aput v8, v0, v2

    goto :goto_2

    .line 3411
    :cond_5
    aput v4, v0, v2

    goto :goto_2

    .line 3415
    .end local v1           #fetchInfo:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;
    .end local v4           #nDataIndex:I
    .end local v5           #nPosInCache:I
    :cond_6
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v6, v9, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3416
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 3417
    .local v3, msg:Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 3418
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3419
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v6, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private drawBottomBorder(Landroid/graphics/Canvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    .line 3645
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSpacingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3647
    return-void
.end method

.method private onPageSizeChanged()V
    .locals 11

    .prologue
    .line 2791
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v5

    .line 2793
    :try_start_0
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-gtz v4, :cond_1

    .line 2794
    :cond_0
    monitor-exit v5

    .line 2869
    :goto_0
    return-void

    .line 2797
    :cond_1
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2798
    .local v1, childWidthSpec:I
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2800
    .local v0, childHeightSpec:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v4, :cond_3

    .line 2801
    new-instance v4, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2802
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 2803
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    .line 2804
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    .line 2805
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    .line 2822
    :goto_1
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 2823
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aput-object v7, v4, v6

    .line 2858
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingRight:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getBottom()I

    move-result v9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v10}, Lcom/htc/opensense/widget/HtcGridView2;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2862
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2867
    monitor-exit v5

    goto/16 :goto_0

    .end local v0           #childHeightSpec:I
    .end local v1           #childWidthSpec:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2807
    .restart local v0       #childHeightSpec:I
    .restart local v1       #childWidthSpec:I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2808
    .local v3, removedPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2810
    new-instance v4, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2811
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 2812
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    .line 2813
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    .line 2814
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    .line 2816
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v4, v3}, Lcom/htc/opensense/widget/HtcGridView2;->removeView(Landroid/view/View;)V

    .line 2818
    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    goto/16 :goto_1

    .line 2825
    .end local v3           #removedPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v2, v4, :cond_2

    .line 2827
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    if-nez v4, :cond_5

    .line 2828
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    aput-object v6, v4, v2

    .line 2829
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 2830
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    .line 2831
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    .line 2832
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    .line 2825
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2835
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v4, v2

    .line 2836
    .restart local v3       #removedPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    aput-object v6, v4, v2

    .line 2838
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    aput-object v6, v4, v2

    .line 2839
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 2840
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    .line 2841
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    .line 2842
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    .line 2844
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v4, v3}, Lcom/htc/opensense/widget/HtcGridView2;->removeView(Landroid/view/View;)V

    .line 2846
    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private reloadCachedPage(I)V
    .locals 10
    .parameter "nCachePagePos"

    .prologue
    .line 3129
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v6

    .line 3130
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v5, v5, p1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    if-nez v5, :cond_1

    :cond_0
    monitor-exit v6

    .line 3163
    :goto_0
    return-void

    .line 3132
    :cond_1
    const/4 v3, 0x0

    .local v3, x:I
    const/4 v4, 0x0

    .line 3133
    .local v4, y:I
    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v7, p1

    add-int v2, v5, v7

    .line 3136
    .local v2, nPosInView:I
    new-instance v1, Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3137
    .local v1, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 3138
    .local v0, idx:I
    :goto_1
    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-ge v0, v5, :cond_2

    if-ltz v2, :cond_2

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge v2, v5, :cond_2

    .line 3141
    invoke-virtual {p0, p1, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearItem(II)V

    .line 3146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3139
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3149
    :cond_2
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v5, v1, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    .line 3162
    monitor-exit v6

    goto :goto_0

    .end local v0           #idx:I
    .end local v1           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #nPosInView:I
    .end local v3           #x:I
    .end local v4           #y:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method Deinit()V
    .locals 4

    .prologue
    .line 2873
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v2

    .line 2874
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-eqz v1, :cond_0

    .line 2875
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeAllMessages()V

    .line 2878
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    if-eqz v1, :cond_1

    .line 2879
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->DeInit()V

    .line 2880
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    .line 2883
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v0, v1, :cond_4

    .line 2884
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 2885
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    .line 2886
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 2888
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 2889
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    .line 2890
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 2883
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2894
    :cond_4
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    .line 2895
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-eqz v1, :cond_5

    .line 2896
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    .line 2897
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2901
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2902
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2904
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    .line 2905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    .line 2906
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2907
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/opensense/widget/HtcGridView2$PageCache$2;

    invoke-direct {v2, p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$2;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2912
    return-void

    .line 2906
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method GetPageCanvas(I)Landroid/graphics/Canvas;
    .locals 4
    .parameter "nPos"

    .prologue
    .line 3336
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v3

    .line 3338
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3339
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v2

    monitor-exit v3

    .line 3348
    :goto_0
    return-object v2

    .line 3343
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt p1, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 3349
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3345
    :cond_2
    move v1, p1

    .line 3346
    .local v1, nPosInCache:I
    :try_start_1
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v1, v2

    .line 3347
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v0, v1, v2

    .line 3348
    .local v0, nCachePageIndex:I
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v2, v2, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method clearAllPage()V
    .locals 23

    .prologue
    .line 2994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v2, :cond_0

    .line 2995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2997
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v15, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    .line 2998
    .local v15, itemWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v14, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    .line 2999
    .local v14, itemHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    .line 3000
    .local v10, dx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v11, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    .line 3003
    .local v11, dy:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v2, :cond_1

    .line 3004
    new-instance v2, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 3006
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    .line 3009
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 3010
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v12, v2, :cond_4

    .line 3011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    sub-int v17, v2, v12

    .line 3012
    .local v17, nPos:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3013
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInPage(I)Landroid/graphics/Rect;

    move-result-object v19

    .line 3014
    .local v19, rc:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 3015
    .local v21, x:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 3016
    .local v22, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v2

    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    add-int v5, v21, v15

    int-to-float v5, v5

    add-int v6, v22, v14

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3010
    .end local v19           #rc:Landroid/graphics/Rect;
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3020
    .end local v17           #nPos:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .local v8, arr$:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    aget-object v18, v8, v13

    .line 3021
    .local v18, page:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    if-eqz v18, :cond_6

    .line 3022
    move/from16 v22, v11

    .line 3023
    .restart local v22       #y:I
    const/16 v20, 0x0

    .local v20, row:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_6

    .line 3024
    move/from16 v21, v10

    .line 3025
    .restart local v21       #x:I
    const/4 v9, 0x0

    .local v9, col:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-ge v9, v2, :cond_5

    .line 3026
    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v2

    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    add-int v5, v21, v15

    int-to-float v5, v5

    add-int v6, v22, v14

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3028
    add-int v2, v15, v10

    add-int v21, v21, v2

    .line 3025
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3031
    :cond_5
    add-int v2, v14, v11

    add-int v22, v22, v2

    .line 3023
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 3020
    .end local v9           #col:I
    .end local v20           #row:I
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3035
    .end local v18           #page:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    :cond_7
    return-void
.end method

.method clearItem(II)V
    .locals 12
    .parameter "nCachePagePos"
    .parameter "nPos"

    .prologue
    .line 2958
    iget-object v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v11

    .line 2960
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge p2, v1, :cond_0

    .line 2961
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p2

    .line 2964
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, p1

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2968
    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInPage(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 2970
    .local v6, rc:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 2971
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 2972
    .local v9, x:I
    iget v10, v6, Landroid/graphics/Rect;->top:I

    .line 2973
    .local v10, y:I
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    .line 2974
    .local v7, sizex:I
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    .line 2976
    .local v8, sizey:I
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2977
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 2983
    :goto_0
    int-to-float v1, v9

    int-to-float v2, v10

    add-int v3, v9, v7

    int-to-float v3, v3

    add-int v4, v10, v8

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2990
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v6           #rc:Landroid/graphics/Rect;
    .end local v7           #sizex:I
    .end local v8           #sizey:I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_2
    monitor-exit v11

    .line 2991
    return-void

    .line 2980
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    .restart local v6       #rc:Landroid/graphics/Rect;
    .restart local v7       #sizex:I
    .restart local v8       #sizey:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, p1

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0

    .line 2990
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v6           #rc:Landroid/graphics/Rect;
    .end local v7           #sizex:I
    .end local v8           #sizey:I
    .end local v9           #x:I
    .end local v10           #y:I
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearPrefetch()V
    .locals 2

    .prologue
    .line 2924
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    .line 2925
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    .line 2926
    monitor-exit v1

    .line 2927
    return-void

    .line 2926
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized drawBitmapToPage(Landroid/graphics/Bitmap;I)V
    .locals 10
    .parameter "bmp"
    .parameter "nPos"

    .prologue
    .line 3607
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3608
    const/4 v1, 0x0

    .line 3609
    .local v1, nCachePageIndex:I
    move v2, p2

    .line 3610
    .local v2, nDataIndex:I
    move v3, p2

    .line 3611
    .local v3, nPosInCache:I
    :try_start_1
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v3, v6

    .line 3613
    if-ltz v3, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    if-lt v3, v6, :cond_1

    .line 3614
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position out of page cache range, nPosInCache="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mTotalCacheItems="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3615
    .local v0, msg:Ljava/lang/String;
    const-string v6, "HtcGridView2"

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3616
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3641
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 3619
    :cond_1
    :try_start_2
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v1, v3, v6

    .line 3620
    if-ltz v1, :cond_2

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v6, v6, v1

    if-nez v6, :cond_3

    .line 3623
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "want to use incorrect page cache, nCachePageIndex="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mCachePagesCount="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mCachePages[nCachePageIndex]="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3626
    .restart local v0       #msg:Ljava/lang/String;
    const-string v6, "HtcGridView2"

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3627
    monitor-exit v7

    goto :goto_0

    .line 3640
    .end local v0           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3607
    .end local v1           #nCachePageIndex:I
    .end local v2           #nDataIndex:I
    .end local v3           #nPosInCache:I
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 3630
    .restart local v1       #nCachePageIndex:I
    .restart local v2       #nDataIndex:I
    .restart local v3       #nPosInCache:I
    :cond_3
    :try_start_4
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    rem-int/2addr v3, v6

    .line 3632
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int v6, v3, v6

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v8, v9

    mul-int/2addr v6, v8

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int v4, v6, v8

    .line 3633
    .local v4, x:I
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v6, v3, v6

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v8, v9

    mul-int/2addr v6, v8

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int v5, v6, v8

    .line 3634
    .local v5, y:I
    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3635
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v6, p1, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->drawBitmap(Landroid/graphics/Bitmap;II)V

    .line 3640
    :goto_1
    monitor-exit v7

    goto/16 :goto_0

    .line 3638
    :cond_4
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->drawBitmap(Landroid/graphics/Bitmap;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method drawPage(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x1

    .line 3650
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v8

    .line 3651
    :try_start_0
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-nez v7, :cond_0

    monitor-exit v8

    .line 3748
    :goto_0
    return-void

    .line 3653
    :cond_0
    const/4 v4, 0x0

    .local v4, nDrawPageIndex:I
    const/4 v3, 0x0

    .line 3655
    .local v3, nDrawOnScreenY:I
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePageIndex()I

    move-result v6

    .line 3656
    .local v6, nFirstVisiblePageIndex:I
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int/2addr v7, v9

    sub-int v5, v6, v7

    .line 3658
    .local v5, nFirstVisibleCachePageIndex:I
    if-ltz v5, :cond_1

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-lt v5, v7, :cond_2

    .line 3659
    :cond_1
    monitor-exit v8

    goto :goto_0

    .line 3747
    .end local v3           #nDrawOnScreenY:I
    .end local v4           #nDrawPageIndex:I
    .end local v5           #nFirstVisibleCachePageIndex:I
    .end local v6           #nFirstVisiblePageIndex:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3663
    .restart local v3       #nDrawOnScreenY:I
    .restart local v4       #nDrawPageIndex:I
    .restart local v5       #nFirstVisibleCachePageIndex:I
    .restart local v6       #nFirstVisiblePageIndex:I
    :cond_2
    :try_start_1
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int/2addr v7, v9

    add-int/2addr v7, v5

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    mul-int/2addr v7, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v3, v7, v9

    .line 3665
    :goto_1
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v7, v3

    if-gez v7, :cond_3

    .line 3666
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v3, v7

    .line 3667
    goto :goto_1

    .line 3671
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getPaddingTop()I

    move-result v9

    add-int/2addr v7, v9

    if-le v3, v7, :cond_5

    .line 3747
    :cond_4
    monitor-exit v8

    goto :goto_0

    .line 3674
    :cond_5
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int/2addr v7, v9

    add-int v4, v5, v7

    .line 3676
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-gt v5, v7, :cond_4

    if-ltz v4, :cond_4

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalPage:I

    if-ge v4, v7, :cond_4

    .line 3684
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3688
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    mul-int/2addr v10, v4

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3689
    const/4 v0, 0x0

    .line 3690
    .local v0, bLastPage:Z
    const/4 v1, 0x0

    .line 3691
    .local v1, bUseLastPage:Z
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v9, :cond_6

    .line 3692
    const/4 v0, 0x1

    .line 3693
    const/4 v1, 0x1

    .line 3697
    :goto_2
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3698
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    neg-int v10, v4

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    mul-int/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3702
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v9, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3703
    if-ne v13, v0, :cond_7

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v9, :cond_7

    .line 3704
    const/4 v0, 0x1

    .line 3709
    :goto_3
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 3710
    add-int/lit8 v5, v5, 0x1

    .line 3711
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v3, v7

    .line 3712
    goto/16 :goto_1

    .line 3695
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 3706
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 3714
    :cond_8
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    add-int/2addr v9, v10

    neg-int v9, v9

    neg-int v10, v3

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3717
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3718
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v9, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3720
    const/4 v2, 0x0

    .line 3723
    .local v2, bitmpPage:Landroid/graphics/Bitmap;
    if-ne v13, v1, :cond_a

    .line 3724
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3732
    :goto_4
    if-eqz v2, :cond_9

    .line 3733
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {p1, v2, v7, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3744
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 3745
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v3, v7

    .line 3746
    goto/16 :goto_1

    .line 3727
    :cond_a
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_4
.end method

.method getCacheEndPos()I
    .locals 3

    .prologue
    .line 3211
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method getCacheStartPos()I
    .locals 1

    .prologue
    .line 3207
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    return v0
.end method

.method getItemRectInPage(I)Landroid/graphics/Rect;
    .locals 6
    .parameter "nPos"

    .prologue
    .line 3376
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    rem-int v0, v3, v4

    .line 3377
    .local v0, nPosInPage:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int v1, v3, v4

    .line 3378
    .local v1, x:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int v2, v3, v4

    .line 3379
    .local v2, y:I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    add-int/2addr v5, v2

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method getItemRectInScreen(I)Landroid/graphics/Rect;
    .locals 7
    .parameter "nPos"

    .prologue
    .line 3366
    move v0, p1

    .line 3367
    .local v0, nPosInCache:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int v4, v0, v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    sub-int v1, v3, v4

    .line 3368
    .local v1, x:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v4, v0, v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v2, v3, v4

    .line 3369
    .local v2, y:I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    add-int/2addr v5, v2

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method initCache()V
    .locals 9

    .prologue
    .line 2742
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v4

    .line 2744
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v3, :cond_0

    monitor-exit v4

    .line 2779
    :goto_0
    return-void

    .line 2746
    :cond_0
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-gtz v3, :cond_2

    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 2778
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2748
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2749
    .local v1, childWidthSpec:I
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2751
    .local v0, childHeightSpec:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v3, :cond_5

    .line 2752
    new-instance v3, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 2753
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v7, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 2754
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v3, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    .line 2755
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    .line 2760
    :cond_3
    :goto_1
    const/4 v3, 0x1

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ne v3, v5, :cond_6

    .line 2761
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aput-object v6, v3, v5

    .line 2778
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 2756
    :cond_5
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2757
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v7, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    goto :goto_1

    .line 2763
    :cond_6
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v2, v3, :cond_4

    .line 2764
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    if-nez v3, :cond_8

    .line 2765
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    new-instance v5, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    aput-object v5, v3, v2

    .line 2766
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v3, v5, v6, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 2767
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    .line 2768
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    .line 2769
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    .line 2763
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2772
    :cond_8
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2773
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v3, v5, v6, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method isItemLoaded(I)Z
    .locals 2
    .parameter "nPos"

    .prologue
    const/4 v0, 0x0

    .line 3356
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-nez v1, :cond_1

    .line 3359
    :cond_0
    :goto_0
    return v0

    .line 3357
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge p1, v1, :cond_0

    .line 3359
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method isLastPage(I)Z
    .locals 5
    .parameter "pos"

    .prologue
    .line 2942
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int v0, v3, v4

    .line 2943
    .local v0, baseNum:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    div-int v1, v3, v0

    .line 2944
    .local v1, q:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    rem-int v2, v3, v0

    .line 2946
    .local v2, r:I
    if-nez v2, :cond_0

    .line 2947
    add-int/lit8 v1, v1, -0x1

    .line 2949
    :cond_0
    mul-int v3, v0, v1

    if-gt v3, p1, :cond_1

    .line 2950
    const/4 v3, 0x1

    .line 2953
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method notifyPositionChange(I)V
    .locals 14
    .parameter "nFirstVisibleItemPos"

    .prologue
    .line 3222
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int v9, v10, v11

    .line 3224
    .local v9, totalCacheElements:I
    iget-object v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v11

    .line 3227
    :try_start_0
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int v10, p1, v10

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v6, v10, v12

    .line 3231
    .local v6, nNewPageIndexInCache:I
    if-ltz v6, :cond_0

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v6, v10, :cond_0

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    rem-int/2addr v10, v12

    if-eqz v10, :cond_3

    .line 3236
    :cond_0
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v12, v12, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int/2addr v10, v12

    rem-int v10, p1, v10

    sub-int v4, p1, v10

    .line 3238
    .local v4, nNewBasePos:I
    :goto_0
    add-int v10, v4, v9

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v12, v12, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-le v10, v12, :cond_1

    .line 3239
    add-int v10, v4, v9

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    sub-int/2addr v10, v12

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v12, v12, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge v10, v12, :cond_2

    .line 3245
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    .line 3246
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadAllItems()V

    .line 3247
    monitor-exit v11

    .line 3333
    .end local v4           #nNewBasePos:I
    :goto_1
    return-void

    .line 3242
    .restart local v4       #nNewBasePos:I
    :cond_2
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    sub-int/2addr v4, v10

    goto :goto_0

    .line 3250
    .end local v4           #nNewBasePos:I
    :cond_3
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    if-ge v6, v10, :cond_a

    .line 3252
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    sub-int v1, v10, v6

    .line 3253
    .local v1, nDiff:I
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v12, v1

    sub-int v4, v10, v12

    .line 3256
    .restart local v4       #nNewBasePos:I
    if-gez v4, :cond_4

    .line 3257
    const/4 v4, 0x0

    .line 3258
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v1, v10, v12

    .line 3261
    :cond_4
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    .line 3262
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-le v1, v10, :cond_5

    .line 3263
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    .line 3267
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_7

    .line 3268
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v7, v10, v12

    .line 3269
    .local v7, nPosInView:I
    move v2, v7

    .local v2, nIndex:I
    :goto_3
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    add-int/2addr v10, v7

    if-ge v2, v10, :cond_6

    .line 3270
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v12, 0x0

    aput-boolean v12, v10, v2

    .line 3269
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3272
    :cond_6
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v13, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    sub-int/2addr v13, v0

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v0

    .line 3267
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3275
    .end local v2           #nIndex:I
    .end local v7           #nPosInView:I
    :cond_7
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/lit8 v0, v10, -0x1

    :goto_4
    if-lt v0, v1, :cond_8

    .line 3277
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    sub-int v13, v0, v1

    aget-object v12, v12, v13

    aput-object v12, v10, v0

    .line 3275
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3280
    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_9

    .line 3281
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v12, v12, v0

    aput-object v12, v10, v0

    .line 3282
    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadCachedPage(I)V

    .line 3280
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3285
    :cond_9
    monitor-exit v11

    goto :goto_1

    .line 3331
    .end local v0           #i:I
    .end local v1           #nDiff:I
    .end local v4           #nNewBasePos:I
    .end local v6           #nNewPageIndexInCache:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3288
    .restart local v6       #nNewPageIndexInCache:I
    :cond_a
    :try_start_1
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    if-le v6, v10, :cond_12

    .line 3289
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    sub-int v1, v6, v10

    .line 3290
    .restart local v1       #nDiff:I
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v12, v1

    add-int v4, v10, v12

    .line 3292
    .restart local v4       #nNewBasePos:I
    add-int v10, v4, v1

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v5, v10, v12

    .line 3293
    .local v5, nNewCacheBasePageIndex:I
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int/2addr v10, v12

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    sub-int/2addr v10, v12

    add-int/lit8 v3, v10, 0x1

    .line 3295
    .local v3, nLastCacheBasePageIndex:I
    if-le v5, v3, :cond_b

    .line 3296
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int v4, v3, v10

    .line 3297
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v10, v3

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v10, v12

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v1, v10, v12

    .line 3300
    :cond_b
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    .line 3301
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-le v1, v10, :cond_d

    .line 3302
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    .line 3309
    :cond_c
    :goto_6
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7
    if-ge v0, v1, :cond_f

    .line 3310
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    add-int/2addr v10, v0

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v7, v10, v12

    .line 3311
    .restart local v7       #nPosInView:I
    move v2, v7

    .restart local v2       #nIndex:I
    :goto_8
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    add-int/2addr v10, v7

    if-ge v2, v10, :cond_e

    .line 3312
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v12, 0x0

    aput-boolean v12, v10, v2

    .line 3311
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3303
    .end local v0           #i:I
    .end local v2           #nIndex:I
    .end local v7           #nPosInView:I
    :cond_d
    if-gez v1, :cond_c

    .line 3304
    const/4 v1, 0x0

    goto :goto_6

    .line 3314
    .restart local v0       #i:I
    .restart local v2       #nIndex:I
    .restart local v7       #nPosInView:I
    :cond_e
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v12, v12, v0

    aput-object v12, v10, v0

    .line 3309
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3317
    .end local v2           #nIndex:I
    .end local v7           #nPosInView:I
    :cond_f
    const/4 v0, 0x0

    :goto_9
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    sub-int/2addr v10, v1

    if-ge v0, v10, :cond_10

    .line 3318
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    add-int v13, v0, v1

    aget-object v12, v12, v13

    aput-object v12, v10, v0

    .line 3317
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3321
    :cond_10
    const/4 v8, 0x0

    .line 3322
    .local v8, nTarget:I
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_11

    .line 3323
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v8, v10, v0

    .line 3324
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v12, v12, v0

    aput-object v12, v10, v8

    .line 3325
    invoke-direct {p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadCachedPage(I)V

    .line 3322
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3328
    :cond_11
    monitor-exit v11

    goto/16 :goto_1

    .line 3330
    .end local v0           #i:I
    .end local v1           #nDiff:I
    .end local v3           #nLastCacheBasePageIndex:I
    .end local v4           #nNewBasePos:I
    .end local v5           #nNewCacheBasePageIndex:I
    .end local v8           #nTarget:I
    :cond_12
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    invoke-virtual {p0, v10, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    .line 3331
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method pausePrefetch()V
    .locals 2

    .prologue
    .line 2930
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    .line 2931
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->pausePrefetch()V

    .line 2932
    monitor-exit v1

    .line 2933
    return-void

    .line 2932
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reloadAllItems()V
    .locals 11

    .prologue
    .line 3054
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v7

    .line 3055
    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    .line 3057
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-gtz v6, :cond_1

    :cond_0
    monitor-exit v7

    .line 3100
    :goto_0
    return-void

    .line 3060
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v6, :cond_2

    .line 3061
    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    .line 3064
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3065
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v10, -0x1

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    .line 3082
    :goto_1
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    mul-int v4, v6, v8

    .line 3083
    .local v4, nTotalCache:I
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    add-int/2addr v6, v4

    add-int/lit8 v2, v6, -0x1

    .line 3084
    .local v2, lastPosition:I
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v2, v6, :cond_3

    .line 3085
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v2, v6, -0x1

    .line 3088
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3089
    .local v1, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, page:I
    :goto_2
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v5, v6, :cond_6

    .line 3090
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v8, v5

    add-int v3, v6, v8

    .line 3091
    .local v3, nPosInView:I
    const/4 v0, 0x0

    .line 3092
    .local v0, idx:I
    :goto_3
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-ge v0, v6, :cond_5

    if-ltz v3, :cond_5

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge v3, v6, :cond_5

    .line 3094
    invoke-virtual {p0, v5, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearItem(II)V

    .line 3095
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3093
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3068
    .end local v0           #idx:I
    .end local v1           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #lastPosition:I
    .end local v3           #nPosInView:I
    .end local v4           #nTotalCache:I
    .end local v5           #page:I
    :cond_4
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    .line 3069
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v10, -0x1

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    goto :goto_1

    .line 3099
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3089
    .restart local v0       #idx:I
    .restart local v1       #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2       #lastPosition:I
    .restart local v3       #nPosInView:I
    .restart local v4       #nTotalCache:I
    .restart local v5       #page:I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3098
    .end local v0           #idx:I
    .end local v3           #nPosInView:I
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v6, v1, v8, v9, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    .line 3099
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method reloadItem(I)V
    .locals 6
    .parameter "nPos"

    .prologue
    .line 3038
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v2

    .line 3040
    :try_start_0
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-lez v1, :cond_3

    .line 3042
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int v1, p1, v1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v0, v1, v3

    .line 3043
    .local v0, nCachePagePos:I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 3051
    .end local v0           #nCachePagePos:I
    :goto_0
    return-void

    .line 3045
    .restart local v0       #nCachePagePos:I
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge p1, v1, :cond_2

    .line 3046
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, p1

    .line 3048
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    .line 3050
    .end local v0           #nCachePagePos:I
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resumePrefetch()V
    .locals 2

    .prologue
    .line 2936
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    .line 2937
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->resumePrefetch()V

    .line 2938
    monitor-exit v1

    .line 2939
    return-void

    .line 2938
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 2691
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapterPage:Ljava/lang/Object;

    monitor-enter v1

    .line 2692
    if-nez p1, :cond_0

    .line 2693
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->stopPrefetch()V

    .line 2695
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    .line 2696
    monitor-exit v1

    .line 2697
    return-void

    .line 2696
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setCacheStartPos(II)V
    .locals 8
    .parameter "nFirstCachePos"
    .parameter "nCurrentPos"

    .prologue
    .line 3169
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    .line 3171
    if-gez p1, :cond_0

    .line 3172
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    .line 3175
    :cond_0
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    .line 3176
    .local v1, min:I
    if-gez v1, :cond_4

    .line 3177
    const/4 v1, 0x0

    .line 3182
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v0, -0x1

    .line 3183
    .local v2, max:I
    if-gez v2, :cond_5

    .line 3184
    const/4 v2, 0x0

    .line 3189
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->invokeOnItemScrollListener()V

    .line 3191
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->updatePrefetchRange(IIIII)V

    .line 3193
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-eqz v0, :cond_3

    .line 3194
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeAllMessages()V

    .line 3196
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    .line 3197
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3198
    .local v7, poss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v6, v1

    .local v6, i:I
    :goto_2
    if-gt v6, v2, :cond_6

    .line 3199
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3198
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3178
    .end local v2           #max:I
    .end local v6           #i:I
    .end local v7           #poss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v1, v0, :cond_1

    .line 3179
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 3185
    .restart local v2       #max:I
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v2, v0, :cond_2

    .line 3186
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    .line 3202
    .restart local v6       #i:I
    .restart local v7       #poss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v0, v7, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    .line 3204
    return-void
.end method

.method setItemBackgroundColor(I)V
    .locals 2
    .parameter "nColor"

    .prologue
    .line 2681
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemBackbroudColor:I

    .line 2682
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemBackbroudColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2683
    return-void
.end method

.method setItemSpacingColor(I)V
    .locals 2
    .parameter "nColor"

    .prologue
    .line 2686
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    .line 2687
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSpacingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2688
    return-void
.end method

.method stopPrefetch()V
    .locals 2

    .prologue
    .line 2915
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    .line 2916
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->stopPrefetch()V

    .line 2917
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-eqz v0, :cond_0

    .line 2918
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeAllMessages()V

    .line 2920
    :cond_0
    monitor-exit v1

    .line 2921
    return-void

    .line 2920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updatePageInfo(Lcom/htc/opensense/widget/HtcGridView2$GridInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 2701
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapterPage:Ljava/lang/Object;

    monitor-enter v5

    .line 2703
    :try_start_0
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    .line 2705
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    .line 2706
    .local v3, newWidth:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v6, v7

    mul-int v0, v4, v6

    .line 2707
    .local v0, newHeight:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int v1, v4, v6

    .line 2708
    .local v1, newPageElement:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    .line 2711
    .local v2, newTotalElements:I
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-eq v4, v1, :cond_1

    .line 2712
    :cond_0
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    .line 2713
    iput v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    .line 2714
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    .line 2715
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    .line 2716
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->onPageSizeChanged()V

    .line 2720
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    if-eq v4, v6, :cond_3

    .line 2721
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iput v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    .line 2722
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    .line 2724
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2732
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingRight:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getBottom()I

    move-result v9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v10}, Lcom/htc/opensense/widget/HtcGridView2;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2736
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2737
    monitor-exit v5

    .line 2738
    return-void

    .line 2737
    .end local v0           #newHeight:I
    .end local v1           #newPageElement:I
    .end local v2           #newTotalElements:I
    .end local v3           #newWidth:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
