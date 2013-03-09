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
.field private isLowerAlpha:Z

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
    .locals 10

    const v9, 0x20804c6

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v8, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    const/4 v6, 0x4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    const/16 v6, 0x32

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const v6, 0x202001a

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    const v6, 0x202001b

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId2:I

    iput-boolean v8, p0, Lcom/htc/widget/HtcReorderListView;->isLowerAlpha:Z

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x2090093

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const v7, 0x2020146

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v7, "common_rearrange_frame"

    invoke-static {v6, v7, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20804c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205017d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    if-eqz v5, :cond_0

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v7, v4, v5

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcReorderListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcReorderListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcReorderListView;->moveDragView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcReorderListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcReorderListView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcReorderListView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcReorderListView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget/HtcReorderListView;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcReorderListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcReorderListView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/widget/HtcReorderListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcReorderListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    return v0
.end method

.method private adjustScrollBounds()V
    .locals 3

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    div-int/lit8 v0, v1, 0xa

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    return-void
.end method

.method private dragView(II)V
    .locals 6

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    const/4 v3, 0x2

    new-array v1, v3, [I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v3, v1, v3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private expandItem()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-lt v12, v13, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    add-int/lit8 v9, v12, -0x1

    :goto_1
    if-ne v9, v3, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v3, v12, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/htc/widget/HtcReorderListView$MovingItem;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9, v3}, Lcom/htc/widget/HtcReorderListView$MovingItem;-><init>(Lcom/htc/widget/HtcReorderListView;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v12, v12, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int v1, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v12, v13, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    const/4 v10, 0x0

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

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

    :cond_7
    const/4 v10, 0x4

    :cond_8
    :goto_4
    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_c

    const/4 v12, -0x1

    if-ne v1, v12, :cond_c

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

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    if-ne v6, v1, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-gt v12, v13, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

    :cond_b
    if-nez v6, :cond_8

    const/4 v12, -0x1

    if-ne v1, v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    add-int/lit8 v5, v12, -0x1

    goto :goto_4

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

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    :cond_1
    return-void
.end method

.method private getItemForPosition(II)I
    .locals 4

    move v0, p2

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    if-lt v2, p2, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v1

    if-ltz v1, :cond_3

    if-ltz v0, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private moveDragView(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6

    if-gez p2, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/htc/widget/HtcReorderListView;->myPointToPosition(II)I

    move-result v4

    if-ltz v4, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v4, v5, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private scrollList(II)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p2, v4, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    if-le p2, v1, :cond_2

    const/16 v0, 0x18

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    const/16 v3, 0x1e

    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p2, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p2, v4, :cond_4

    const/16 v0, -0x18

    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    aget v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x2030096

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    const v2, 0x2020145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/htc/widget/HtcReorderListView;->isLowerAlpha:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const v2, -0x51000001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    const v2, -0x19000001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopDragging()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragViewWithFrame:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragItemCache:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private stopMoving()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->stopDragging()V

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/widget/HtcReorderListView$DropListener;->drop(II)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcReorderListView;->unExpandViews(Z)V

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iput v3, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    iput v4, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    return-void
.end method

.method private unExpandViews(Z)V
    .locals 12

    const/4 v11, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcReorderListView;->setSelectionFromTop(II)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->layoutChildren()V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    return-void

    :cond_1
    instance-of v6, v3, Lcom/htc/widget/HtcListItem;

    if-eqz v6, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v6, v7, :cond_2

    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    invoke-virtual {v4, v11}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    :cond_2
    :goto_2
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public OnMyPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v9, :cond_0

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

    :cond_2
    return-void
.end method

.method drawBounds(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, -0x1

    const v8, -0xffff01

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v6, v0, 0x2

    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    iget v2, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    add-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    int-to-float v2, v6

    int-to-float v3, v7

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

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

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v6

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    const/4 v11, 0x0

    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    const/4 v5, 0x0

    :goto_1
    sub-int v13, v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sub-int v13, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v10, :cond_0

    instance-of v13, v10, Lcom/htc/widget/HtcListItem;

    if-eqz v13, :cond_6

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    sub-int v13, v13, p3

    if-ltz v13, :cond_4

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    sub-int v3, v13, p3

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    :goto_2
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v12

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    sub-int v12, v12, p3

    add-int v3, v3, p3

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    check-cast v10, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v10, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    :cond_0
    :goto_3
    if-eqz v4, :cond_1

    instance-of v13, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v13, :cond_b

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v13, v13, p3

    if-gtz v13, :cond_8

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v12, v13, p3

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    :goto_4
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v12

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v3

    add-int v12, v12, p3

    sub-int v3, v3, p3

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    :cond_1
    :goto_5
    return-void

    :cond_2
    move/from16 v11, p2

    goto/16 :goto_0

    :cond_3
    move/from16 v5, p1

    goto/16 :goto_1

    :cond_4
    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    if-lez v13, :cond_5

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    sub-int v14, v13, p3

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v12, v14, v13

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_2

    :cond_5
    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    sub-int v2, v13, p3

    move-object v13, v10

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v7, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v7

    :cond_7
    sub-int v7, v7, p3

    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int v8, v8, p3

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

    :cond_8
    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    if-gez v13, :cond_9

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v14, v13, p3

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v13

    add-int v3, v14, v13

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    goto/16 :goto_4

    :cond_9
    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13}, Lcom/htc/widget/HtcListItem;->getBottomSpace()I

    move-result v13

    add-int v3, v13, p3

    move-object v13, v4

    check-cast v13, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v13, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    const/16 v13, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v7, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    :cond_c
    add-int v7, v7, p3

    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int v8, v8, p3

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

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    const/16 v13, 0x32

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/htc/widget/HtcReorderListView;->smoothScrollBy(II)V

    goto/16 :goto_5
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v3

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v4, v10, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    sub-int/2addr v10, v3

    if-ne v5, v10, :cond_6

    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    const/high16 v11, -0x100

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    if-eqz v9, :cond_5

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :cond_5
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mBoundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-le v4, v10, :cond_4

    invoke-virtual {v0, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-eqz v10, :cond_9

    if-nez v5, :cond_9

    instance-of v10, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v10, :cond_7

    move-object v10, v0

    check-cast v10, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v10}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v6

    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getTopBorderHeight()I

    move-result v10

    add-int/2addr v10, v6

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v2, v4, v10

    if-le v2, v6, :cond_4

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v2, v6

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    goto :goto_3

    :cond_8
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_9
    iget v10, v8, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->top:I

    goto :goto_2
.end method

.method protected onFocusLost()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onFocusLost()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v10, :cond_0

    :cond_0
    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v10, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_3
    :goto_0
    return v8

    :pswitch_0
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->pointToPosition(II)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointX:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v7, v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPointY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mXOffset:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v7

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mYOffset:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId2:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_4
    new-array v2, v12, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/16 v3, 0xa

    aget v10, v2, v8

    sub-int/2addr v10, v3

    if-le v6, v10, :cond_2

    aget v10, v2, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    if-ge v6, v10, :cond_2

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    const/high16 v10, -0x8000

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iget v11, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightExpanded:I

    iget-object v10, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    aput v11, v10, v8

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    aput v10, v8, v12

    iget-object v8, p0, Lcom/htc/widget/HtcReorderListView;->mCacheItemPadding:[I

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    aput v11, v8, v10

    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->adjustScrollBounds()V

    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/htc/widget/HtcReorderListView;->startDragging(Landroid/graphics/Bitmap;I)V

    move v8, v9

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->endWave()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, -0x2

    const/4 v11, 0x3

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    if-eqz v9, :cond_12

    :cond_1
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-eqz v9, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    return v8

    :pswitch_0
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_3

    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    :cond_3
    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v2, 0x0

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-le v9, v10, :cond_5

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mFrameCornerHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aget v10, v1, v8

    add-int/2addr v10, v4

    sub-int v3, v9, v10

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

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    new-instance v10, Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    invoke-direct {v10, p0, v3}, Lcom/htc/widget/HtcReorderListView$DragWindowMove;-><init>(Lcom/htc/widget/HtcReorderListView;I)V

    iput-object v10, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mDraggingWindow:Lcom/htc/widget/HtcReorderListView$DragWindowMove;

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    sub-int v4, v9, v10

    goto :goto_2

    :cond_6
    const-string v9, "HtcReorderListView"

    const-string v10, "onTouchEvent UP/CANCEL destView = null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->forceDrop()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->isRunningExitAnim()Z

    move-result v9

    if-eqz v9, :cond_7

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

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v11, :cond_8

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_8
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    if-nez v9, :cond_9

    new-instance v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcReorderListView$WaveRunnable;-><init>(Lcom/htc/widget/HtcReorderListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    :cond_9
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-lt v9, v8, :cond_2

    invoke-direct {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->dragView(II)V

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-direct {p0, v9, v7}, Lcom/htc/widget/HtcReorderListView;->getItemForPosition(II)I

    move-result v5

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    if-le v7, v9, :cond_a

    const/4 v9, -0x1

    if-ne v5, v9, :cond_a

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v5

    :cond_a
    if-ltz v5, :cond_e

    invoke-virtual {p0, v6, v7}, Lcom/htc/widget/HtcReorderListView;->updateStateOrScroll(II)V

    if-eqz v0, :cond_b

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-eq v5, v9, :cond_11

    :cond_b
    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    iget v10, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-interface {v9, v10, v5}, Lcom/htc/widget/HtcReorderListView$DragListener;->drag(II)V

    :cond_c
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ge v9, v11, :cond_f

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcReorderListView;->shouldScroll(I)Z

    move-result v9

    if-nez v9, :cond_f

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-gez v9, :cond_d

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    :cond_d
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    iput v9, p0, Lcom/htc/widget/HtcReorderListView;->mLastDragPos:I

    iput v5, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    invoke-direct {p0}, Lcom/htc/widget/HtcReorderListView;->expandItem()V

    :cond_e
    :goto_3
    iput v7, p0, Lcom/htc/widget/HtcReorderListView;->mLastY:I

    goto/16 :goto_0

    :cond_f
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ge v9, v11, :cond_10

    iget-object v9, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v9, v9, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->unExpand()V

    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    :cond_10
    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    :cond_11
    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    if-ne v5, v9, :cond_e

    iget v9, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v9, v11, :cond_e

    iput v12, p0, Lcom/htc/widget/HtcReorderListView;->mDragPos:I

    goto :goto_3

    :cond_12
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

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

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    new-instance v0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;-><init>(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mDisableAdapter:Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAllItemFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z

    return-void
.end method

.method public setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    return-void
.end method

.method public setDraggerId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcReorderListView;->mDraggerId:I

    return-void
.end method

.method public setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    return-void
.end method

.method public setLowerAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcReorderListView;->isLowerAlpha:Z

    return-void
.end method

.method public setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    return-void
.end method

.method shouldScroll(I)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    if-le p1, v4, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mLowerBound:I

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    if-le p1, v1, :cond_2

    const/16 v0, 0x18

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "HtcReorderListView"

    const-string v4, "should scroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcReorderListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_4

    const/16 v0, -0x18

    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, -0x8

    goto :goto_1
.end method

.method unExpand()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcReorderListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcReorderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    instance-of v5, v4, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_3

    move-object v3, v4

    check-cast v3, Lcom/htc/widget/HtcListItem;

    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getTopSpace()I

    move-result v5

    if-eq v5, v11, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    rsub-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_1

    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    invoke-virtual {v3, v10}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int v5, v0, v1

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mSrcDragPos:I

    if-ne v5, v6, :cond_5

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v11, :cond_4

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

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

    :cond_5
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method updateStateOrScroll(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x2

    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    if-ne v0, v1, :cond_2

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView;->mWaveRunnable:Lcom/htc/widget/HtcReorderListView$WaveRunnable;

    iget-object v0, v0, Lcom/htc/widget/HtcReorderListView$WaveRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcReorderListView;->scrollList(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/htc/widget/HtcReorderListView;->mDragMode:I

    goto :goto_1
.end method
