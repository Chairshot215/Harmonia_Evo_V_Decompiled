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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<*>;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-direct {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSpacingPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTextPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapterPage:Ljava/lang/Object;

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    new-array v0, v0, [Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    new-array v0, v0, [Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemBackbroudColor:I

    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$1;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->draw(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->draw(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    return-object v0
.end method

.method private createPage(III)Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    invoke-virtual {v0, p2, p3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    return-object v0
.end method

.method private draw(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 6

    const/16 v5, 0x1111

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    move v2, v1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-nez v3, :cond_2

    new-instance v3, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private draw(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v9, 0x1112

    const/4 v8, -0x1

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-nez v6, :cond_2

    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [I

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    if-nez v1, :cond_3

    aput v8, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v4, v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;->pos:I

    move v5, v4

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v5, v6

    if-ltz v5, :cond_4

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    if-lt v5, v6, :cond_5

    :cond_4
    aput v8, v0, v2

    goto :goto_2

    :cond_5
    aput v4, v0, v2

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v6, v9, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v9, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v6, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private drawBottomBorder(Landroid/graphics/Canvas;IIII)V
    .locals 6

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSpacingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private onPageSizeChanged()V
    .locals 11

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-gtz v4, :cond_1

    :cond_0
    monitor-exit v5

    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v4, :cond_3

    new-instance v4, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    :goto_1
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aput-object v7, v4, v6

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

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    new-instance v4, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v4, v3}, Lcom/htc/opensense/widget/HtcGridView2;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    aput-object v6, v4, v2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v4, v2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v6, 0x0

    aput-object v6, v4, v2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    aput-object v6, v4, v2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v4, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v4, v3}, Lcom/htc/opensense/widget/HtcGridView2;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private reloadCachedPage(I)V
    .locals 10

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v6

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

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v7, p1

    add-int v2, v5, v7

    new-instance v1, Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-ge v0, v5, :cond_2

    if-ltz v2, :cond_2

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearItem(II)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v5, v1, v7, v8, v9}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    monitor-exit v6

    goto :goto_0

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

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeAllMessages()V

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->DeInit()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/opensense/widget/HtcGridView2$PageCache$2;

    invoke-direct {v2, p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$2;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

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

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v2

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt p1, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    move v1, p1

    :try_start_1
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v0, v1, v2

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v15, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v14, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v11, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v2, :cond_1

    new-instance v2, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    const/4 v12, 0x1

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    sub-int v17, v2, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInPage(I)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

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

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    aget-object v18, v8, v13

    if-eqz v18, :cond_6

    move/from16 v22, v11

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_6

    move/from16 v21, v10

    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-ge v9, v2, :cond_5

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

    add-int v2, v15, v10

    add-int v21, v21, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    add-int v2, v14, v11

    add-int v22, v22, v2

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method clearItem(II)V
    .locals 12

    iget-object v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p2

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

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInPage(I)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v0, 0x0

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v0

    :goto_0
    int-to-float v1, v9

    int-to-float v2, v10

    add-int v3, v9, v7

    int-to-float v3, v3

    add-int v4, v10, v8

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    monitor-exit v11

    return-void

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v1, v1, p1

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearPrefetch()V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized drawBitmapToPage(Landroid/graphics/Bitmap;I)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    move v2, p2

    move v3, p2

    :try_start_1
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v3, v6

    if-ltz v3, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    if-lt v3, v6, :cond_1

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

    const-string v6, "HtcGridView2"

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v1, v3, v6

    if-ltz v1, :cond_2

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v6, v6, v1

    if-nez v6, :cond_3

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

    const-string v6, "HtcGridView2"

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_3
    :try_start_4
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    rem-int/2addr v3, v6

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

    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v6, p1, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->drawBitmap(Landroid/graphics/Bitmap;II)V

    :goto_1
    monitor-exit v7

    goto/16 :goto_0

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

    const/4 v13, 0x1

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-nez v7, :cond_0

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePageIndex()I

    move-result v6

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int/2addr v7, v9

    sub-int v5, v6, v7

    if-ltz v5, :cond_1

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-lt v5, v7, :cond_2

    :cond_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

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

    :goto_1
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v7, v3

    if-gez v7, :cond_3

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v3, v7

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getPaddingTop()I

    move-result v9

    add-int/2addr v7, v9

    if-le v3, v7, :cond_5

    :cond_4
    monitor-exit v8

    goto :goto_0

    :cond_5
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int/2addr v7, v9

    add-int v4, v5, v7

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-gt v5, v7, :cond_4

    if-ltz v4, :cond_4

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalPage:I

    if-ge v4, v7, :cond_4

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    mul-int/2addr v10, v4

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v9, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    neg-int v10, v4

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    mul-int/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v9, v3}, Landroid/graphics/Rect;->offset(II)V

    if-ne v13, v0, :cond_7

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v9, :cond_7

    const/4 v0, 0x1

    :goto_3
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v3, v7

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

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

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v9, v3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x0

    if-ne v13, v1, :cond_a

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_9

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSrcRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDestRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {p1, v2, v7, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    add-int/2addr v3, v7

    goto/16 :goto_1

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

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method getCacheStartPos()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    return v0
.end method

.method getItemRectInPage(I)Landroid/graphics/Rect;
    .locals 6

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    rem-int v0, v3, v4

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

    move v0, p1

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

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-gtz v3, :cond_2

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/high16 v5, 0x4000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v3, :cond_5

    new-instance v3, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v7, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v3, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    :cond_3
    :goto_1
    const/4 v3, 0x1

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ne v3, v5, :cond_6

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aput-object v6, v3, v5

    :cond_4
    monitor-exit v4

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v7, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    new-instance v5, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    aput-object v5, v3, v2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v3, v5, v6, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->measure(II)V

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->layout(IIII)V

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v3

    if-nez v3, :cond_7

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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method isLastPage(I)Z
    .locals 5

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int v0, v3, v4

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    div-int v1, v3, v0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    rem-int v2, v3, v0

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    mul-int v3, v0, v1

    if-gt v3, p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method notifyPositionChange(I)V
    .locals 14

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int v9, v10, v11

    iget-object v11, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int v10, p1, v10

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v6, v10, v12

    if-ltz v6, :cond_0

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v6, v10, :cond_0

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    rem-int/2addr v10, v12

    if-eqz v10, :cond_3

    :cond_0
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v12, v12, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int/2addr v10, v12

    rem-int v10, p1, v10

    sub-int v4, p1, v10

    :goto_0
    add-int v10, v4, v9

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v12, v12, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-le v10, v12, :cond_1

    add-int v10, v4, v9

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    sub-int/2addr v10, v12

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v12, v12, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge v10, v12, :cond_2

    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadAllItems()V

    monitor-exit v11

    :goto_1
    return-void

    :cond_2
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    sub-int/2addr v4, v10

    goto :goto_0

    :cond_3
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    if-ge v6, v10, :cond_a

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    sub-int v1, v10, v6

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v12, v1

    sub-int v4, v10, v12

    if-gez v4, :cond_4

    const/4 v4, 0x0

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v1, v10, v12

    :cond_4
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-le v1, v10, :cond_5

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v7, v10, v12

    move v2, v7

    :goto_3
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    add-int/2addr v10, v7

    if-ge v2, v10, :cond_6

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v12, 0x0

    aput-boolean v12, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v13, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    sub-int/2addr v13, v0

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/lit8 v0, v10, -0x1

    :goto_4
    if-lt v0, v1, :cond_8

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    sub-int v13, v0, v1

    aget-object v12, v12, v13

    aput-object v12, v10, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_9

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v12, v12, v0

    aput-object v12, v10, v0

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadCachedPage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_a
    :try_start_1
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    if-le v6, v10, :cond_12

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCenterPageIndexInCache:I

    sub-int v1, v6, v10

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v12, v1

    add-int v4, v10, v12

    add-int v10, v4, v1

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v5, v10, v12

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int/2addr v10, v12

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    sub-int/2addr v10, v12

    add-int/lit8 v3, v10, 0x1

    if-le v5, v3, :cond_b

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int v4, v3, v10

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v10, v3

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int/2addr v10, v12

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v1, v10, v12

    :cond_b
    invoke-virtual {p0, v4, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-le v1, v10, :cond_d

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    :cond_c
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_f

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    add-int/2addr v10, v0

    iget v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v7, v10, v12

    move v2, v7

    :goto_8
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    add-int/2addr v10, v7

    if-ge v2, v10, :cond_e

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v12, 0x0

    aput-boolean v12, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    if-gez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v12, v12, v0

    aput-object v12, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_9
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    sub-int/2addr v10, v1

    if-ge v0, v10, :cond_10

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    add-int v13, v0, v1

    aget-object v12, v12, v13

    aput-object v12, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_11

    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v8, v10, v0

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v12, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTempCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    aget-object v12, v12, v0

    aput-object v12, v10, v8

    invoke-direct {p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadCachedPage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    monitor-exit v11

    goto/16 :goto_1

    :cond_12
    iget v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    invoke-virtual {p0, v10, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setCacheStartPos(II)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method pausePrefetch()V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->pausePrefetch()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reloadAllItems()V
    .locals 11

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-gtz v6, :cond_1

    :cond_0
    monitor-exit v7

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    if-nez v6, :cond_2

    new-instance v6, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->IsInit()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v10, -0x1

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    :goto_1
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    mul-int v4, v6, v8

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    add-int/2addr v6, v4

    add-int/lit8 v2, v6, -0x1

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v2, v6, :cond_3

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v2, v6, -0x1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-ge v5, v6, :cond_6

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v8, v5

    add-int v3, v6, v8

    const/4 v0, 0x0

    :goto_3
    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-ge v0, v6, :cond_5

    if-ltz v3, :cond_5

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge v3, v6, :cond_5

    invoke-virtual {p0, v5, v3}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearItem(II)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->free()V

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iget v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    const/4 v10, -0x1

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->initPage(III)V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v6, v1, v8, v9, v10}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method reloadItem(I)V
    .locals 6

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    sub-int v1, p1, v1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    div-int v0, v1, v3

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

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

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->resumePrefetch()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapterPage:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->stopPrefetch()V

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setCacheStartPos(II)V
    .locals 8

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    :cond_0
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v0, -0x1

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->invokeOnItemScrollListener()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->updatePrefetchRange(IIIII)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeAllMessages()V

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_2
    if-gt v6, v2, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mDataReadyListener:Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;

    invoke-virtual {v0, v7, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    return-void
.end method

.method setItemBackgroundColor(I)V
    .locals 2

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemBackbroudColor:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mBKPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemBackbroudColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method setItemSpacingColor(I)V
    .locals 2

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mSpacingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mItemSpacingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method stopPrefetch()V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->stopPrefetch()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeAllMessages()V

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

.method updatePageInfo(Lcom/htc/opensense/widget/HtcGridView2$GridInfo;)V
    .locals 11

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapterPage:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v6, v7

    mul-int v0, v4, v6

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int v1, v4, v6

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    if-eq v4, v1, :cond_1

    :cond_0
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    iput v3, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageWidth:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageHeight:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    mul-int/2addr v4, v6

    iput v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->onPageSizeChanged()V

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    if-eq v4, v6, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iput v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalElements:I

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([ZZ)V

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

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mRectAllPage:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
