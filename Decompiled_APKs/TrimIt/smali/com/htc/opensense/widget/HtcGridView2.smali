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

.field private static final LOG_DEBUG:Z = true

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
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 276
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 77
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    .line 81
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    .line 83
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewWidth:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    .line 84
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    .line 85
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusStrokeWidth:I

    .line 86
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-direct {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    .line 90
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    .line 91
    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    .line 93
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    .line 94
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    .line 95
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    .line 97
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    .line 98
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    .line 99
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    .line 102
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 103
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    .line 105
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    .line 106
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeFocusItemView:Landroid/view/View;

    .line 109
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 110
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    .line 111
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    .line 116
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    .line 117
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    .line 119
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    .line 120
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    .line 122
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreX:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    .line 123
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    .line 124
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    .line 125
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    .line 129
    const/16 v0, 0x82

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mRequestFocusDirection:I

    .line 130
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreviousFocusRect:Landroid/graphics/Rect;

    .line 133
    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCurrentTime:J

    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mLastTime:J

    .line 134
    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCounter:J

    .line 135
    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFps:J

    .line 136
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextPaint:Landroid/graphics/Paint;

    .line 137
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSRectPaint:Landroid/graphics/Paint;

    .line 138
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextRect:Landroid/graphics/Rect;

    .line 139
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSBackgroundRect:Landroid/graphics/Rect;

    .line 140
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusPaint:Landroid/graphics/Paint;

    .line 146
    iput v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    .line 157
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 167
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionLeftPadding:I

    .line 172
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionTopPadding:I

    .line 177
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionRightPadding:I

    .line 182
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionBottomPadding:I

    .line 277
    const v0, 0x1010071

    invoke-direct {p0, p1, v2, v0}, Lcom/htc/opensense/widget/HtcGridView2;->initGridView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attribute"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    .line 81
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    .line 83
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewWidth:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    .line 84
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    .line 85
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusStrokeWidth:I

    .line 86
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-direct {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    .line 90
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    .line 91
    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    .line 93
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    .line 94
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    .line 95
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    .line 97
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    .line 98
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    .line 99
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    .line 102
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 103
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    .line 105
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    .line 106
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeFocusItemView:Landroid/view/View;

    .line 109
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 110
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    .line 111
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    .line 116
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    .line 117
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    .line 119
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    .line 120
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    .line 122
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreX:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    .line 123
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    .line 124
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    .line 125
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    .line 129
    const/16 v0, 0x82

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mRequestFocusDirection:I

    .line 130
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreviousFocusRect:Landroid/graphics/Rect;

    .line 133
    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCurrentTime:J

    iput-wide v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mLastTime:J

    .line 134
    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mCounter:J

    .line 135
    iput-wide v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFps:J

    .line 136
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextPaint:Landroid/graphics/Paint;

    .line 137
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSRectPaint:Landroid/graphics/Paint;

    .line 138
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSTextRect:Landroid/graphics/Rect;

    .line 139
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFPSBackgroundRect:Landroid/graphics/Rect;

    .line 140
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusPaint:Landroid/graphics/Paint;

    .line 146
    iput v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    .line 157
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 167
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionLeftPadding:I

    .line 172
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionTopPadding:I

    .line 177
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionRightPadding:I

    .line 182
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionBottomPadding:I

    .line 282
    const v0, 0x1010071

    invoke-direct {p0, p1, v2, v0}, Lcom/htc/opensense/widget/HtcGridView2;->initGridView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    return-void
.end method

.method private CreateFakeView(Landroid/view/View;I)Lcom/htc/opensense/widget/HtcGridView2$FakeView;
    .locals 8
    .parameter "child"
    .parameter "nPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<TT;>.FakeView;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v7, 0x0

    .line 1387
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v5, p2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 1389
    .local v4, rc:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1390
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 1391
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1394
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1395
    .local v0, childHeightSpec:I
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalColumnWidth:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1397
    .local v1, childWidthSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1400
    new-instance v3, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5, p2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Landroid/content/Context;I)V

    .line 1401
    .local v3, newFakeView:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    if-eqz v3, :cond_1

    .line 1402
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    invoke-virtual {v3, v5, v6}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->initPage(II)V

    .line 1403
    invoke-virtual {v3, v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->measure(II)V

    .line 1404
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v7, v7, v5, v6}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->layout(IIII)V

    .line 1405
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->offsetLeftAndRight(I)V

    .line 1406
    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->offsetTopAndBottom(I)V

    .line 1408
    invoke-virtual {v3, p1}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->addView(Landroid/view/View;)V

    .line 1410
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2;->addView(Landroid/view/View;)V

    .line 1412
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    :cond_1
    return-object v3
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/HtcGridView2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    return v0
.end method

.method static synthetic access$1100(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->getBoundaryDuration(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/opensense/widget/HtcGridView2;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/HtcGridView2;->onScrollViewTo(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcGridView2;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/widget/HtcGridView2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense/widget/HtcGridView2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/opensense/widget/HtcGridView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstFullVisiblePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/HtcGridView2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v2, 0x1

    .line 1522
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

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1532
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isPressed()Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 1534
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/htc/opensense/widget/HtcGridView2;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1535
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1536
    :cond_2
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/htc/opensense/widget/HtcGridView2;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1539
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private easingOutResult(FFFFF)F
    .locals 10
    .parameter "v0"
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 596
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    div-float/2addr p2, p5

    .line 597
    mul-float v1, p2, p2

    .line 598
    .local v1, ts:F
    mul-float v0, v1, p2

    .line 600
    .local v0, tc:F
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

    .prologue
    .line 1215
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int v0, v1, v2

    .line 1217
    .local v0, nBoundary:I
    if-lez v0, :cond_0

    .line 1220
    .end local v0           #nBoundary:I
    :goto_0
    return v0

    .restart local v0       #nBoundary:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBoundaryDuration(II)I
    .locals 5
    .parameter "nDurationSrc"
    .parameter "nDistanceToGo"

    .prologue
    .line 829
    move v0, p0

    .line 831
    .local v0, nDuration:I
    const/16 v1, 0x64

    if-lt v1, p1, :cond_0

    .line 833
    int-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 845
    :goto_0
    return v0

    .line 835
    :cond_0
    const/16 v1, 0x12c

    if-lt v1, p1, :cond_1

    .line 837
    int-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0

    .line 841
    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method private getFirstFullVisiblePosition()I
    .locals 6

    .prologue
    .line 679
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int v0, v3, v4

    .line 680
    .local v0, nItemHeight:I
    const/4 v1, 0x0

    .line 681
    .local v1, nPos:I
    if-gtz v0, :cond_0

    move v2, v1

    .line 696
    .end local v1           #nPos:I
    .local v2, nPos:I
    :goto_0
    return v2

    .line 684
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_2

    .line 685
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    div-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int v1, v3, v4

    .line 690
    :goto_1
    if-gez v1, :cond_3

    .line 691
    const/4 v1, 0x0

    :cond_1
    :goto_2
    move v2, v1

    .line 696
    .end local v1           #nPos:I
    .restart local v2       #nPos:I
    goto :goto_0

    .line 687
    .end local v2           #nPos:I
    .restart local v1       #nPos:I
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

    .line 692
    :cond_3
    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v1, v3, :cond_1

    .line 693
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

    .prologue
    .line 1225
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method private initGridView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v11, 0x0

    const/16 v10, 0x3c

    const/4 v9, 0x1

    .line 287
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .local v2, dm:Landroid/util/DisplayMetrics;
    move-object v7, p1

    .line 288
    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 289
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v7, v8, :cond_4

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 290
    .local v5, resolution:I
    :goto_0
    sparse-switch v5, :sswitch_data_0

    .line 307
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    .line 312
    :goto_1
    sget v7, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mChildHeight:I

    .line 314
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-ne v7, v8, :cond_5

    .line 315
    const v7, -0x656566

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    .line 316
    const v7, -0xd0d0e

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    .line 319
    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/HtcGridView2;->setBackgroundColor(I)V

    .line 320
    invoke-virtual {p0, v11, v9}, Lcom/htc/opensense/widget/HtcGridView2;->setRoundedCornerEnabled(ZZ)V

    .line 327
    :goto_2
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-nez v7, :cond_0

    .line 328
    new-instance v7, Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    const/16 v8, 0xb

    invoke-direct {v7, p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;-><init>(Lcom/htc/opensense/widget/HtcGridView2;I)V

    iput-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    .line 329
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    invoke-virtual {v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setItemBackgroundColor(I)V

    .line 330
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    invoke-virtual {v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setItemSpacingColor(I)V

    .line 333
    :cond_0
    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/HtcGridView2;->setFocusable(Z)V

    .line 334
    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/HtcGridView2;->setFocusableInTouchMode(Z)V

    .line 360
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-nez v7, :cond_1

    .line 361
    new-instance v7, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8, v11}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    .line 362
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-boolean v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    invoke-virtual {v7, v8}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setEnableBouncing(Z)V

    .line 365
    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-nez v7, :cond_2

    .line 366
    new-instance v7, Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lcom/htc/opensense/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/opensense/widget/HtcGridView2;)V

    iput-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    .line 371
    :cond_2
    sget-object v7, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v7, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 373
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 374
    .local v3, hSpacing:I
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcGridView2;->setHorizontalSpacing(I)V

    .line 376
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 377
    .local v6, vSpacing:I
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2;->setVerticalSpacing(I)V

    .line 379
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 380
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 381
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :cond_3
    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 385
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->setNumColumns(I)V

    .line 387
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    return-void

    .line 289
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #hSpacing:I
    .end local v4           #numColumns:I
    .end local v5           #resolution:I
    .end local v6           #vSpacing:I
    :cond_4
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_0

    .line 292
    .restart local v5       #resolution:I
    :sswitch_0
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    .line 295
    :sswitch_1
    const/16 v7, 0x4b

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    .line 298
    :sswitch_2
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    .line 301
    :sswitch_3
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    .line 304
    :sswitch_4
    iput v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I

    goto/16 :goto_1

    .line 323
    :cond_5
    const v7, -0xbbbbbc

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemBackbroudColor:I

    .line 324
    const/high16 v7, -0x100

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemSpacingColor:I

    goto/16 :goto_2

    .line 290
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

    .prologue
    .line 1677
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1678
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1679
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1681
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isLongClickable()Z

    move-result v1

    .line 1682
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1683
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 1684
    if-eqz v1, :cond_3

    .line 1685
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1690
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1691
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    if-nez v4, :cond_1

    .line 1692
    new-instance v4, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V

    iput-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    .line 1694
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1696
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/HtcGridView2$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/opensense/widget/HtcGridView2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1699
    .end local v1           #longClickable:Z
    :cond_2
    return-void

    .line 1687
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #longClickable:Z
    :cond_3
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method

.method private onScrollViewTo(II)V
    .locals 3
    .parameter "DestX"
    .parameter "DestY"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x0

    .line 587
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 588
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 589
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 591
    invoke-direct {p0, p2}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    .line 592
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    .line 593
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1783
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v6, 0x0

    .line 1785
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)Z

    move-result v6

    .line 1789
    :cond_0
    if-nez v6, :cond_1

    .line 1790
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcGridView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1791
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1793
    :cond_1
    if-eqz v6, :cond_2

    .line 1794
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->performHapticFeedback(I)Z

    .line 1796
    :cond_2
    return v6
.end method

.method private positionSelector(I)V
    .locals 2
    .parameter "nPos"

    .prologue
    .line 1514
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt p1, v1, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    .line 1517
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1518
    .local v0, rc:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private removeFakeView()V
    .locals 7

    .prologue
    .line 1500
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1501
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1503
    .local v0, key:Ljava/lang/Integer;
    const-string v3, "HtcGridView2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeFakeView remove pos="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1504
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    .line 1505
    .local v2, v:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1506
    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->removeAllViewsInLayout()V

    .line 1507
    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->free()V

    .line 1508
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1510
    .end local v0           #key:Ljava/lang/Integer;
    .end local v2           #v:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    :cond_0
    return-void
.end method

.method private resetSelectorState()V
    .locals 1

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x0

    .line 1102
    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    .line 1103
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 1104
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 1105
    return-void
.end method

.method private scrollViewToY(I)Z
    .locals 12
    .parameter "cy"

    .prologue
    .line 1111
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v6, 0x0

    .line 1113
    .local v6, bInvalidate:Z
    const-string v0, "HtcGridView2"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "scrollViewToY() cy = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", mInLayout="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    if-ne v0, v1, :cond_8

    .line 1119
    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    if-ne v0, v1, :cond_d

    .line 1121
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_c

    .line 1123
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result p1

    .line 1140
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    if-ne v0, v1, :cond_10

    .line 1142
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 1144
    const/4 p1, 0x0

    .line 1163
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-nez v0, :cond_5

    .line 1165
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 1166
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result p1

    .line 1168
    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 1169
    const/4 p1, 0x0

    .line 1170
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    .line 1172
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setOutOfBoundary(ZIIFF)V

    .line 1175
    :cond_5
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v10

    .line 1177
    .local v10, oldPos:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iput p1, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    .line 1179
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v9

    .line 1181
    .local v9, newPos:I
    const-string v0, "HtcGridView2"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "oldPos="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", newPos="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", mInLayout="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_7

    if-ne v10, v9, :cond_6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    if-ne v0, v1, :cond_7

    .line 1187
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0, v9}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->notifyPositionChange(I)V

    .line 1190
    :cond_7
    const/4 v6, 0x1

    .line 1193
    .end local v9           #newPos:I
    .end local v10           #oldPos:I
    :cond_8
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v7

    .line 1195
    .local v7, nFirstVisiblePos:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v0, :cond_a

    .line 1196
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getVisibleItemCount()I

    move-result v8

    .line 1197
    .local v8, nVisibleCount:I
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-ge v8, v0, :cond_a

    .line 1198
    add-int v0, v7, v8

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-le v0, v1, :cond_9

    .line 1199
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    sub-int v8, v0, v7

    .line 1202
    :cond_9
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    invoke-virtual {v0, p0, v7, v8, v1}, Lcom/htc/opensense/widget/HtcFastScroller;->onScroll(Lcom/htc/opensense/widget/HtcGridView2;III)V

    .line 1203
    const/4 v6, 0x1

    .line 1207
    .end local v8           #nVisibleCount:I
    :cond_a
    const/4 v0, 0x1

    if-ne v0, v6, :cond_b

    .line 1208
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 1210
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 1127
    .end local v7           #nFirstVisiblePos:I
    :cond_c
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    .line 1130
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

    .line 1133
    :cond_d
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    if-nez v0, :cond_1

    .line 1135
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 1136
    const/4 p1, 0x0

    .line 1137
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfTop:Z

    goto/16 :goto_0

    .line 1148
    :cond_f
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    .line 1151
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

    .line 1155
    :cond_10
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableBouncing:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    if-nez v0, :cond_2

    .line 1157
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    if-le p1, v0, :cond_11

    .line 1158
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result p1

    .line 1159
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mOutOfBottom:Z

    goto/16 :goto_1
.end method

.method private setItemSelected(I)Z
    .locals 11
    .parameter "position"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 555
    const-string v7, "HtcGridView2"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "setItemSelected() "

    aput-object v9, v8, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    if-ltz p1, :cond_0

    iget v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt p1, v7, :cond_1

    .line 557
    :cond_0
    iput-boolean v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    move v5, v6

    .line 583
    :goto_0
    return v5

    .line 561
    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getTop()I

    move-result v2

    .line 566
    .local v2, nGridViewTop:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottom()I

    move-result v1

    .line 567
    .local v1, nGridViewBottom:I
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

    .line 568
    .local v3, t:I
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v8, v8, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    add-int v0, v7, v8

    .line 569
    .local v0, b:I
    if-le v2, v3, :cond_4

    .line 570
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v8, v3, v2

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    .line 575
    :cond_3
    :goto_1
    iput-boolean v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 576
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 577
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    .line 578
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 581
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 582
    .local v4, tempRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 571
    .end local v4           #tempRect:Landroid/graphics/Rect;
    :cond_4
    if-ge v1, v0, :cond_3

    .line 572
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v7, v7, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v8, v0, v1

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    goto :goto_1
.end method

.method private stopScroll()V
    .locals 2

    .prologue
    .line 700
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 701
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    .line 706
    :cond_1
    return-void
.end method

.method private updateFakeView(I)V
    .locals 7
    .parameter "nPos"

    .prologue
    .line 1340
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_0

    .line 1341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFakeView: mAdapter==null, nPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, errMsg:Ljava/lang/String;
    const-string v4, "HtcGridView2"

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1379
    .end local v0           #errMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 1346
    :cond_0
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    monitor-enter v5

    .line 1347
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    .line 1348
    .local v1, fakeView:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    if-nez v1, :cond_1

    .line 1349
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFakeView: fakeView==null, nPos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    .restart local v0       #errMsg:Ljava/lang/String;
    const-string v4, "HtcGridView2"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1352
    monitor-exit v5

    goto :goto_0

    .line 1378
    .end local v0           #errMsg:Ljava/lang/String;
    .end local v1           #fakeView:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1355
    .restart local v1       #fakeView:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, p1, v6, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1357
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_2

    .line 1358
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

    .line 1359
    .restart local v0       #errMsg:Ljava/lang/String;
    const-string v4, "HtcGridView2"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1360
    monitor-exit v5

    goto :goto_0

    .line 1363
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    .line 1365
    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne p0, v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v1, v4, :cond_3

    .line 1366
    monitor-exit v5

    goto :goto_0

    .line 1369
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    .line 1370
    .local v2, fakeview2:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    if-eqz v2, :cond_4

    .line 1371
    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->removeAllViewsInLayout()V

    .line 1372
    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->free()V

    .line 1373
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->removeViewInLayout(Landroid/view/View;)V

    .line 1377
    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/htc/opensense/widget/HtcGridView2;->CreateFakeView(Landroid/view/View;I)Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    .line 1378
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 605
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-nez v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->computeScrollOffset()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 610
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z

    if-ne v1, v0, :cond_4

    .line 612
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    .line 613
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

    .line 614
    .local v8, nextY:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getCurrX()I

    move-result v7

    .line 622
    .local v7, nextX:I
    :goto_1
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    sub-int v6, v8, v0

    .line 626
    .local v6, nDiff:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v0

    if-le v0, v8, :cond_6

    .line 627
    if-nez v6, :cond_5

    .line 628
    add-int/lit8 v8, v8, 0x1

    .line 641
    :cond_2
    :goto_2
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    if-lt v0, v1, :cond_3

    .line 642
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v8

    .line 645
    :cond_3
    invoke-direct {p0, v7, v8}, Lcom/htc/opensense/widget/HtcGridView2;->onScrollViewTo(II)V

    .line 646
    iput v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    .line 647
    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreX:I

    .line 648
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->postInvalidate()V

    .line 650
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v0

    if-ne v8, v0, :cond_8

    .line 651
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 652
    iput v9, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    goto :goto_0

    .line 618
    .end local v6           #nDiff:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getCurrY()I

    move-result v8

    .line 619
    .restart local v8       #nextY:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getCurrX()I

    move-result v7

    .restart local v7       #nextX:I
    goto :goto_1

    .line 629
    .restart local v6       #nDiff:I
    :cond_5
    if-gez v6, :cond_2

    .line 630
    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    goto :goto_2

    .line 633
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getFinalY()I

    move-result v0

    if-ge v0, v8, :cond_2

    .line 634
    if-nez v6, :cond_7

    .line 635
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 636
    :cond_7
    if-lez v6, :cond_2

    .line 637
    iget v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    goto :goto_2

    .line 654
    :cond_8
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I

    if-le v0, v1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 656
    iput v9, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I

    goto/16 :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1779
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v8, 0x1

    .line 1421
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1424
    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-nez v6, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :try_start_1
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-boolean v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    if-ne v8, v6, :cond_3

    .line 1435
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1436
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1437
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1438
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1439
    .local v4, nPos:I
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    .line 1440
    .local v5, v:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    if-eqz v5, :cond_2

    .line 1450
    invoke-virtual {v5}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1451
    .local v0, b:Landroid/graphics/Bitmap;
    const-string v6, "HtcGridView2"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "draw FakeView: nPos="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ", Bitmap="

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v0, v8, v9

    invoke-static {v6, v8}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1452
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v6, v0, v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->drawBitmapToPage(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 1460
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4           #nPos:I
    .end local v5           #v:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1472
    :catch_0
    move-exception v1

    .line 1473
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1457
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-boolean v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    if-nez v6, :cond_4

    .line 1458
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeFakeView()V

    .line 1460
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1462
    :try_start_4
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v6, :cond_5

    .line 1464
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v6, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->drawPage(Landroid/graphics/Canvas;)V

    .line 1467
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1469
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v6, :cond_0

    .line 1470
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v6, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 1

    .prologue
    .line 920
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 921
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 922
    return-void
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 508
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCenterChildPosition()I
    .locals 1

    .prologue
    .line 1254
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    return v0
.end method

.method public getCenterView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1250
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
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
    .locals 14
    .parameter "index"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 1294
    const/4 v7, 0x0

    .line 1296
    .local v7, v:Landroid/view/View;
    :try_start_0
    const-string v8, "HtcGridView2"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "getChildAt index="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1299
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v3

    .line 1300
    .local v3, fp:I
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v5

    .line 1301
    .local v5, lp:I
    add-int v6, p1, v3

    .line 1302
    .local v6, position:I
    if-le v6, v5, :cond_0

    .line 1303
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

    .line 1304
    .local v1, errMsg:Ljava/lang/String;
    const-string v8, "HtcGridView2"

    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1310
    .end local v1           #errMsg:Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1312
    .local v4, key:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1313
    :try_start_1
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-ne v13, v8, :cond_1

    .line 1314
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1316
    :cond_1
    if-nez v7, :cond_3

    .line 1317
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_2

    .line 1318
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

    .line 1326
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

    .line 1330
    .end local v3           #fp:I
    .end local v4           #key:Ljava/lang/Integer;
    .end local v5           #lp:I
    .end local v6           #position:I
    :catch_0
    move-exception v2

    .line 1331
    .local v2, ex:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object v7, v9

    .line 1335
    .end local v2           #ex:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #v:Landroid/view/View;
    :goto_0
    return-object v7

    .line 1320
    .restart local v3       #fp:I
    .restart local v4       #key:Ljava/lang/Integer;
    .restart local v5       #lp:I
    .restart local v6       #position:I
    .restart local v7       #v:Landroid/view/View;
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v6, v11, v12}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1321
    if-eqz v7, :cond_3

    .line 1322
    invoke-direct {p0, v7, v6}, Lcom/htc/opensense/widget/HtcGridView2;->CreateFakeView(Landroid/view/View;I)Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    .line 1323
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    .line 1326
    :cond_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1333
    .end local v3           #fp:I
    .end local v4           #key:Ljava/lang/Integer;
    .end local v5           #lp:I
    .end local v6           #position:I
    :catch_1
    move-exception v0

    .line 1334
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v9

    .line 1335
    goto :goto_0
.end method

.method public getChildCount()I
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x0

    .line 456
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    if-nez v4, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 473
    .local v0, count:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v2

    .line 474
    .local v2, fp:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v3

    .line 476
    .local v3, lp:I
    if-ltz v2, :cond_2

    if-gez v3, :cond_3

    .line 477
    :cond_2
    const/4 v0, 0x0

    .line 483
    :goto_1
    const-string v4, "HtcGridView2"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getChildCount="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ", fp="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ", lp="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, ", total="

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getTotalRowsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    .end local v2           #fp:I
    .end local v3           #lp:I
    :catch_0
    move-exception v1

    .line 486
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fp:I
    .restart local v3       #lp:I
    :cond_3
    sub-int v4, v3, v2

    add-int/lit8 v0, v4, 0x1

    goto :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1807
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 499
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 669
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFocusedItemPosition()I
    .locals 1

    .prologue
    .line 1262
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
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
    .parameter "r"

    .prologue
    .line 1824
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1825
    return-void
.end method

.method protected getItemPos(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1237
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1238
    const/4 v0, -0x1

    .line 1246
    :cond_0
    :goto_0
    return v0

    .line 1241
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

    .line 1243
    .local v0, pos:I
    if-ltz v0, :cond_2

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v0, v1, :cond_0

    .line 1244
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getNearItemPos(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1832
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1833
    const/4 v0, -0x1

    .line 1850
    :cond_0
    :goto_0
    return v0

    .line 1836
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

    .line 1837
    .local v0, pos:I
    if-gez v0, :cond_2

    .line 1838
    const/4 v0, 0x0

    goto :goto_0

    .line 1839
    :cond_2
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v0, v1, :cond_0

    .line 1841
    :cond_3
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt v0, v1, :cond_0

    .line 1842
    add-int/lit8 v0, v0, -0x1

    .line 1843
    if-gtz v0, :cond_3

    .line 1844
    const/4 v0, 0x0

    .line 1845
    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 803
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 813
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    if-eqz v0, :cond_0

    .line 814
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

    .line 816
    :cond_0
    return-void
.end method

.method isFullVisibleOnScreen(I)Z
    .locals 2
    .parameter "nPosition"

    .prologue
    .line 1906
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->getItemRectInScreen(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1908
    .local v0, rc:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public notifyDataChanged(I)V
    .locals 5
    .parameter "position"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1917
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lt p1, v0, :cond_1

    .line 1920
    :cond_0
    const-string v0, "HtcGridView2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataChanged() return, mPageCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :goto_0
    return-void

    .line 1926
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_2

    .line 1928
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->updateFakeView(I)V

    .line 1929
    const-string v0, "HtcGridView2"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "notifyDataChanged() updateFakeView"

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1931
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->reloadItem(I)V

    .line 1932
    const-string v0, "HtcGridView2"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "notifyDataChanged() mPageCache.reloadItem -> "

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v1, 0x0

    .line 887
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 889
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeFakeView()V

    .line 891
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 892
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    .line 894
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 896
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 897
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->Deinit()V

    .line 902
    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    .line 905
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeAllViews()V

    .line 906
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v2, 0x0

    .line 1855
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1857
    if-eqz p1, :cond_4

    .line 1858
    sparse-switch p2, :sswitch_data_0

    .line 1903
    :goto_0
    return-void

    .line 1860
    :sswitch_0
    if-eqz p3, :cond_0

    .line 1861
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1862
    .local v1, y:I
    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 1863
    .local v0, x:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    .line 1898
    .end local v0           #x:I
    .end local v1           #y:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto :goto_0

    .line 1865
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    .line 1869
    :sswitch_1
    if-eqz p3, :cond_1

    .line 1870
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 1871
    .restart local v1       #y:I
    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 1872
    .restart local v0       #x:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    .line 1874
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    .line 1878
    :sswitch_2
    if-eqz p3, :cond_2

    .line 1879
    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1880
    .restart local v1       #y:I
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1881
    .restart local v0       #x:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    .line 1883
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    .line 1887
    :sswitch_3
    if-eqz p3, :cond_3

    .line 1888
    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1889
    .restart local v1       #y:I
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 1890
    .restart local v0       #x:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    .line 1892
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getNearItemPos(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    goto :goto_1

    .line 1900
    :cond_4
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 1901
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto/16 :goto_0

    .line 1858
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
    .parameter "ev"

    .prologue
    .line 876
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 878
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 879
    const/4 v1, 0x1

    .line 882
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v1, 0x1

    .line 1548
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_1

    .line 1549
    const/4 v1, 0x0

    .line 1614
    :cond_0
    :goto_0
    return v1

    .line 1552
    :cond_1
    const/4 v0, 0x0

    .line 1553
    .local v0, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1612
    :cond_2
    :goto_1
    if-eq v1, v0, :cond_0

    .line 1614
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1555
    :sswitch_0
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_3

    .line 1556
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    .line 1557
    :cond_3
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 1558
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    .line 1559
    :cond_4
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    .line 1560
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    .line 1565
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_5

    .line 1566
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    .line 1567
    :cond_5
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-ge v2, v3, :cond_6

    .line 1568
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    .line 1569
    :cond_6
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-lt v2, v3, :cond_2

    .line 1570
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    .line 1575
    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_7

    .line 1576
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto :goto_1

    .line 1578
    :cond_7
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    .line 1581
    goto/16 :goto_1

    .line 1584
    :sswitch_3
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v2, :cond_8

    .line 1585
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto/16 :goto_1

    .line 1586
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

    .line 1588
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1589
    :cond_9
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v2, v3, :cond_a

    .line 1591
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    goto/16 :goto_1

    .line 1593
    :cond_a
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v0

    .line 1595
    goto/16 :goto_1

    .line 1600
    :sswitch_4
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1601
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 1602
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->keyPressed()V

    goto/16 :goto_0

    .line 1553
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
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1620
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v1, :cond_0

    .line 1667
    :goto_0
    return v0

    .line 1624
    :cond_0
    const/4 v6, 0x0

    .line 1625
    .local v6, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1667
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1627
    :sswitch_0
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    .line 1628
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    .line 1633
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    .line 1634
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    .line 1639
    :sswitch_2
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    .line 1640
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    .line 1646
    :sswitch_3
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    if-nez v0, :cond_1

    .line 1647
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setItemSelected(I)Z

    move-result v6

    goto :goto_1

    .line 1652
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

    .line 1654
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 1656
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getCenterView()Landroid/view/View;

    move-result-object v2

    .line 1657
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1658
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v7, v0, v1

    .line 1659
    .local v7, nRowId:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    int-to-long v4, v7

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;->onItemClick(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)V

    .end local v2           #v:Landroid/view/View;
    .end local v7           #nRowId:I
    :cond_2
    move v0, v8

    .line 1662
    goto :goto_0

    .line 1625
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
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 938
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 942
    :cond_0
    sub-int v3, p4, p2

    .line 943
    .local v3, nNewWidth:I
    sub-int v4, p5, p3

    .line 945
    .local v4, nNewHeight:I
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

    .line 946
    :cond_2
    const-string v2, "HtcGridView2"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "onLayout skip because changed="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, " and mForceLayout="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, " or mStatus="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, " nNewWidth="

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, " nNewHeight"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/opensense/album/util/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    :goto_0
    return-void

    .line 954
    :cond_3
    const-string v2, "HtcGridView2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "onLayout start"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    .line 961
    const-string v2, "HtcGridView2"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "onLayout nNewWidth="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ", nNewHeight="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_7

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    .line 969
    :goto_1
    const-string v2, "HtcGridView2"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mListSize="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->removeFakeView()V

    .line 974
    const/16 v17, 0x0

    .line 975
    .local v17, firstVisible:I
    const/16 v21, 0x0

    .line 977
    .local v21, lastVisible:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v17

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 985
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

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->resetPosition()V

    .line 992
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

    .line 993
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense/widget/HtcGridView2;->mViewWidth:I

    .line 994
    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v14

    .line 997
    .local v14, bottomBoundary:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v6, v6, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalCachedPageWidth:I

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v14}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setBoundary(IIII)V

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    if-le v2, v14, :cond_4

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iput v14, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    .line 1002
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2, v5}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->updatePageInfo(Lcom/htc/opensense/widget/HtcGridView2$GridInfo;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearPrefetch()V

    .line 1007
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    if-eqz v2, :cond_e

    .line 1014
    const/16 v24, 0x0

    .line 1016
    .local v24, nCurrentY:I
    const/16 v27, 0x0

    .line 1017
    .local v27, selected:I
    if-eqz p1, :cond_8

    .line 1019
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    move/from16 v27, v0

    .line 1028
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-eqz v2, :cond_5

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int v2, v27, v2

    sub-int v27, v27, v2

    .line 1032
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

    .line 1033
    .local v25, nTargetY:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v23

    .line 1034
    .local v23, nBottomY:I
    if-lez v27, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v0, v27

    if-ge v0, v2, :cond_b

    .line 1035
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 1036
    move/from16 v24, v23

    .line 1050
    .end local v23           #nBottomY:I
    .end local v25           #nTargetY:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    .line 1053
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 1054
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->clearAllPage()V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mUiHandler:Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;

    if-nez v2, :cond_6

    .line 1061
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

    .line 1064
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v16

    .line 1065
    .local v16, first:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v20

    .line 1066
    .local v20, last:I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_d

    const/4 v2, -0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_d

    .line 1068
    const/16 v19, 0x0

    .local v19, i:I
    :goto_5
    sub-int v2, v20, v16

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v19

    if-ge v0, v2, :cond_d

    .line 1070
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->getChildAt(I)Landroid/view/View;

    .line 1073
    add-int v26, v16, v19

    .line 1074
    .local v26, position:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFakeViewList:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense/widget/HtcGridView2$FakeView;

    .line 1075
    .local v18, fv:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    if-eqz v18, :cond_c

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/widget/HtcGridView2$FakeView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->drawBitmapToPage(Landroid/graphics/Bitmap;I)V

    .line 1068
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 967
    .end local v14           #bottomBoundary:I
    .end local v16           #first:I
    .end local v17           #firstVisible:I
    .end local v18           #fv:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    .end local v19           #i:I
    .end local v20           #last:I
    .end local v21           #lastVisible:I
    .end local v24           #nCurrentY:I
    .end local v26           #position:I
    .end local v27           #selected:I
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mListSize:I

    goto/16 :goto_1

    .line 980
    .restart local v17       #firstVisible:I
    .restart local v21       #lastVisible:I
    :catch_0
    move-exception v15

    .line 981
    .local v15, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 982
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1021
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v14       #bottomBoundary:I
    .restart local v24       #nCurrentY:I
    .restart local v27       #selected:I
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

    .line 1022
    move/from16 v27, v17

    goto/16 :goto_3

    .line 1025
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    move/from16 v27, v0

    goto/16 :goto_3

    .line 1039
    .restart local v23       #nBottomY:I
    .restart local v25       #nTargetY:I
    :cond_a
    move/from16 v24, v25

    goto/16 :goto_4

    .line 1043
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    move/from16 v24, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 1046
    .end local v23           #nBottomY:I
    .end local v25           #nTargetY:I
    :catch_1
    move-exception v15

    .line 1047
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    move/from16 v24, v0

    goto/16 :goto_4

    .line 1079
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #first:I
    .restart local v18       #fv:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    .restart local v19       #i:I
    .restart local v20       #last:I
    .restart local v26       #position:I
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

    .line 1080
    .local v22, msg:Ljava/lang/String;
    const-string v2, "HtcGridView2"

    new-instance v5, Ljava/lang/Exception;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-static {v2, v0, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1090
    .end local v18           #fv:Lcom/htc/opensense/widget/HtcGridView2$FakeView;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.FakeView;"
    .end local v19           #i:I
    .end local v22           #msg:Ljava/lang/String;
    .end local v26           #position:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    .line 1096
    .end local v16           #first:I
    .end local v20           #last:I
    .end local v24           #nCurrentY:I
    .end local v27           #selected:I
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 1097
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    .line 1098
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 925
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    .line 926
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->stopPrefetch()V

    .line 927
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x1

    .line 930
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mStatus:I

    .line 932
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 933
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    .line 934
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 910
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 911
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 914
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v2, 0x1

    .line 852
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    if-eqz v3, :cond_1

    .line 853
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHtcFastScroller:Lcom/htc/opensense/widget/HtcFastScroller;

    invoke-virtual {v3, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 854
    .local v1, intercepted:Z
    if-eqz v1, :cond_1

    .line 855
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invokeOnItemScrollListener()V

    .line 871
    .end local v1           #intercepted:Z
    :cond_0
    :goto_0
    return v2

    .line 862
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-nez v3, :cond_2

    .line 863
    const/4 v2, 0x0

    goto :goto_0

    .line 866
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v3, p1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 867
    .local v0, bRes:Z
    if-nez v0, :cond_0

    .line 871
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1812
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1813
    :cond_0
    const/4 v0, 0x0

    .line 1819
    :goto_0
    return v0

    .line 1816
    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mRequestFocusDirection:I

    .line 1817
    iput-object p2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPreviousFocusRect:Landroid/graphics/Rect;

    .line 1819
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    .line 427
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 429
    iput-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    .line 433
    :cond_2
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    .line 436
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 439
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    if-nez v0, :cond_3

    .line 440
    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;-><init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mDataSetObserver:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 448
    :goto_1
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 449
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    goto :goto_0

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->setAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_1
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 719
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    if-eq v0, p1, :cond_0

    .line 720
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mHorizontalSpacing:I

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 722
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    .line 724
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 5
    .parameter "numColumns"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v4, 0x1

    .line 752
    const-string v0, "HtcGridView2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setNumColumns() "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    if-lez p1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 754
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mNumColumns:I

    .line 755
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 756
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    .line 758
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 397
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    .line 398
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 407
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mItemLongClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemLongClickListener;

    .line 408
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;)V
    .locals 0
    .parameter "scrollListener"

    .prologue
    .line 766
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    .line 768
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invokeOnItemScrollListener()V

    .line 769
    return-void
.end method

.method public setPreFetchEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1271
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_1

    .line 1272
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->isFling()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 1276
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mInLayout:Z

    if-nez v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    .line 1283
    :cond_1
    :goto_0
    return-void

    .line 1280
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 5
    .parameter "position"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v4, 0x0

    .line 519
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    .line 521
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-nez v2, :cond_0

    .line 546
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int v2, p1, v2

    sub-int/2addr p1, v2

    .line 526
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    .line 527
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_stop()V

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    .line 530
    .local v0, nCurrentY:I
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int v3, p1, v3

    mul-int v1, v2, v3

    .line 532
    .local v1, nTargetY:I
    if-ltz p1, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt p1, v2, :cond_3

    .line 540
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 541
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 542
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V

    .line 543
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 545
    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->scrollViewToY(I)Z

    goto :goto_0

    .line 534
    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v2

    if-ge v2, v1, :cond_4

    .line 535
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I

    move-result v0

    goto :goto_1

    .line 537
    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 777
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 778
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 781
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 783
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 786
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 787
    .local v0, padding:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 788
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionLeftPadding:I

    .line 789
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionTopPadding:I

    .line 790
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionRightPadding:I

    .line 791
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelectionBottomPadding:I

    .line 792
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 793
    sget-object v1, Lcom/htc/opensense/widget/HtcGridView2;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 794
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 736
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    .line 737
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    if-eq v0, p1, :cond_0

    .line 738
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2;->mVerticalSpacing:I

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 740
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    .line 742
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 1802
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 808
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>;"
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
