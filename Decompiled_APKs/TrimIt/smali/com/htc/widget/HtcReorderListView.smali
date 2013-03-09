.class public Lcom/htc/widget/HtcReorderListView;
.super Lcom/htc/widget/HtcListView;
.source "HtcReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;,
        Lcom/htc/widget/HtcReorderListView$TangentInterpolator;,
        Lcom/htc/widget/HtcReorderListView$WaveRunnable;,
        Lcom/htc/widget/HtcReorderListView$DragWindowMove;,
        Lcom/htc/widget/HtcReorderListView$MovingItem;,
        Lcom/htc/widget/HtcReorderListView$RemoveListener;,
        Lcom/htc/widget/HtcReorderListView$DropListener;,
        Lcom/htc/widget/HtcReorderListView$DragListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final DRAG_MODE_DRAG:I = 0x1

.field protected static final DRAG_MODE_REST:I = 0x0

.field protected static final DRAG_MODE_SCROLL:I = 0x3

.field protected static final DRAG_MODE_WAVE:I = 0x2

.field protected static final INVALID_DRAG_POS:I = -0x2

.field private static final TAG:Ljava/lang/String; = "HtcReorderListView"


# instance fields
.field private mAllItemFocusable:Z

.field private mBoundPaint:Landroid/graphics/Paint;

.field mCacheItemPadding:[I

.field mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragItemCache:Landroid/widget/ImageView;

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field protected mDragMode:I

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragViewWithFrame:Landroid/view/View;

.field private mDraggerId:I

.field private mDraggerId2:I

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mFrameCornerHeight:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLastDragPos:I

.field mLastY:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mUpperBound:I

.field private mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 75
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 86
    const/4 v3, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    .line 99
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 101
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    .line 107
    const/16 v3, 0x32

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    .line 108
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    .line 113
    const v3, 0x202001a

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    .line 114
    const v3, 0x202001b

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId2:I

    .line 119
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 121
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090093

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    .line 122
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const v4, 0x2020146

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, frame:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 124
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mContext:Landroid/content/Context;

    const-string v4, "common_rearrange_frame"

    const v5, 0x20804c6

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, frameRes:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    .end local v1           #frameRes:I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcReorderListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcReorderListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcReorderListView;->moveDragView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcReorderListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcReorderListView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcReorderListView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcReorderListView;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcReorderListView;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcReorderListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/widget/HtcReorderListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcReorderListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    return v0
.end method

.method private adjustScrollBounds()V
    .locals 3

    .prologue
    .line 290
    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    div-int/lit8 v0, v1, 0xa

    .line 291
    .local v0, range:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    .line 292
    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    .line 293
    return-void
.end method

.method private dragView(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 846
    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 847
    .local v0, adjY:I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 848
    .local v1, location:[I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    .line 849
    const/4 v3, 0x1

    aget v3, v1, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 851
    .local v2, topBound:I
    if-ge v0, v2, :cond_0

    .line 852
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 858
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    return-void

    .line 853
    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v0, v3, :cond_1

    .line 854
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 856
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private expandItem()V
    .locals 17

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v12, :cond_5

    .line 362
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v12, v13, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 364
    .local v2, drag:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 365
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 373
    .end local v2           #drag:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-lt v12, v13, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 380
    .local v3, expand:I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    add-int/lit8 v9, v12, -0x1

    .line 382
    .local v9, shrink:I
    :goto_1
    if-ne v9, v3, :cond_4

    .line 455
    .end local v3           #expand:I
    .end local v9           #shrink:I
    :cond_1
    :goto_2
    return-void

    .line 376
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v3, v12, -0x1

    .restart local v3       #expand:I
    goto :goto_0

    .line 380
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    goto :goto_1

    .line 391
    .restart local v9       #shrink:I
    :cond_4
    new-instance v7, Lcom/htc/widget/HtcReorderListView$MovingItem;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9, v3}, Lcom/htc/widget/HtcReorderListView$MovingItem;-><init>(Lcom/htc/widget/HtcReorderListView;II)V

    .line 392
    .local v7, item:Lcom/htc/widget/HtcReorderListView$MovingItem;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v12, v12, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 397
    .end local v3           #expand:I
    .end local v7           #item:Lcom/htc/widget/HtcReorderListView$MovingItem;
    .end local v9           #shrink:I
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int v1, v12, v13

    .line 398
    .local v1, childnum:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_6

    .line 399
    add-int/lit8 v1, v1, -0x1

    .line 406
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 408
    .local v4, firstDrag:Landroid/view/View;
    const/4 v6, 0x0

    .line 409
    .local v6, i:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 410
    .local v11, vv:Landroid/view/View;
    if-eqz v11, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 415
    .local v5, height:I
    const/4 v10, 0x0

    .line 417
    .local v10, visibility:I
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 419
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcReorderListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_9

    .line 421
    :cond_7
    const/4 v10, 0x4

    .line 440
    :cond_8
    :goto_4
    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_c

    const/4 v12, -0x1

    if-ne v1, v12, :cond_c

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 443
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    .line 449
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 450
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 451
    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 408
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 427
    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    .line 429
    :cond_a
    if-ne v6, v1, :cond_b

    .line 430
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-gt v12, v13, :cond_8

    .line 431
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

    .line 433
    :cond_b
    if-nez v6, :cond_8

    const/4 v12, -0x1

    if-ne v1, v12, :cond_8

    .line 434
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_8

    .line 435
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

    .line 445
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5
.end method

.method private forceDrop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 926
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 927
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 928
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 929
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 932
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    .line 935
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    .line 937
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 938
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 939
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 940
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 942
    :cond_1
    return-void
.end method

.method private getItemForPosition(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 248
    move v0, p2

    .line 249
    .local v0, adjY:I
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    if-lt v2, p2, :cond_2

    .line 250
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 258
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v1

    .line 260
    .local v1, pos:I
    if-ltz v1, :cond_3

    if-ltz v0, :cond_3

    .line 261
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v1, v2, :cond_1

    .line 262
    add-int/lit8 v1, v1, 0x1

    .line 283
    :cond_1
    :goto_1
    return v1

    .line 251
    .end local v1           #pos:I
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v2, :cond_0

    .line 255
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    goto :goto_0

    .line 264
    .restart local v1       #pos:I
    :cond_3
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_1

    .line 268
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private moveDragView(I)V
    .locals 3
    .parameter "deltaY"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 866
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    if-gez p2, :cond_0

    .line 229
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v4

    .line 230
    .local v4, pos:I
    if-ltz v4, :cond_0

    .line 244
    .end local v4           #pos:I
    :goto_0
    return v4

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 236
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v1

    .line 237
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 238
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 240
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v4, v5, v3

    goto :goto_0

    .line 237
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 244
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private scrollList(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, speed:I
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p2, v4, :cond_3

    .line 737
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 739
    .local v1, threshold:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 740
    if-le p2, v1, :cond_2

    const/16 v0, 0x18

    .line 755
    .end local v1           #threshold:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 757
    const/16 v3, 0x1e

    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    .line 758
    const/4 v3, 0x1

    .line 760
    :cond_1
    return v3

    .line 740
    .restart local v1       #threshold:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 742
    .end local v1           #threshold:I
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p2, v4, :cond_0

    .line 744
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p2, v4, :cond_4

    const/16 v0, -0x18

    .line 745
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    .line 746
    .local v2, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 751
    const/4 v0, 0x0

    goto :goto_0

    .line 744
    .end local v2           #top:I
    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 806
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 808
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 809
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 810
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 811
    .local v0, listLoc:[I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    .line 812
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    aget v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 813
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 814
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 815
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 816
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 821
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 822
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x2030096

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 824
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const v2, 0x2020145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    .line 825
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 826
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const v2, -0x51000001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 829
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 830
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 833
    iput-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 837
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 838
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_2

    .line 839
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 841
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    return-void

    .line 810
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 875
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 876
    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 880
    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 882
    :cond_2
    return-void
.end method

.method private stopMoving()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1097
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    .line 1100
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    .line 1104
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    .line 1106
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 1107
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 1108
    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 1109
    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 1114
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 12
    .parameter "deletion"

    .prologue
    const/4 v11, 0x0

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 304
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 305
    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v2

    .line 308
    .local v2, position:I
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 309
    .local v5, y:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcReorderListView;->setSelectionFromTop(II)V

    .line 314
    .end local v2           #position:I
    .end local v5           #y:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->layoutChildren()V

    .line 315
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 321
    :goto_1
    if-nez v3, :cond_1

    .line 322
    return-void

    .line 325
    :cond_1
    instance-of v6, v3, Lcom/htc/widget/HtcListItem;

    if-eqz v6, :cond_3

    move-object v4, v3

    .line 326
    check-cast v4, Lcom/htc/widget/HtcListItem;

    .line 327
    .local v4, viewTarget:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v6, v7, :cond_2

    .line 328
    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 329
    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 342
    .end local v4           #viewTarget:Lcom/htc/widget/HtcListItem;
    :cond_2
    :goto_2
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 333
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v6, v7, :cond_4

    .line 334
    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    :cond_4
    iget-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 316
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public OnMyPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 923
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 461
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v7

    .line 462
    .local v7, childcount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 463
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 464
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_1

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 467
    .local v8, height:I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    if-eqz v9, :cond_0

    .line 471
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 476
    .end local v6           #child:Landroid/view/View;
    .end local v8           #height:I
    :cond_2
    return-void
.end method

.method drawBounds(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, -0x1

    const v8, -0xffff01

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getWidth()I

    move-result v7

    .line 543
    .local v7, w:I
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 544
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 546
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 547
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v6, v0, 0x2

    .line 548
    .local v6, bound:I
    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 550
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 553
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    .line 555
    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 556
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    if-nez v0, :cond_0

    .line 1285
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method isRunningExitAnim()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveItems(III)V
    .locals 17
    .parameter "expandIndex"
    .parameter "shrinkIndex"
    .parameter "delta"

    .prologue
    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v6

    .line 986
    .local v6, firstVisible:I
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    const/4 v11, 0x0

    .line 987
    .local v11, shrinkI:I
    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    const/4 v5, 0x0

    .line 989
    .local v5, expandI:I
    :goto_1
    sub-int v13, v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 990
    .local v10, shrink:Landroid/view/View;
    sub-int v13, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 995
    .local v4, expand:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 996
    instance-of v13, v10, Lcom/htc/widget/HtcListItem;

    if-eqz v13, :cond_6

    move-object v13, v10

    .line 997
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    sub-int v13, v13, p3

    if-ltz v13, :cond_4

    move-object v13, v10

    .line 998
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    sub-int v3, v13, p3

    .local v3, bottomSpace:I
    move-object v13, v10

    .line 999
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1010
    .end local v3           #bottomSpace:I
    :goto_2
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    move-object v13, v10

    .line 1011
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v12

    .local v12, topSpace:I
    move-object v13, v10

    .line 1012
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    .line 1013
    .restart local v3       #bottomSpace:I
    sub-int v12, v12, p3

    .line 1014
    add-int v3, v3, p3

    move-object v13, v10

    .line 1015
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1016
    check-cast v10, Lcom/htc/widget/HtcListItem;

    .end local v10           #shrink:Landroid/view/View;
    invoke-virtual {v10, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1040
    .end local v3           #bottomSpace:I
    .end local v12           #topSpace:I
    :cond_0
    :goto_3
    if-eqz v4, :cond_1

    .line 1041
    instance-of v13, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v13, :cond_b

    move-object v13, v4

    .line 1042
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v13, v13, p3

    if-gtz v13, :cond_8

    move-object v13, v4

    .line 1043
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v12, v13, p3

    .restart local v12       #topSpace:I
    move-object v13, v4

    .line 1044
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1055
    .end local v12           #topSpace:I
    :goto_4
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    move-object v13, v4

    .line 1056
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v12

    .restart local v12       #topSpace:I
    move-object v13, v4

    .line 1057
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    .line 1058
    .restart local v3       #bottomSpace:I
    add-int v12, v12, p3

    .line 1059
    sub-int v3, v3, p3

    move-object v13, v4

    .line 1060
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 1061
    check-cast v4, Lcom/htc/widget/HtcListItem;

    .end local v4           #expand:Landroid/view/View;
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 1094
    .end local v3           #bottomSpace:I
    .end local v12           #topSpace:I
    :cond_1
    :goto_5
    return-void

    .end local v5           #expandI:I
    .end local v11           #shrinkI:I
    :cond_2
    move/from16 v11, p2

    .line 986
    goto/16 :goto_0

    .restart local v11       #shrinkI:I
    :cond_3
    move/from16 v5, p1

    .line 987
    goto/16 :goto_1

    .restart local v4       #expand:Landroid/view/View;
    .restart local v5       #expandI:I
    .restart local v10       #shrink:Landroid/view/View;
    :cond_4
    move-object v13, v10

    .line 1001
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    if-lez v13, :cond_5

    move-object v13, v10

    .line 1002
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    sub-int v14, v13, p3

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v12, v14, v13

    .restart local v12       #topSpace:I
    move-object v13, v10

    .line 1003
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    move-object v13, v10

    .line 1004
    check-cast v13, Lcom/htc/widget/HtcListItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_2

    .end local v12           #topSpace:I
    :cond_5
    move-object v13, v10

    .line 1006
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    sub-int v2, v13, p3

    .local v2, TopSpace:I
    move-object v13, v10

    .line 1007
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_2

    .line 1020
    .end local v2           #TopSpace:I
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1021
    .local v9, params:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1022
    .local v7, height:I
    if-gez v7, :cond_7

    .line 1023
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1025
    :cond_7
    sub-int v7, v7, p3

    .line 1026
    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1028
    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    .line 1032
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1033
    .local v8, paddingTop:I
    sub-int v8, v8, p3

    .line 1034
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v10, v13, v8, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .end local v7           #height:I
    .end local v8           #paddingTop:I
    .end local v9           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #shrink:Landroid/view/View;
    :cond_8
    move-object v13, v4

    .line 1046
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    if-gez v13, :cond_9

    move-object v13, v4

    .line 1047
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v14, v13, p3

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v3, v14, v13

    .restart local v3       #bottomSpace:I
    move-object v13, v4

    .line 1048
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    move-object v13, v4

    .line 1049
    check-cast v13, Lcom/htc/widget/HtcListItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_4

    .end local v3           #bottomSpace:I
    :cond_9
    move-object v13, v4

    .line 1051
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v3, v13, p3

    .restart local v3       #bottomSpace:I
    move-object v13, v4

    .line 1052
    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_4

    .line 1062
    .end local v3           #bottomSpace:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 1063
    const/16 v13, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5

    .line 1067
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 1068
    .restart local v9       #params:Landroid/view/ViewGroup$LayoutParams;
    iget v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1069
    .restart local v7       #height:I
    if-gez v7, :cond_c

    .line 1070
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1072
    :cond_c
    add-int v7, v7, p3

    .line 1073
    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1075
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    .line 1079
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1080
    .restart local v8       #paddingTop:I
    add-int v8, v8, p3

    .line 1081
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-virtual {v4, v13, v8, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 1084
    .end local v8           #paddingTop:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 1090
    const/16 v13, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 480
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v1

    .line 481
    .local v1, childcount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v3

    .line 482
    .local v3, first:I
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 537
    :cond_0
    return-void

    .line 485
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 486
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_3

    .line 485
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 490
    .local v4, height:I
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    .line 491
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 492
    const/4 v9, 0x0

    .line 494
    .local v9, r2:Landroid/graphics/Rect;
    const/4 v10, 0x1

    if-eq v4, v10, :cond_2

    .line 498
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    sub-int/2addr v10, v3

    if-ne v5, v10, :cond_6

    .line 499
    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 526
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/high16 v11, -0x100

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 528
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 529
    .local v7, path:Landroid/graphics/Path;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 530
    if-eqz v9, :cond_5

    .line 531
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 533
    :cond_5
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 500
    .end local v7           #path:Landroid/graphics/Path;
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-le v4, v10, :cond_4

    .line 501
    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 502
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v10, :cond_9

    if-nez v5, :cond_9

    .line 504
    instance-of v10, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v10, :cond_7

    move-object v10, v0

    .line 505
    check-cast v10, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v6

    .line 508
    .local v6, paddingTop:I
    :goto_3
    if-eqz v6, :cond_8

    .line 509
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getTopBorderHeight()I

    move-result v10

    add-int/2addr v10, v6

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 512
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v2, v4, v10

    .line 513
    .local v2, extra:I
    if-le v2, v6, :cond_4

    .line 514
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #r2:Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 515
    .restart local v9       #r2:Landroid/graphics/Rect;
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 516
    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v2, v6

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 507
    .end local v2           #extra:I
    .end local v6           #paddingTop:I
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .restart local v6       #paddingTop:I
    goto :goto_3

    .line 519
    :cond_8
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 522
    .end local v6           #paddingTop:I
    :cond_9
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->top:I

    goto :goto_2
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    .line 916
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onFocusLost()V

    .line 917
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 134
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v10, :cond_0

    .line 137
    :cond_0
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v10, :cond_2

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 214
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_3
    :goto_0
    return v8

    .line 141
    :pswitch_0
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mTouchMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v10

    if-nez v10, :cond_3

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 151
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 152
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->pointToPosition(II)I

    move-result v5

    .line 153
    .local v5, itemnum:I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 157
    .local v4, item:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointX:I

    .line 158
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v7, v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mXOffset:I

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v7

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    .line 161
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId2:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, dragger:Landroid/view/View;
    if-nez v1, :cond_4

    .line 164
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_3

    .line 168
    :cond_4
    new-array v2, v12, [I

    fill-array-data v2, :array_0

    .line 169
    .local v2, draggerLoc:[I
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 176
    const/16 v3, 0xa

    .line 177
    .local v3, extand:I
    aget v10, v2, v8

    sub-int/2addr v10, v3

    if-le v6, v10, :cond_2

    aget v10, v2, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    if-ge v6, v10, :cond_2

    .line 179
    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 180
    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 181
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    .line 182
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 184
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    .line 186
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    .line 188
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 189
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    .line 190
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    aput v11, v10, v8

    .line 191
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    aput v10, v8, v9

    .line 192
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    aput v10, v8, v12

    .line 193
    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    aput v11, v8, v10

    .line 195
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->adjustScrollBounds()V

    .line 196
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 197
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 200
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/htc/widget/HtcReorderListView;->startDragging(Landroid/graphics/Bitmap;I)V

    move v8, v9

    .line 208
    goto/16 :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 168
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    .line 729
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onSizeChanged(IIII)V

    .line 730
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x3

    const/4 v8, 0x1

    .line 560
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 561
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 564
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v9, :cond_12

    :cond_1
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-eqz v9, :cond_12

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 566
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 674
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v8

    .line 569
    .restart local v0       #action:I
    :pswitch_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_3

    .line 570
    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    .line 573
    :cond_3
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 574
    .local v1, destLoc:[I
    const/4 v2, 0x0

    .line 575
    .local v2, destView:Landroid/view/View;
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_4

    .line 576
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 581
    :goto_1
    if-eqz v2, :cond_6

    .line 582
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 584
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_5

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    .line 586
    .local v4, distOffset:I
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aget v10, v1, v8

    add-int/2addr v10, v4

    sub-int v3, v9, v10

    .line 587
    .local v3, dist:I
    const-string v9, "HtcReorderListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "distance for dragging window = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDragPos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " destLoc.y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v1, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " window y = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    new-instance v10, Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    invoke-direct {v10, p0, v3}, Lcom/htc/widget/HtcReorderListView$DragWindowMove;-><init>(Lcom/htc/widget/HtcReorderListView;I)V

    iput-object v10, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    .line 591
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 578
    .end local v3           #dist:I
    .end local v4           #distOffset:I
    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 584
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v4, v9, v10

    goto :goto_2

    .line 593
    :cond_6
    const-string v9, "HtcReorderListView"

    const-string v10, "onTouchEvent UP/CANCEL destView = null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    .line 599
    .end local v1           #destLoc:[I
    .end local v2           #destView:Landroid/view/View;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    .line 605
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 606
    const-string v9, "HtcReorderListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouchEvent.MOVE still running exit anim mDragMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 610
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 611
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 613
    .local v7, y:I
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v11, :cond_8

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 617
    :cond_8
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_9

    .line 618
    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    .line 621
    :cond_9
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-lt v9, v8, :cond_2

    .line 623
    invoke-direct {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->dragView(II)V

    .line 625
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-direct {p0, v9, v7}, Lcom/htc/widget/HtcReorderListView;->getItemForPosition(II)I

    move-result v5

    .line 627
    .local v5, itemnum:I
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v7, v9, :cond_a

    const/4 v9, -0x1

    if-ne v5, v9, :cond_a

    .line 628
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v5

    .line 633
    :cond_a
    if-ltz v5, :cond_e

    .line 634
    invoke-virtual {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->updateStateOrScroll(II)V

    .line 636
    if-eqz v0, :cond_b

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-eq v5, v9, :cond_11

    .line 637
    :cond_b
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-eqz v9, :cond_c

    .line 638
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v5}, Lcom/htc/widget/HtcReorderListView$DragListener;->drag(II)V

    .line 642
    :cond_c
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ge v9, v11, :cond_f

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 643
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-gez v9, :cond_d

    .line 647
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 649
    :cond_d
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    .line 650
    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    .line 651
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->expandItem()V

    .line 668
    :cond_e
    :goto_3
    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    goto/16 :goto_0

    .line 652
    :cond_f
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ge v9, v11, :cond_10

    .line 654
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v9, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 655
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    .line 656
    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    .line 660
    :cond_10
    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    .line 662
    :cond_11
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ne v5, v9, :cond_e

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v9, v11, :cond_e

    .line 664
    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    .line 674
    .end local v0           #action:I
    .end local v5           #itemnum:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1278
    new-instance v0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;-><init>(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    .line 1279
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1280
    return-void
.end method

.method public setAllItemFocusable(Z)V
    .locals 0
    .parameter "itemFocusable"

    .prologue
    .line 1273
    iput-boolean p1, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    .line 1274
    return-void
.end method

.method public setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 886
    return-void
.end method

.method public setDraggerId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1291
    iput p1, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    .line 1292
    return-void
.end method

.method public setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 889
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 890
    return-void
.end method

.method public setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V
    .locals 0
    .parameter "l"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 894
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 895
    return-void
.end method

.method shouldScroll(I)Z
    .locals 6
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, speed:I
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p1, v4, :cond_3

    .line 698
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 700
    .local v1, threshold:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 701
    if-le p1, v1, :cond_2

    const/16 v0, 0x18

    .line 716
    .end local v1           #threshold:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 717
    const-string v3, "HtcReorderListView"

    const-string v4, "should scroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v3, 0x1

    .line 720
    :cond_1
    return v3

    .line 701
    .restart local v1       #threshold:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 703
    .end local v1           #threshold:I
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p1, v4, :cond_0

    .line 705
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_4

    const/16 v0, -0x18

    .line 706
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    .line 707
    .local v2, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 712
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    .end local v2           #top:I
    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method unExpand()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 764
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v0

    .line 765
    .local v0, first:I
    const/4 v1, 0x0

    .line 766
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 767
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 768
    return-void

    .line 770
    :cond_0
    instance-of v5, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 771
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 772
    .local v3, targetView:Lcom/htc/widget/HtcListItem;
    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_2

    .line 773
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v5

    if-eq v5, v11, :cond_1

    .line 774
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    rsub-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 775
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 776
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .end local v3           #targetView:Lcom/htc/widget/HtcListItem;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .restart local v3       #targetView:Lcom/htc/widget/HtcListItem;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_1

    .line 779
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    .line 780
    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    .line 781
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 784
    .end local v3           #targetView:Lcom/htc/widget/HtcListItem;
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 785
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_5

    .line 786
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v11, :cond_4

    .line 787
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 788
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 799
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    aget v6, v6, v11

    iget-object v7, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 791
    :cond_5
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_4

    .line 793
    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 794
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method updateStateOrScroll(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 679
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    .line 686
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_2

    .line 693
    :goto_1
    return-void

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_0

    .line 688
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcReorderListView;->scrollList(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1

    .line 691
    :cond_3
    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1
.end method
