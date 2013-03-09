.class public Lcom/htc/sunny2/widget/gridview/GridView;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "GridView.java"

# interfaces
.implements Lcom/htc/sunny2/view/GestureDetector$OnGestureListener;
.implements Lcom/htc/sunny2/view/ISViewDataChangeHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;,
        Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;,
        Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;,
        Lcom/htc/sunny2/widget/gridview/GridView$Cell;,
        Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;,
        Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;,
        Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;,
        Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field private static final INVALID_SCREEN_POSITION:F = 3.4028235E38f

.field private static final RESET_SCROLL_SPEED:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mCellRecycler:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildNodeCount:I

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentHighlightIdx:I

.field protected mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

.field private mDoNotResetPreparatorFlag:Z

.field protected mExtraPaddingLeft:I

.field private mFastScrollerRenderRequestAction:Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

.field private mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

.field protected mFirstIdx:I

.field mFirstIndexPositionY:I

.field private mGLViewHeight:I

.field private mGLViewWidth:I

.field private mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

.field private mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

.field private mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

.field protected mHorizontalSpacing:I

.field private mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

.field private mInLayout:Z

.field protected mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

.field protected mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

.field protected mLastIdx:I

.field private mLastScrollState:I

.field protected mListItemCount:I

.field private final mLock:Ljava/lang/Object;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;

.field private mNewHorizontalSpacing:I

.field private mNewListItemCount:I

.field private mNewMediaList:Lcom/htc/sunny2/IMediaList;

.field private mNewNumColumn:I

.field private mNewVerticalSpacing:I

.field protected mNumColumn:I

.field protected mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mOnScreenItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

.field private mPaddingChanged:Z

.field private mRefreshMediaList:Z

.field private mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mResurrectToIdx:I

.field protected mRootNode:Lcom/htc/sunny2/SceneNode;

.field private mScrollCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;",
            "Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedHighlightEnabled:Z

.field private mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

.field protected mSelectedIdx:I

.field private mStatusBarHeight:I

.field private mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

.field private mTouchDownInFling:Z

.field protected mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/GridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    const-class v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mStatusBarHeight:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    iput-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$1;

    const-string v1, "SelectedHighlightStateChange"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$1;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerRenderRequestAction:Lcom/htc/sunny2/widget/gridview/GridView$HtcFastScrollerRenderRequestAction;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIndexPositionY:I

    invoke-direct {p0, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->init(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/GridView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/RenderThreadHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView;->measureChild(Lcom/htc/sunny2/view/SView;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/GridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/widget/gridview/GridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    return v0
.end method

.method private columnBestFit()Z
    .locals 15

    const v14, 0x7f7fffff

    const/4 v13, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v3, :cond_5

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    const/4 v9, 0x0

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    const/4 v8, -0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v5}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v10

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    iget-object v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v3, v14, v14, v6}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-ge v10, v13, :cond_1

    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mContext: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "GridViewItem with illegal width="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v10

    add-int/2addr v4, v3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    shr-int/lit8 v6, v10, 0x2

    add-int/2addr v3, v6

    if-le v4, v3, :cond_6

    move v8, v2

    if-gez v8, :cond_2

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    :cond_2
    if-le v13, v8, :cond_3

    const/4 v8, 0x1

    :cond_3
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v8, v3, :cond_4

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    const/4 v7, 0x1

    :cond_4
    if-le v8, v13, :cond_5

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    sub-int v3, v11, v3

    iget v6, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v9

    add-int/lit8 v6, v8, -0x1

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    mul-int/2addr v6, v12

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    if-gez v3, :cond_5

    iput v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    :cond_5
    return v7

    :cond_6
    add-int/2addr v9, v10

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private dispatchUnpress(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setPressed(Z)V

    return-void
.end method

.method private doBounceBack()V
    .locals 7

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v5, v5

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v4, v4

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v3, v4, v5

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_1
    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    neg-int v5, v5

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    neg-int v4, v4

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    sub-int v0, v4, v5

    :cond_3
    :goto_2
    if-gez v0, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_4

    move v0, v3

    :cond_4
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v5, "GridFlingingAction"

    invoke-virtual {v4, p0, v5}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v4, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->flingByDistance(I)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v5, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v6, "gridBouncingAction"

    invoke-direct {v5, p0, p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    goto/16 :goto_0

    :cond_6
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v5, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v4, v5, v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v5, v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v4, v5, v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_2
.end method

.method private fillUp()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int v2, v3, v4

    :goto_0
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    if-gez v3, :cond_2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    if-gez v2, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int v1, v3, v4

    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-lt p1, v2, :cond_1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le p1, v2, :cond_2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-direct {v0, p0, p0}, Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;->LEFT_TOP:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$2;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/widget/gridview/GridView$2;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z

    return-void
.end method

.method private performLongPress(Lcom/htc/sunny2/view/SView;II)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;->onItemLongClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    int-to-long v2, p3

    invoke-virtual {p0, p2, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v2, p0}, Lcom/htc/sunny2/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->performHapticFeedback(I)Z

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private pinToBottom()V
    .locals 5

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v3, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v4

    sub-int v0, v3, v4

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    sub-int v2, v3, v4

    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(I)V

    :cond_0
    return-void
.end method

.method private pinToTop()V
    .locals 6

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v3, v4, 0x0

    if-eq v2, v3, :cond_0

    add-int/lit8 v4, v2, 0x0

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    add-int v1, v4, v5

    neg-int v4, v1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollMotionIRT(I)V

    :cond_0
    return-void
.end method

.method private pointToCell(II)Lcom/htc/sunny2/widget/gridview/GridView$Cell;
    .locals 9

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v7

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    if-gt v6, p2, :cond_2

    if-gt p2, v0, :cond_2

    if-gt v4, p1, :cond_2

    if-le p1, v5, :cond_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v7

    goto :goto_0
.end method

.method private stopFlingIRT()V
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v3, "GridFlingingAction"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v3, "gridBouncingAction"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Lcom/htc/sunny2/view/SView;Z)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkSetMediaListComplete_block()V
    .locals 4

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method createContextMenuInfo(IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;-><init>(IJ)V

    return-object v0
.end method

.method public createResource()V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->createResource()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v3, p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v3, v7, v4, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThread;->pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    if-nez v3, :cond_1

    new-instance v3, Lcom/htc/sunny2/view/GestureDetector;

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v3, v4, p0, v5}, Lcom/htc/sunny2/view/GestureDetector;-><init>(Landroid/content/Context;Lcom/htc/sunny2/view/GestureDetector$OnGestureListener;Lcom/htc/sunny2/RenderThread;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    new-instance v3, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/SceneNode;)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->values()[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    move-result-object v3

    array-length v0, v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->values()[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoThumbnail][createResource]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    iget-object v3, v2, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v4, v2, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GridView][enableScrollingCache]: enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$1;)V

    iput-object p1, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected fillDown()V
    .locals 7

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int v0, v4, v5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v4, v4

    if-le v0, v4, :cond_2

    if-ge v3, v2, :cond_2

    if-lt v3, v2, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int v0, v4, v5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public freeInvisibleResource()V
    .locals 3

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "freeInvisibleResource()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/gridview/GridView$5;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public freeResource()V
    .locals 11

    const v10, 0x7f7fffff

    const/4 v9, 0x0

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->values()[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    move-result-object v6

    array-length v3, v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-le v3, v4, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->values()[Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][GridView][freeResource]: clear cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v7, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6}, Lcom/htc/sunny2/Sprite;->release()V

    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->release()V

    :cond_0
    sget-object v6, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->UNKNOWN:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    iput-object v6, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    iput-object v9, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    iput-object v9, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    iput-object v9, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v9, v5, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->release()V

    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->destroy(Lcom/htc/sunny2/SceneNode;)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v6}, Lcom/htc/sunny2/SceneNode;->release()V

    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/GestureDetector;->release()V

    :cond_4
    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/RenderThread;->removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->deInit()V

    iput-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_7

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_1
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v6, :cond_6

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v10, v10, v7}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const v6, 0x7fffffff

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->clear()V

    :cond_9
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v6}, Lcom/htc/sunny2/SceneNode;->release()V

    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->freeResource()V

    return-void
.end method

.method public bridge synthetic getChild(I)Lcom/htc/sunny2/SceneNode;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/htc/sunny2/view/SView;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    goto :goto_0
.end method

.method public getChildrenCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getFirstIndexPostion()I
    .locals 4

    const v0, 0x7fffffff

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    goto :goto_0
.end method

.method public getGridViewItem(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    return-object v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_0
.end method

.method public getMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method public getNumColumn()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 3

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSunnyEnvironment()I
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method public getViewItemCount()I
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasChild()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invokeOnItemScrollListener()V
    .locals 7

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    invoke-interface {v3, p0, v0, v2, v1}, Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;->onScrollIRT(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    :cond_1
    return-void
.end method

.method protected makeItemRow(IIIZ)I
    .locals 12

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v7, 0x0

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    move v2, p1

    const/4 v9, 0x0

    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-ge v9, v3, :cond_4

    if-ge v2, v10, :cond_4

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->link(ILcom/htc/sunny2/IMediaData;III)V

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v11

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v11

    add-int/2addr p2, v3

    if-ge v7, v8, :cond_1

    move v7, v8

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ge v2, v3, :cond_2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :cond_2
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-le v2, v3, :cond_3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    sub-int v3, p3, v7

    return v3

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public notifyMediaDataChange()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyMediaDataChange(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    return-void
.end method

.method public notifyMediaDataInvalidate()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    :cond_0
    return-void
.end method

.method public notifyMediaDataInvalidate(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mDataSetInvalidate:Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->sendEmptyMessage(I)V

    :cond_0
    return-void
.end method

.method public notifyPreparatorMediaDataChange(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    return-void
.end method

.method public notifyPreparatorMediaDataChange(II)V
    .locals 3

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridView$7;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;II)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public notifyThumbnailTextureReadyIRT(I)V
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getGridViewItemLock(I)Lcom/htc/sunny2/widget/gridview/GridViewItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    :cond_0
    return-void
.end method

.method protected onAnimationCancel()V
    .locals 0

    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->onAnimationCancel()V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    invoke-super {p0}, Lcom/htc/sunny2/view/SViewGroup;->onAnimationEnd()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v1

    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v1, v2, :cond_1

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->stopFlingIRT()V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchDown(I)V

    return v3

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToCell(II)Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v3, "gridBouncingAction"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    neg-float v3, p4

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onFling(F)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v3, "GridFlingingAction"

    invoke-virtual {v2, p0, v3}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v3, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;

    const-string v4, "GridFlingingAction"

    invoke-direct {v3, p0, p0, v4}, Lcom/htc/sunny2/widget/gridview/GridView$GridFlingingAction;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZFFFII)V
    .locals 23

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewWidth:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    const/4 v2, 0x1

    move/from16 v0, p5

    if-lt v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p6

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SViewGroup;->onLayout(ZFFFII)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->stopFlingIRT()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    const v18, 0x7fffffff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v13, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    iget-object v2, v10, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const v3, 0x7f7fffff

    const v4, 0x7f7fffff

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v2, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    if-ne v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_8

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mDoNotResetPreparatorFlag:Z

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    const/4 v4, 0x1

    if-ge v2, v4, :cond_10

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v2, :cond_a

    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;I)V

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->unbind(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    if-eq v2, v4, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    if-eq v2, v4, :cond_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->refresh(ILcom/htc/sunny2/IMediaList;I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRefreshMediaList:Z

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    if-eq v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    const/high16 v4, -0x8000

    if-eq v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    const/high16 v2, -0x8000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    if-eq v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    const/high16 v4, -0x8000

    if-eq v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mVerticalSpacing:I

    const/high16 v2, -0x8000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    if-eq v2, v4, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    const/high16 v4, -0x8000

    if-eq v2, v4, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    const/high16 v2, -0x8000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->columnBestFit()Z

    move-result v14

    const/4 v2, 0x1

    if-ne v2, v14, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    :cond_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    if-ne v2, v4, :cond_15

    const v18, 0x7fffffff

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    :cond_15
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    if-eq v2, v4, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-gez v2, :cond_16

    if-ltz v17, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_21

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    :cond_16
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-lez v2, :cond_22

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIndexPositionY:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIndexPositionY:I

    move/from16 v18, v0

    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIndexPositionY:I

    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int/2addr v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    :goto_8
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    move/from16 v0, p5

    neg-int v3, v0

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p6, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v11, v2, 0x0

    const v2, 0x7fffffff

    move/from16 v0, v18

    if-eq v0, v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_19

    move/from16 v0, v18

    if-ge v0, v11, :cond_18

    if-eqz v17, :cond_19

    :cond_18
    move/from16 v11, v18

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int v11, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v2, v3, :cond_1a

    move/from16 v0, p6

    neg-int v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v2, v3

    if-gt v11, v2, :cond_19

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-ge v2, v3, :cond_1b

    move/from16 v0, p6

    neg-int v2, v0

    if-le v11, v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->makeItemRow(IIIZ)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int v11, v2, v3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-eqz v16, :cond_1c

    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v0, p6

    neg-int v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToBottom()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-eqz v12, :cond_1c

    iget v2, v12, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    rsub-int/lit8 v3, v3, 0x0

    if-ge v2, v3, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->pinToTop()V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_1d

    const/4 v2, 0x1

    if-ne v2, v9, :cond_1e

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    :cond_1e
    const/4 v2, 0x1

    if-ne v2, v9, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v21, 0x12c

    add-long v6, v6, v21

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->loadRange(IIIJ)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setColumnNumber(I)V

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resetDecodeDirection()V

    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    goto/16 :goto_0

    :cond_21
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto/16 :goto_6

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    goto/16 :goto_7

    :cond_23
    const/4 v15, -0x1

    if-ltz v17, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_24

    move/from16 v15, v17

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    rem-int v2, v15, v2

    sub-int v2, v15, v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8

    :cond_24
    const/4 v15, 0x0

    goto :goto_9
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToPosition(II)I

    move-result v1

    const/4 v2, -0x1

    if-ge v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v3, v1, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->performLongPress(Lcom/htc/sunny2/view/SView;II)Z

    goto :goto_0
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->onRenderOrderChanged(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_0
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchMove(I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v0

    sget-object v1, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "Panning"

    invoke-virtual {v0, p0, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridPanningAction:Lcom/htc/sunny2/widget/gridview/GridView$GridPanningAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->onTouchUp(I)V

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->doBounceBack()V

    return-void
.end method

.method protected onScrollMotionIRT(I)V
    .locals 14

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    if-eqz v7, :cond_0

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ltz v10, :cond_0

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v11, 0x7fffffff

    if-eq v10, v11, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v6, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_1
    if-gt v2, v6, :cond_5

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getHeight()I

    move-result v9

    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    add-int/2addr v10, p1

    iput v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    const v10, 0x7f7fffff

    const v11, 0x7f7fffff

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v12}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-gt v10, v2, :cond_2

    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_4

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->unlink()V

    const v10, 0x7f7fffff

    const v11, 0x7f7fffff

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v12}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-lt v10, v2, :cond_2

    add-int/lit8 v10, v2, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    goto :goto_2

    :cond_4
    iget v10, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    div-int/lit8 v11, v8, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v12}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPosition(FFF)V

    goto :goto_2

    :cond_5
    if-gez p1, :cond_b

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillUp()V

    :cond_6
    :goto_3
    const/4 v10, -0x1

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    if-eq v10, v11, :cond_7

    iget-boolean v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mInLayout:Z

    if-nez v10, :cond_7

    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    :cond_7
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v10

    sget-object v11, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v10, v11, :cond_c

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    :cond_8
    :goto_4
    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-ne v5, v10, :cond_9

    iget v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-eq v4, v10, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->invokeOnItemScrollListener()V

    :cond_a
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    iget v11, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v12, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    invoke-virtual {v10, p0, v11, v12, v13}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v10, :cond_0

    int-to-float v10, p1

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v10, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    goto/16 :goto_0

    :cond_b
    if-lez p1, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->fillDown()V

    goto :goto_3

    :cond_c
    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v10

    sget-object v11, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v10, v11, :cond_8

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    goto :goto_4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->pointToPosition(II)I

    move-result v3

    sget-object v0, Lcom/htc/sunny2/widget/gridview/GridView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onSingleTapUpIRT at onScreenIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ge v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mTouchDownInFling:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedIdx:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    iget-object v2, v6, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNumColumn:I

    div-int v1, v3, v1

    int-to-long v4, v1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;->onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setSectionsDirty()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mHtcFastScroller:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->onScrollEnd(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    sget-object v3, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;

    move-result-object v4

    if-eq v3, v4, :cond_4

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->reportScrollStateChange(I)V

    :cond_4
    invoke-direct {p0, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V

    :cond_5
    if-eq v0, v2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 9

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    move v3, v7

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_1
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v3, v8, :cond_3

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v4, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iget v8, v1, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    rsub-int/lit8 v6, v8, 0x0

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->width()I

    move-result v8

    add-int v5, v4, v8

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v8

    add-int v0, v6, v8

    if-gt v6, p2, :cond_2

    if-gt p2, v0, :cond_2

    if-gt v4, p1, :cond_2

    if-le p1, v5, :cond_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_0
.end method

.method public postDisplayScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;ZLcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mIsVisible:Z

    iput-object p3, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$3;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView$3;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mScrollCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridView$4;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView$4;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in GridView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportScrollStateChange(I)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastScrollState:I

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setDecodeDirection(I)V

    :cond_1
    return-void
.end method

.method public resumePreparator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->resumePreparator()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->pausePreparator()V

    goto :goto_0
.end method

.method public setGridViewItem(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewHorizontalSpacing:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewListItemCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    return-void
.end method

.method public setNumColumn(I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Column number less than 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewNumColumn:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mItemLongClickCallback:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScrollListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;->onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mPaddingChanged:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridView$6;

    const-string v1, "setPreparation"

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/htc/sunny2/widget/gridview/GridView$6;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$6;->onProcessEventIRT()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlight(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I

    const/4 v0, 0x1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelectedHighlightEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightStateChange:Lcom/htc/sunny2/RenderThreadEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(II)V

    return-void
.end method

.method public setSelection(II)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mResurrectToIdx:I

    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIndexPositionY:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setStatusBarHeight(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mStatusBarHeight:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mStatusBarHeight:I

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView;->mNewVerticalSpacing:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    return-void
.end method

.method protected startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridView;->stopFlingIRT()V

    invoke-super {p0, p1}, Lcom/htc/sunny2/view/SViewGroup;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    return-void
.end method
