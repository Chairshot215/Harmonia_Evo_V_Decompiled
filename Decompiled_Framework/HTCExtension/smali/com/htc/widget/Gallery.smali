.class Lcom/htc/widget/Gallery;
.super Lcom/htc/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/Gallery$LayoutParams;,
        Lcom/htc/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Carousel\'s Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

.field mDetachCounter:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragger:Lcom/htc/widget/DragController;

.field private mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsForceStop:Z

.field private mLayoutLikeActivityMode:Z

.field private mLeftMost:I

.field mNeedModify:Z

.field private mOrientationChangedFlag:Z

.field private mReceivedInvokeKeyDown:Z

.field mReorderFrom:I

.field mReorderTo:I

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field protected mState:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v6, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    const/16 v5, 0x190

    iput v5, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    new-instance v5, Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/Gallery$FlingRunnable;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v5, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    new-instance v5, Lcom/htc/widget/Gallery$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/Gallery$1;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v5, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    iput-boolean v7, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    iput-boolean v7, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    const/16 v5, 0x3e9

    iput v5, p0, Lcom/htc/widget/Gallery;->mState:I

    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mLayoutLikeActivityMode:Z

    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setGravity(I)V

    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->setAnimationDuration(I)V

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->setSpacing(I)V

    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x3f80

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->setUnselectedAlpha(F)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    iget v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->setFastScrollEnabled(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/Gallery;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/Gallery;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/Gallery;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/widget/Gallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/widget/Gallery;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/widget/Gallery;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/Gallery;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/Gallery;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/Gallery;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getMeasuredHeight()I

    move-result v3

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    iget v4, p0, Lcom/htc/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :sswitch_0
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    goto :goto_2

    :sswitch_2
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v6

    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v3, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-le v8, v3, :cond_2

    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/widget/Gallery;->detachViewsFromParent(II)V

    if-eqz p1, :cond_1

    iget v8, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v4, v8, v9

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v8, v4, :cond_0

    move v7, v5

    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AdapterView;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    new-instance v0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/TaskInfo;

    :cond_0
    iget v4, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    iget v3, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    invoke-virtual {p0, v8}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v4

    :goto_0
    if-le v1, v3, :cond_2

    if-ltz v0, :cond_2

    iget v6, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v6, v0, v6

    invoke-direct {p0, v0, v6, v1, v8}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    iput v0, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget v6, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v7, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v1, v6, v7

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    const/4 v9, 0x1

    iget v3, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    iget v7, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v7, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    iget v7, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v7, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getLeftOfGallery()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method private static getLeftOfView(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method private getRightOfGallery()I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getRightOfView(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5

    iget-boolean v3, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/Gallery;->mRightMost:I

    iget v3, p0, Lcom/htc/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/Gallery;->mLeftMost:I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private offsetChildrenLeftAndRight(III)V
    .locals 3

    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr p2, v2

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-lt v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    return-void
.end method

.method private putGalleryThumb()V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private setChildLayoutParams(ILandroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedPosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedPosition()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v8, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v8, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v8, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-eqz p4, :cond_3

    move v2, p3

    add-int v3, v2, v7

    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    sub-int v2, p3, v7

    move v3, p3

    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method calibrateThumb(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->calibrateThumb(I)V

    :cond_0
    return-void
.end method

.method cancelAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->cancelAnimation()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/htc/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method public forceStopPartialFling()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    iput-boolean v1, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery$FlingRunnable;->isPartialFling()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v5, p2

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-eqz p1, :cond_2

    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    :goto_1
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    move v5, p2

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/htc/widget/Gallery;->getRightOfView(Landroid/view/View;)I

    move-result v2

    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getDragBinGridView()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getRightOfGallery()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v7

    sub-int v4, v6, v7

    :goto_3
    if-eqz p1, :cond_9

    if-le v2, v4, :cond_0

    :cond_4
    sub-int v0, v4, v2

    if-eqz p1, :cond_a

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/htc/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLeftOfGallery()I

    move-result v4

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getRightOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mHighBorder:I

    sub-int v4, v6, v7

    :goto_4
    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLeftOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v4, v6, v7

    goto :goto_4

    :cond_9
    if-lt v2, v4, :cond_4

    goto :goto_0

    :cond_a
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 10

    const/4 v9, 0x0

    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int v0, v6, v7

    invoke-virtual {p0, v9}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x0

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    if-nez v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/TaskInfo;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    :cond_0
    :goto_0
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    if-le v6, v0, :cond_1

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    :cond_1
    iget-boolean v6, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->handleDataChanged()V

    :cond_2
    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->resetList()V

    :goto_1
    return-void

    :cond_3
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v6, :cond_5

    iget v6, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setSelectedPositionInt(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->recycleAllViews()V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->detachAllViewsFromParent()V

    iput v9, p0, Lcom/htc/widget/Gallery;->mRightMost:I

    iput v9, p0, Lcom/htc/widget/Gallery;->mLeftMost:I

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3e9

    if-eq v6, v7, :cond_6

    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->mLayoutLikeActivityMode:Z

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getFirstVisiblePosition()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mLayoutLikeActivityMode:Z

    :cond_7
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v7, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryRight()V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLeft()V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->clearCache()V

    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->checkSelectionChanged()V

    iput-boolean v9, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    iput-boolean v9, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    iget v6, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setNextSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    goto :goto_1
.end method

.method protected onAnimationEnd()V
    .locals 0

    return-void
.end method

.method onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    return v2
.end method

.method onDrawerClosed(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->setCurrentThumb(I)V

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->showThumb()V

    :cond_0
    return-void
.end method

.method onDrawerOpened()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->closeThumb()V

    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/AbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/Gallery;->layout(IZ)V

    iput-boolean v1, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->scrollToChild(I)Z

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v4, p1}, Lcom/htc/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method public partialFling(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/Gallery;->partialFling(IIIZ)V

    return-void
.end method

.method public partialFling(IIIZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery$FlingRunnable;->startPartialUsingDistance(IIIZ)V

    :cond_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    :cond_0
    return-void
.end method

.method scrollTo(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    mul-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v4}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v4

    add-int v2, v3, v4

    sub-int v3, v2, p1

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/widget/Gallery;->mGravity:I

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->requestLayout()V

    :cond_0
    return-void
.end method

.method setOrientationChangedFlag(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getMaxAverageCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/Gallery;->mLayoutLikeActivityMode:Z

    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method setSelectionFromTop(II)V
    .locals 5

    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v3, p1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->setSelection(I)V

    goto :goto_0
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method setUpThumb(Landroid/view/View;)V
    .locals 9

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/Gallery$LayoutParams;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/Gallery$LayoutParams;

    :cond_0
    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v7, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v7, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    invoke-virtual {p1, v4, v1}, Landroid/view/View;->measure(II)V

    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v0, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method stopFlingRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryRight()V

    :goto_2
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invokeOnItemScrollListener()V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method

.method trackMotionScroll(IIIZ)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p3, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    if-eq v0, p3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLeftAndRight(III)V

    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz p4, :cond_2

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryRight()V

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
