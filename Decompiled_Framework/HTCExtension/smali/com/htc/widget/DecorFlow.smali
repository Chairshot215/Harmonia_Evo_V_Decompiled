.class public Lcom/htc/widget/DecorFlow;
.super Lcom/htc/widget/AbsSpinner;
.source "DecorFlow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DecorFlow$LayoutParams;,
        Lcom/htc/widget/DecorFlow$FlingRunnable;,
        Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;,
        Lcom/htc/widget/DecorFlow$OnScrollListener;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "DecorFlow"

.field private static final localLOGV:Z = false

.field private static final mNumberOfViewASide:I = 0x8

.field private static final mScaleInitConst:F = 1.0f


# instance fields
.field EXPAND_UNIT:I

.field alpha:F

.field centerX:F

.field private enableDim:Z

.field private mAlbumHeight:I

.field private mAlbumHeight_H:F

.field private mAlbumWidth:I

.field private mAlbumWidth_H:F

.field private mAlphaConstList:[F

.field private mAlphaConstList3:[F

.field private mAnimationDuration:I

.field private mBouncingMode:I

.field private mCenterX:[F

.field private mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDistanceRatio:F

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

.field private mGalleryCenterX:F

.field private mGalleryMode:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsInit:Z

.field private mLastScrollState:I

.field private mLeftMost:I

.field private mLoc:[I

.field private mLocRight:F

.field private mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

.field mOrientation:I

.field private mPlaceY:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mScaleConst:F

.field private mScaleConstList:[F

.field private mScaleConstList3:[F

.field private mScaleMtx:Landroid/graphics/Matrix;

.field private mScreenLeftLimit:F

.field private mScreenRightLimit:F

.field mScreenWidth:I

.field private mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldCallbackOnUnselectedItemLongClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTranslateConst:F

.field private mTranslateConstList:[F

.field private mTranslateConstList3:[F

.field private mTranslateMtx:Landroid/graphics/Matrix;

.field private mUnselectedAlpha:F

.field private mVelocityRatio:F

.field rotate:F

.field scale:F

.field translateX:F

.field translateY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/DecorFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/DecorFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, -0x1

    const/high16 v6, 0x3f80

    const/4 v9, 0x1

    const/16 v8, 0x11

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v7, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    const/16 v5, 0x1f4

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    new-instance v5, Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/DecorFlow$FlingRunnable;-><init>(Lcom/htc/widget/DecorFlow;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    new-instance v5, Lcom/htc/widget/DecorFlow$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/DecorFlow$1;-><init>(Lcom/htc/widget/DecorFlow;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    iput-boolean v9, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    const/16 v5, 0x12c

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    iput v6, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    iput v6, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    iput v7, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    const/16 v5, 0x4b0

    iput v5, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v9}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->setGravity(I)V

    :cond_0
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->setAnimationDuration(I)V

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->setSpacing(I)V

    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setUnselectedAlpha(F)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->setSpacing(I)V

    invoke-virtual {p0, v9}, Lcom/htc/widget/DecorFlow;->setStaticTransformationsEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->setFadingEdgeLength(I)V

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setAnimationDuration(I)V

    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/DecorFlow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/widget/DecorFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/DecorFlow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/DecorFlow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/widget/DecorFlow;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DecorFlow;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlotsAmounts()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/DecorFlow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DecorFlow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/DecorFlow;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getMeasuredHeight()I

    move-result v3

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getHeight()I

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

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v6

    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iget v9, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    sub-int v3, v8, v9

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/widget/DecorFlow;->detachViewsFromParent(II)V

    if-eqz p1, :cond_1

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
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    add-int v4, v8, v9

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

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

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    new-instance v0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->setPressed(Z)V

    return-void
.end method

.method private drawDimLayer(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xb4

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    const/4 v7, 0x0

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    iget v5, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iget v6, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    sub-int v2, v5, v6

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    iget v5, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    iput v0, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v5, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v6, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    const/4 v9, 0x1

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    iget v7, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    add-int v2, v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

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

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

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

    iput-boolean v9, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 10

    const v5, 0x3ecccccd

    const v9, 0x3e99999a

    const v7, 0x3f266666

    const v6, 0x3dcccccd

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, ""

    const-string v4, "Unable to initallize since the width and height of each element is unknown."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight:I

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v3, v3

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryCenterX:F

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mGalleryCenterX:F

    aput v4, v3, v0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    const/high16 v4, 0x3f80

    aput v4, v3, v0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aput v8, v3, v0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aput v8, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    const/high16 v4, 0x3f80

    aput v4, v3, v0

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_2
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const v4, 0x3f3ae148

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x23

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    const/high16 v3, 0x3f58

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x3

    aput v6, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x2

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x1

    aput v7, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x1

    aput v7, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x2

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x3

    aput v6, v3, v4

    :goto_2
    const/4 v2, 0x1

    :goto_3
    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int v4, v0, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int v4, v0, v2

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x4100

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    sub-int v4, v0, v2

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x4100

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int v4, v0, v2

    rsub-int/lit8 v5, v2, 0x0

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    sub-int v4, v0, v2

    int-to-float v5, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const v4, 0x3f333333

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    const v3, 0x3f547ae1

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x4

    aput v6, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x3

    aput v9, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x2

    const v5, 0x3ee66666

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x1

    aput v7, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x1

    aput v7, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x2

    const v5, 0x3ee66666

    aput v5, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x3

    aput v9, v3, v4

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x4

    aput v6, v3, v4

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    array-length v3, v3

    if-ge v2, v3, :cond_6

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    array-length v4, v4

    if-ge v3, v4, :cond_5

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    :goto_5
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v4, v0, -0x3

    aget v3, v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    goto :goto_5
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5

    iget-boolean v3, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/DecorFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/DecorFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;->onFinishedMovement()V

    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    sub-int v0, v2, v1

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v4, v4

    const v5, 0x3dcccccd

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->onFinishedMovement()V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    goto :goto_0
.end method

.method private scrollIntoSlotsAmounts()I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setScrollStateChanged(I)V
    .locals 2

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    invoke-interface {v0, v1}, Lcom/htc/widget/DecorFlow$OnScrollListener;->onScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    iget-object v7, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    :cond_2
    const v2, 0x7fffffff

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    move v6, v4

    :cond_3
    iget v8, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    iget v8, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->checkSelectionChanged()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v2, :cond_5

    move v2, v1

    move v6, v4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/DecorFlow$LayoutParams;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/DecorFlow$LayoutParams;

    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/DecorFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

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

    invoke-direct {p0, p1, v8}, Lcom/htc/widget/DecorFlow;->calculateTop(Landroid/view/View;Z)I

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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->hasFocus()Z

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
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/htc/widget/DecorFlow$LayoutParams;

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

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->init()V

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow;->drawDimLayer(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/AbsSpinner;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public enableDimLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getCenterOfGallery()I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getFirstVisiblePosition()I

    move-result v2

    sub-int v0, v1, v2

    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ge p2, v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    sub-int v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 12

    const v11, 0x3ecccccd

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-eqz v4, :cond_0

    :goto_0
    return v10

    :cond_0
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    iput v9, p0, Lcom/htc/widget/DecorFlow;->scale:F

    const/high16 v4, 0x40a0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateY:F

    iput v9, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v4, v4

    div-int/lit8 v0, v4, 0x2

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v8

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iput v7, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    iput v7, p0, Lcom/htc/widget/DecorFlow;->scale:F

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/htc/widget/DecorFlow;->scale:F

    iget v6, p0, Lcom/htc/widget/DecorFlow;->scale:F

    iget v7, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    iget v8, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_b

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    iget-object v6, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    move v1, v0

    :goto_2
    if-lt v1, v10, :cond_5

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    :cond_5
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->scale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v11

    add-float/2addr v4, v9

    iget v5, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v0

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v0

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    iget-object v6, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    add-int/lit8 v1, v0, 0x1

    :goto_3
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v4, v4

    if-ge v1, v4, :cond_9

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v1

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_a

    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    :cond_9
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    iget v5, p0, Lcom/htc/widget/DecorFlow;->scale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v11

    add-float/2addr v4, v9

    iget v5, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    iput v7, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    iput v7, p0, Lcom/htc/widget/DecorFlow;->scale:F

    goto/16 :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getFlingRatio()F
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    return v0
.end method

.method public getGalleryMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget v6, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    :goto_0
    iget v6, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move v5, p2

    :goto_1
    return v5

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v4

    if-eqz p1, :cond_4

    if-gt v2, v4, :cond_7

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    if-ne v6, v8, :cond_3

    sub-int v5, v4, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    sub-int v0, v5, v6

    if-eqz p1, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    goto :goto_1

    :cond_4
    if-lt v2, v4, :cond_7

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    if-ne v6, v7, :cond_6

    sub-int v5, v4, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int v0, v5, v6

    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_6
    iput v7, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    goto :goto_1

    :cond_7
    sub-int v0, v4, v2

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    if-eqz p1, :cond_8

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_8
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getScrollRatio()F
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    return v0
.end method

.method layout(IZ)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/htc/widget/AdapterView;->mRight:I

    iget v5, p0, Lcom/htc/widget/AdapterView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    iget-boolean v4, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->handleDataChanged()V

    :cond_0
    iget v4, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->resetList()V

    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/htc/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setSelectedPositionInt(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->recycleAllViews()V

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->detachAllViewsFromParent()V

    iput v6, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    iput v6, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryRight()V

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryLeft()V

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->checkSelectionChanged()V

    iput-boolean v6, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    iput-boolean v6, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setNextSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/DecorFlow;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    neg-float v1, p3

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingVelocity(I)V

    return v3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->playSoundEffect(I)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->playSoundEffect(I)V

    goto :goto_1

    :sswitch_2
    iput-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlow;->dispatchPress(Landroid/view/View;)V

    new-instance v1, Lcom/htc/widget/DecorFlow$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/DecorFlow$2;-><init>(Lcom/htc/widget/DecorFlow;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/widget/DecorFlow;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/AbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/DecorFlow;->layout(IZ)V

    iput-boolean v1, p0, Lcom/htc/widget/AdapterView;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->performHapticFeedback(I)Z

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-ne v1, v6, :cond_4

    :cond_2
    const/high16 v0, 0x4020

    :goto_1
    invoke-direct {p0, v6}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    neg-float v1, p3

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->trackMotionScroll(I)V

    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    return v4

    :cond_3
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    goto :goto_0

    :cond_4
    const/high16 v0, 0x4020

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/AbsSpinner;->onSizeChanged(IIII)V

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    const/16 v2, 0x4b0

    iput v2, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onUp()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    #getter for: Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->access$200(Lcom/htc/widget/DecorFlow$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlots()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->dispatchUnpress()V

    return-void
.end method

.method selectionChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    return-void
.end method

.method public setFlingRatio(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    return-void
.end method

.method public setGalleryMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOnFinishedMovementListener(Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/DecorFlow$OnScrollListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    :cond_0
    return-void
.end method

.method public setScrollRatio(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DecorFlow;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow;->getPositionForView(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/DecorFlow;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    #calls: Lcom/htc/widget/DecorFlow$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/DecorFlow$FlingRunnable;->access$100(Lcom/htc/widget/DecorFlow$FlingRunnable;Z)V

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->onFinishedMovement()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->offsetChildrenLeftAndRight(I)V

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlow;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryRight()V

    :goto_2
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->setSelectionToCenterChild()V

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryLeft()V

    goto :goto_2
.end method
