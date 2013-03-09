.class public Lcom/htc/opensense/widget/HtcGridView2;
.super Landroid/view/ViewGroup;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/HtcGridView2$1;,
        Lcom/htc/opensense/widget/HtcGridView2$Prefetch;,
        Lcom/htc/opensense/widget/HtcGridView2$PageCache;,
        Lcom/htc/opensense/widget/HtcGridView2$GridInfo;,
        Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;,
        Lcom/htc/opensense/widget/HtcGridView2$FakeView;,
        Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;,
        Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;,
        Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;,
        Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;,
        Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;,
        Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;,
        Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field private static final DISTANCE_BOTTOM_BUFFER:I = 0x4b0

.field private static final DISTANCE_TOP_BUFFER:I = 0x384

.field private static final DISTANCE_TO_GO_BUFFER_1:I = 0x64

.field private static final DISTANCE_TO_GO_BUFFER_2:I = 0x12c

.field private static final DISTANCE_TO_GO_BUFFER_3:I = 0x1f4

.field private static final DURATION_CUT_1:D = 0.1

.field private static final DURATION_CUT_2:D = 0.2

.field private static final DURATION_CUT_3:D = 0.3

.field static final ENABLE_DEBUG:Z = false

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcGridView2"

.field protected static final PAGE_CACGE_SIZE:I = 0xb

.field private static final STATE_PAUSE:I = 0x0

.field private static final STATE_RESUME:I = 0x1


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field private mChildHeight:I

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCounter:J

.field private mCurrentTime:J

.field protected mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<TT;>.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDeviceFPS:I

.field protected mEnableBouncing:Z

.field protected mEnableFakeFocusViewItem:Z

.field protected mEnableScrollOutOfBottom:Z

.field protected mEnableScrollOutOfTop:Z

.field private mFPSBackgroundRect:Landroid/graphics/Rect;

.field private mFPSRectPaint:Landroid/graphics/Paint;

.field private mFPSTextPaint:Landroid/graphics/Paint;

.field private mFPSTextRect:Landroid/graphics/Rect;

.field protected mFakeFocusItemView:Landroid/view/View;

.field protected mFakeViewList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<TT;>.FakeView;>;"
        }
    .end annotation
.end field

.field private mFocusPaint:Landroid/graphics/Paint;

.field protected mFocusStrokeWidth:I

.field protected mFocusedPos:I

.field protected mForceLayout:Z

.field private mFps:J

.field private mFrameCount:I

.field protected mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

.field protected mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<TT;>.GridViewGesture;"
        }
    .end annotation
.end field

.field protected mHorizontalSpacing:I

.field protected mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

.field protected mInLayout:Z

.field private mIsByFrame:Z

.field protected mIsSelectorFocused:Z

.field protected mItemBackbroudColor:I

.field protected mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

.field protected mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

.field protected mItemSpacingColor:I

.field private mLastTime:J

.field protected mListSize:I

.field protected mNumColumns:I

.field protected mOutOfBottom:Z

.field protected mOutOfTop:Z

.field protected mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<TT;>.CheckForKey",
            "LongPress;"
        }
    .end annotation
.end field

.field mPreX:I

.field mPreY:I

.field protected mPreviousFocusRect:Landroid/graphics/Rect;

.field protected mRequestFocusDirection:I

.field protected mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mStatus:I

.field private mTotalFrame:I

.field protected mVerticalSpacing:I

.field protected mViewBounds:Landroid/graphics/Rect;

.field protected mViewHeight:I

.field protected mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewWidth:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusStrokeWidth:I

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-direct {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeFocusItemView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreX:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    const/16 v0, 0x82

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mRequestFocusDirection:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreviousFocusRect:Landroid/graphics/Rect;

    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCurrentTime:J

    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mLastTime:J

    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCounter:J

    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFps:J

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSRectPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSBackgroundRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusPaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionLeftPadding:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionTopPadding:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionRightPadding:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionBottomPadding:I

    const v0, 0x1010071

    invoke-direct {p0, p1, v2, v0}, Lcom/htc/opensense/widget/HtcGridView2;->initGridView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewWidth:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusStrokeWidth:I

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-direct {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeFocusItemView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreX:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    const/16 v0, 0x82

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mRequestFocusDirection:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreviousFocusRect:Landroid/graphics/Rect;

    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCurrentTime:J

    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mLastTime:J

    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCounter:J

    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFps:J

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSRectPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSBackgroundRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusPaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionLeftPadding:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionTopPadding:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionRightPadding:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionBottomPadding:I

    const v0, 0x1010071

    invoke-direct {p0, p1, v2, v0}, Lcom/htc/opensense/widget/HtcGridView2;->initGridView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private CreateFakeView(Landroid/view/View;I)Lcom/htc/opensense/widget/HtcGridView2$FakeView;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<TT;>.FakeView;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v5, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalColumnWidth:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    new-instance v3, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5, p2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Landroid/content/Context;I)V

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    invoke-virtual {v3, v5, v6}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->initPage(II)V

    invoke-virtual {v3, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->measure(II)V

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v7, v7, v5, v6}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->layout(IIII)V

    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->offsetLeftAndRight(I)V

    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->offsetTopAndBottom(I)V

    invoke-virtual {v3, p1}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v3
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/HtcGridView2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    return v0
.end method

.method static synthetic access$1100(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->getBoundaryDuration(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/opensense/widget/HtcGridView2;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/HtcGridView2;->onScrollViewTo(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcGridView2;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/widget/HtcGridView2;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense/widget/HtcGridView2;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstFullVisiblePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/HtcGridView2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isPressed()Z

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/htc/opensense/widget/HtcGridView2;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/htc/opensense/widget/HtcGridView2;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private easingOutResult(FFFFF)F
    .locals 10

    div-float/2addr p2, p5

    mul-float v1, p2, p2

    mul-float v0, v1, p2

    float-to-double v2, p4

    const-wide v4, -0x3ffd333333333333L

    float-to-double v6, v0

    mul-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide v6, 0x4018f5c28f5c28f6L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4013147ae147ae14L

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3feae147ae147ae1L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4005c28f5c28f5c3L

    float-to-double v8, p2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    float-to-double v4, p3

    add-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private getBottomBoundary()I
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int v0, v1, v2

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBoundaryDuration(II)I
    .locals 5

    move v0, p0

    const/16 v1, 0x64

    if-lt v1, p1, :cond_0

    int-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x12c

    if-lt v1, p1, :cond_1

    int-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0

    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method private getFirstFullVisiblePosition()I
    .locals 6

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int v0, v3, v4

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    div-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int v1, v3, v4

    :goto_1
    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_1
    :goto_2
    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    div-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int v1, v3, v4

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v4, v5

    sub-int v1, v3, v4

    goto :goto_2
.end method

.method private getTopBoundary()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private initGridView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x3c

    const/4 v9, 0x1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v7, v8, :cond_4

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    sparse-switch v5, :sswitch_data_0

    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    :goto_1
    sget v7, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mChildHeight:I

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-ne v7, v8, :cond_5

    const v7, -0x656566

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    const v7, -0xd0d0e

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/HtcGridView2;->setBackgroundColor(I)V

    invoke-virtual {p0, v11, v9}, Lcom/htc/opensense/widget/HtcGridView2;->setRoundedCornerEnabled(ZZ)V

    :goto_2
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-nez v7, :cond_0

    new-instance v7, Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    const/16 v8, 0xb

    invoke-direct {v7, p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;-><init>(Lcom/htc/opensense/widget/HtcGridView2;I)V

    iput-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    invoke-virtual {v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setItemBackgroundColor(I)V

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    invoke-virtual {v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setItemSpacingColor(I)V

    :cond_0
    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/HtcGridView2;->setFocusable(Z)V

    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/HtcGridView2;->setFocusableInTouchMode(Z)V

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-nez v7, :cond_1

    new-instance v7, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8, v11}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-boolean v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    invoke-virtual {v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setEnableBouncing(Z)V

    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-nez v7, :cond_2

    new-instance v7, Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lcom/htc/opensense/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/opensense/widget/HtcGridView2;)V

    iput-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    :cond_2
    sget-object v7, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v7, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2;->setHorizontalSpacing(I)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2;->setVerticalSpacing(I)V

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->setNumColumns(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_0

    :sswitch_0
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    :sswitch_1
    const/16 v7, 0x4b

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    :sswitch_2
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    :sswitch_3
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    :sswitch_4
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    :cond_5
    const v7, -0xbbbbbc

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    const/high16 v7, -0x100

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x190 -> :sswitch_3
        0x1e0 -> :sswitch_1
        0x320 -> :sswitch_2
        0x3c0 -> :sswitch_4
    .end sparse-switch
.end method

.method private keyPressed()V
    .locals 7

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isLongClickable()Z

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    if-nez v4, :cond_1

    new-instance v4, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/opensense/widget/HtcGridView2;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method

.method private onScrollViewTo(II)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    invoke-direct {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcGridView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private positionSelector(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private removeFakeView()V
    .locals 4

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->removeAllViewsInLayout()V

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->free()V

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetSelectorState()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    return-void
.end method

.method private scrollViewToY(I)Z
    .locals 12

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    if-ne v0, v1, :cond_8

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_c

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_f

    const/4 p1, 0x0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_3

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result p1

    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setOutOfBoundary(ZIIFF)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v10

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iput p1, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v9

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_7

    if-ne v10, v9, :cond_6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->notifyPositionChange(I)V

    :cond_7
    const/4 v6, 0x1

    :cond_8
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v7

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getVisibleItemCount()I

    move-result v8

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-ge v8, v0, :cond_a

    add-int v0, v7, v8

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    sub-int v8, v0, v7

    :cond_9
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    invoke-virtual {v0, p0, v7, v8, v1}, Lcom/htc/opensense/widget/HtcFastScroller;->onScroll(Lcom/htc/opensense/widget/HtcGridView2;III)V

    const/4 v6, 0x1

    :cond_a
    const/4 v0, 0x1

    if-ne v0, v6, :cond_b

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    :cond_b
    const/4 v0, 0x1

    return v0

    :cond_c
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v3

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v5

    sub-int/2addr v5, p1

    int-to-float v5, v5

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    int-to-float v11, v11

    div-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setOutOfBoundary(ZIIFF)V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_e

    const/4 p1, 0x0

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v3

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v5, p1

    int-to-float v5, v5

    iget v11, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    int-to-float v11, v11

    div-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setOutOfBoundary(ZIIFF)V

    goto/16 :goto_1

    :cond_10
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_11

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result p1

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    goto/16 :goto_1
.end method

.method private setItemSelected(I)Z
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz p1, :cond_0

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt p1, v7, :cond_1

    :cond_0
    iput-boolean v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    move v5, v6

    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottom()I

    move-result v1

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v8, p1, v8

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v9, v9, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v10, v10, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v3, v7, v8

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    add-int v0, v7, v8

    if-le v2, v3, :cond_4

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v8, v3, v2

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    :cond_3
    :goto_1
    iput-boolean v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_4
    if-ge v1, v0, :cond_3

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v8, v0, v1

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    goto :goto_1
.end method

.method private stopScroll()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    :cond_1
    return-void
.end method

.method private updateFakeView(I)V
    .locals 7

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFakeView: mAdapter==null, nPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HtcGridView2"

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFakeView: fakeView==null, nPos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HtcGridView2"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, p1, v6, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFakeView: mAdapter.getView("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")==null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HtcGridView2"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne p0, v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v1, v4, :cond_3

    monitor-exit v5

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->removeAllViewsInLayout()V

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->free()V

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->removeViewInLayout(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/htc/opensense/widget/HtcGridView2;->CreateFakeView(Landroid/view/View;I)Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->computeScrollOffset()Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    if-ne v1, v0, :cond_4

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    const/4 v1, 0x0

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getStartY()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getStartY()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2;->easingOutResult(FFFFF)F

    move-result v0

    float-to-int v8, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getCurrX()I

    move-result v7

    :goto_1
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    sub-int v6, v8, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v0

    if-le v0, v8, :cond_6

    if-nez v6, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_2
    :goto_2
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v8

    :cond_3
    invoke-direct {p0, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2;->onScrollViewTo(II)V

    iput v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreX:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->postInvalidate()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v0

    if-ne v8, v0, :cond_8

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    iput v9, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getCurrY()I

    move-result v8

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getCurrX()I

    move-result v7

    goto :goto_1

    :cond_5
    if-gez v6, :cond_2

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v0

    if-ge v0, v8, :cond_2

    if-nez v6, :cond_7

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_7
    if-lez v6, :cond_2

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    iput v9, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    goto/16 :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    iget-boolean v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v6, v0, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->drawBitmapToPage(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_3
    iget-boolean v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeFakeView()V

    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v6, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->drawPage(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->drawSelector(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v6, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCenterChildPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    return v0
.end method

.method public getCenterView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 13

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v3

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v5

    add-int v6, p1, v3

    if-le v6, v5, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getChildAt: position="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", lp="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", fp="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", index="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "HtcGridView2"

    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-ne v11, v8, :cond_1

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_3

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Null Adapter in getChildAt. getChildCount()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getChildCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object v7, v9

    :goto_0
    return-object v7

    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v6, v11, v12}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v7, v6}, Lcom/htc/opensense/widget/HtcGridView2;->CreateFakeView(Landroid/view/View;I)Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    :cond_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v9

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v2, :cond_2

    if-gez v3, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sub-int v4, v3, v2

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFocusedItemPosition()I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected getItemPos(II)I
    .locals 5

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    add-int v0, v1, v2

    if-ltz v0, :cond_2

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v0, v1, :cond_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getNearItemPos(II)I
    .locals 5

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    add-int v0, v1, v2

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v0, v1, :cond_0

    :cond_3
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getCacheStartPos()I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xb

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;->onScroll(Lcom/htc/opensense/widget/HtcGridView2;III)V

    :cond_0
    return-void
.end method

.method isFullVisibleOnScreen(I)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public notifyDataChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->updateFakeView(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadItem(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeFakeView()V

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setAdapter(Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->Deinit()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeAllViews()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_4

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    :sswitch_3
    if-eqz p3, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    if-eq v1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-ge v2, v3, :cond_6

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-lt v2, v3, :cond_2

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto/16 :goto_1

    :sswitch_3
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto/16 :goto_1

    :cond_8
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int/2addr v3, v4

    if-ne v2, v3, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v2, v3, :cond_a

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto/16 :goto_1

    :cond_a
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto/16 :goto_1

    :sswitch_4
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->keyPressed()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    :sswitch_2
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    :sswitch_3
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isPressed()Z

    move-result v1

    if-ne v8, v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-ne v1, v8, :cond_2

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getCenterView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v7, v0, v1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    int-to-long v4, v7

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;->onItemClick(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)V

    :cond_2
    move v0, v8

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    :cond_0
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-lt v3, v2, :cond_2

    const/4 v2, 0x1

    if-ge v4, v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeFakeView()V

    const/16 v17, 0x0

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingRight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/HtcGridView2;->mChildHeight:I

    invoke-virtual/range {v2 .. v13}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->updateAllInfo(IIIIIIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->resetPosition()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingLeft:I

    add-int v5, v5, p2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingTop:I

    add-int v6, v6, p3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingRight:I

    sub-int v7, p4, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPaddingBottom:I

    sub-int v8, p5, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense/widget/HtcGridView2;->mViewWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalCachedPageWidth:I

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v14}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setBoundary(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    if-le v2, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iput v14, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->updatePageInfo(Lcom/htc/opensense/widget/HtcGridView2$GridInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearPrefetch()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-eqz v2, :cond_e

    const/16 v24, 0x0

    const/16 v27, 0x0

    if-eqz p1, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    move/from16 v27, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int v2, v27, v2

    sub-int v27, v27, v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v5, v27, v5

    mul-int v25, v2, v5

    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v23

    if-lez v27, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v0, v27

    if-ge v0, v2, :cond_b

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    move/from16 v24, v23

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearAllPage()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    new-instance v5, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;-><init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/os/Looper;)V

    iput-object v5, v2, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v20

    const/4 v2, -0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_d

    const/4 v2, -0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_d

    const/16 v19, 0x0

    :goto_5
    sub-int v2, v20, v16

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v19

    if-ge v0, v2, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getChildAt(I)Landroid/view/View;

    add-int v26, v16, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->drawBitmapToPage(Landroid/graphics/Bitmap;I)V

    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    goto/16 :goto_1

    :catch_0
    move-exception v15

    const/16 v17, 0x0

    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    move/from16 v0, v17

    if-gt v0, v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    move/from16 v0, v21

    if-gt v2, v0, :cond_9

    move/from16 v27, v17

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    move/from16 v27, v0

    goto/16 :goto_3

    :cond_a
    move/from16 v24, v25

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    move/from16 v24, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    move/from16 v24, v0

    goto/16 :goto_4

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get null FakeView, position="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", first="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", i="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v2, "HtcGridView2"

    new-instance v5, Ljava/lang/Exception;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v2, v0, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->stopPrefetch()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcFastScroller;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invokeOnItemScrollListener()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v3, p1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mRequestFocusDirection:I

    iput-object p2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreviousFocusRect:Landroid/graphics/Rect;

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v0

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    :cond_2
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :goto_1
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_1
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setPreFetchEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 5

    const/4 v4, 0x0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int v2, p1, v2

    sub-int/2addr p1, v2

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v3, p1, v3

    mul-int v1, v2, v3

    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt p1, v2, :cond_3

    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v2

    if-ge v2, v1, :cond_4

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionBottomPadding:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v1, Lcom/htc/opensense/widget/HtcGridView2;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
