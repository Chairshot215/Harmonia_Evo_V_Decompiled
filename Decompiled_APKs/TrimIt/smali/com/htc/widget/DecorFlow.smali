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
    .parameter "context"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/DecorFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 196
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/DecorFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, -0x1

    const/high16 v6, 0x3f80

    const/4 v9, 0x1

    const/16 v8, 0x11

    const/4 v7, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput v7, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 85
    const/16 v5, 0x1f4

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    .line 122
    new-instance v5, Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/DecorFlow$FlingRunnable;-><init>(Lcom/htc/widget/DecorFlow;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    .line 128
    new-instance v5, Lcom/htc/widget/DecorFlow$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/DecorFlow$1;-><init>(Lcom/htc/widget/DecorFlow;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 152
    iput-boolean v9, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    .line 157
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    .line 162
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    .line 187
    const/16 v5, 0x12c

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    .line 257
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    .line 258
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    .line 259
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    .line 262
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    .line 264
    iput v7, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    .line 595
    const/16 v5, 0x4b0

    iput v5, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    .line 1709
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    .line 1821
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    .line 1823
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    .line 1824
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    .line 1825
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    .line 1951
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    .line 202
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 203
    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v9}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 205
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 209
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 210
    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->setGravity(I)V

    .line 213
    :cond_0
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 215
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 216
    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->setAnimationDuration(I)V

    .line 219
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 221
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->setSpacing(I)V

    .line 223
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 225
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setUnselectedAlpha(F)V

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    .line 233
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/widget/DecorFlow;->mGroupFlags:I

    .line 236
    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->setSpacing(I)V

    .line 237
    invoke-virtual {p0, v9}, Lcom/htc/widget/DecorFlow;->setStaticTransformationsEnabled(Z)V

    .line 238
    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->setFadingEdgeLength(I)V

    .line 239
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setAnimationDuration(I)V

    .line 241
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    .line 242
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    .line 243
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    .line 244
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    .line 246
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    .line 247
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    .line 248
    new-array v5, v8, [F

    iput-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    .line 249
    iput-boolean v7, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    .line 251
    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/DecorFlow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/widget/DecorFlow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/DecorFlow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/widget/DecorFlow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/widget/DecorFlow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DecorFlow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlotsAmounts()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/DecorFlow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DecorFlow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/DecorFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 998
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getMeasuredHeight()I

    move-result v3

    .line 999
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1001
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 1003
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1016
    :goto_2
    return v2

    .line 998
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getHeight()I

    move-result v3

    goto :goto_0

    .line 999
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1005
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1006
    goto :goto_2

    .line 1008
    :sswitch_1
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1010
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1011
    goto :goto_2

    .line 1013
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1003
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
    .parameter "toLeft"

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v6

    .line 598
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    .line 599
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 600
    .local v7, start:I
    const/4 v1, 0x0

    .line 602
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 603
    iget v8, p0, Lcom/htc/widget/DecorFlow;->mPaddingLeft:I

    iget v9, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    sub-int v3, v8, v9

    .line 604
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 605
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 606
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 627
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/widget/DecorFlow;->detachViewsFromParent(II)V

    .line 629
    if-eqz p1, :cond_1

    .line 630
    iget v8, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    .line 632
    :cond_1
    return-void

    .line 609
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 610
    iget-object v8, p0, Lcom/htc/widget/DecorFlow;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 604
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 614
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/DecorFlow;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    add-int v4, v8, v9

    .line 615
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 616
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 617
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 620
    move v7, v5

    .line 621
    add-int/lit8 v1, v1, 0x1

    .line 622
    iget-object v8, p0, Lcom/htc/widget/DecorFlow;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 615
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1279
    const/4 v6, 0x0

    .line 1281
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1286
    :cond_0
    if-nez v6, :cond_1

    .line 1287
    new-instance v0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    .line 1288
    invoke-super {p0, p0}, Lcom/htc/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1291
    :cond_1
    if-eqz v6, :cond_2

    .line 1292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->performHapticFeedback(I)Z

    .line 1295
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1215
    if-eqz p1, :cond_0

    .line 1216
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1219
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->setPressed(Z)V

    .line 1220
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1224
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1225
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1228
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->setPressed(Z)V

    .line 1229
    return-void
.end method

.method private drawDimLayer(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1955
    const/16 v0, 0xb4

    .line 1957
    .local v0, dimAlpha:I
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    if-eqz v1, :cond_0

    .line 1958
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1959
    :cond_0
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 829
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 830
    .local v3, itemSpacing:I
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mPaddingLeft:I

    iget v6, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    sub-int v2, v5, v6

    .line 833
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 837
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 838
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 839
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 847
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 848
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 852
    iput v0, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    .line 855
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 856
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 842
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 843
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mRight:I

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 844
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    goto :goto_0

    .line 858
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 861
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 862
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/widget/DecorFlow;->mRight:I

    iget v8, p0, Lcom/htc/widget/DecorFlow;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/DecorFlow;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    add-int v2, v7, v8

    .line 863
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v4

    .line 864
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    .line 867
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 871
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 872
    iget v7, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    add-int v1, v7, v4

    .line 873
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 880
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 881
    iget v7, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 885
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    .line 876
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mPaddingLeft:I

    .line 877
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z

    goto :goto_0

    .line 888
    :cond_1
    return-void
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 586
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

    .prologue
    const v5, 0x3ecccccd

    const v9, 0x3e99999a

    const v7, 0x3f266666

    const v6, 0x3dcccccd

    const/4 v8, 0x0

    .line 1729
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1730
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_0

    .line 1731
    const-string v3, ""

    const-string v4, "Unable to initallize since the width and height of each element is unknown."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :goto_0
    return-void

    .line 1735
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    .line 1736
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight:I

    .line 1737
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    .line 1738
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    .line 1740
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v3, v3

    div-int/lit8 v0, v3, 0x2

    .line 1741
    .local v0, center_i:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryCenterX:F

    .line 1742
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mGalleryCenterX:F

    aput v4, v3, v0

    .line 1743
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    const/high16 v4, 0x3f80

    aput v4, v3, v0

    .line 1744
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aput v8, v3, v0

    .line 1745
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1746
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aput v8, v3, v2

    .line 1745
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1748
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    const/high16 v4, 0x3f80

    aput v4, v3, v0

    .line 1750
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1751
    :cond_2
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const v4, 0x3f3ae148

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    .line 1752
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mAlbumHeight_H:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x23

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    .line 1753
    const/high16 v3, 0x3f58

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    .line 1755
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x3

    aput v6, v3, v4

    .line 1756
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x2

    aput v5, v3, v4

    .line 1757
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x1

    aput v7, v3, v4

    .line 1758
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x1

    aput v7, v3, v4

    .line 1759
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x2

    aput v5, v3, v4

    .line 1760
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x3

    aput v6, v3, v4

    .line 1776
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    .line 1777
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int v4, v0, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1778
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    sub-int v4, v0, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v0

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 1783
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

    .line 1784
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

    .line 1786
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int v4, v0, v2

    rsub-int/lit8 v5, v2, 0x0

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 1787
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    sub-int v4, v0, v2

    int-to-float v5, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 1776
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1762
    :cond_3
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v3, v3

    const v4, 0x3f333333

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConst:F

    .line 1763
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

    .line 1764
    const v3, 0x3f547ae1

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConst:F

    .line 1766
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x4

    aput v6, v3, v4

    .line 1767
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x3

    aput v9, v3, v4

    .line 1768
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x2

    const v5, 0x3ee66666

    aput v5, v3, v4

    .line 1769
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, -0x1

    aput v7, v3, v4

    .line 1770
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x1

    aput v7, v3, v4

    .line 1771
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x2

    const v5, 0x3ee66666

    aput v5, v3, v4

    .line 1772
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x3

    aput v9, v3, v4

    .line 1773
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v4, v0, 0x4

    aput v6, v3, v4

    goto/16 :goto_2

    .line 1790
    :cond_4
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 1791
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 1792
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1793
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1794
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1790
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1798
    :cond_6
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 1799
    :cond_7
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    .line 1800
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenRightLimit:F

    .line 1806
    :goto_5
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    .line 1807
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    goto/16 :goto_0

    .line 1802
    :cond_8
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v4, v0, -0x3

    aget v3, v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mScreenLeftLimit:F

    .line 1803
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
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 910
    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 911
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 912
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 917
    .local v2, childLeft:I
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    .line 919
    iget v3, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    .line 922
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/DecorFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 934
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 929
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 932
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/DecorFlow;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 934
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 571
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 570
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    .line 693
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    .line 697
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;->onFinishedMovement()V

    .line 699
    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 6

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 643
    .local v1, selectedCenter:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    .line 645
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 646
    .local v0, scrollAmount:I
    if-eqz v0, :cond_3

    .line 648
    iget-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-nez v3, :cond_2

    .line 650
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 654
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

    .line 655
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 659
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->onFinishedMovement()V

    .line 662
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    goto :goto_0
.end method

.method private scrollIntoSlotsAmounts()I
    .locals 4

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    .line 674
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 675
    .local v1, selectedCenter:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    .line 677
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 685
    .local v0, scrollAmount:I
    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1384
    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1386
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1388
    .local v1, distance:I
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingDistance(I)V

    .line 1389
    const/4 v2, 0x1

    .line 1392
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setScrollStateChanged(I)V
    .locals 2
    .parameter "scrollState"

    .prologue
    .line 319
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 321
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    .line 323
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mLastScrollState:I

    invoke-interface {v0, v1}, Lcom/htc/widget/DecorFlow$OnScrollListener;->onScrollStateChanged(I)V

    .line 326
    :cond_0
    return-void
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 714
    iget-object v7, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    .line 715
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v3

    .line 720
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 725
    :cond_2
    const v2, 0x7fffffff

    .line 726
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 727
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 729
    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 733
    move v6, v4

    .line 745
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    add-int v5, v8, v6

    .line 747
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 748
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setSelectedPositionInt(I)V

    .line 749
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlow;->setNextSelectedPositionInt(I)V

    .line 750
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->checkSelectionChanged()V

    goto :goto_0

    .line 737
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
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

    .line 739
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 740
    move v2, v1

    .line 741
    move v6, v4

    .line 727
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/DecorFlow$LayoutParams;

    .line 955
    .local v6, lp:Lcom/htc/widget/DecorFlow$LayoutParams;
    if-nez v6, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/htc/widget/DecorFlow$LayoutParams;
    check-cast v6, Lcom/htc/widget/DecorFlow$LayoutParams;

    .line 959
    .restart local v6       #lp:Lcom/htc/widget/DecorFlow$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/DecorFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 961
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 964
    iget v8, p0, Lcom/htc/widget/DecorFlow;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/widget/DecorFlow$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 966
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/widget/DecorFlow;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/widget/DecorFlow$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 970
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 976
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/htc/widget/DecorFlow;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 977
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 979
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 980
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 981
    move v2, p3

    .line 982
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 988
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 989
    return-void

    .line 959
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 961
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 984
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 985
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1405
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    .line 1407
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    .line 1408
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1413
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1415
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1416
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1421
    :cond_2
    if-eqz v1, :cond_0

    .line 1424
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1428
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 434
    instance-of v0, p1, Lcom/htc/widget/DecorFlow$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1942
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->init()V

    .line 1944
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1946
    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow;->drawDimLayer(Landroid/graphics/Canvas;)V

    .line 1947
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1301
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1247
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1238
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 1972
    const/4 v0, 0x1

    .line 1973
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1974
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    .line 1975
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    .line 1977
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

    .line 1978
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/AbsSpinner;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1981
    :cond_2
    return v0
.end method

.method public enableDimLayer(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1963
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->enableDim:Z

    .line 1964
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    .line 1965
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 452
    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 444
    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 439
    new-instance v0, Lcom/htc/widget/DecorFlow$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/DecorFlow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getCenterOfGallery()I
    .locals 2

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1927
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getFirstVisiblePosition()I

    move-result v2

    sub-int v0, v1, v2

    .line 1929
    .local v0, selected:I
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_0

    .line 1936
    .end local v0           #selected:I
    :goto_0
    return v0

    .line 1933
    .restart local v0       #selected:I
    :cond_0
    if-ge p2, v0, :cond_1

    move v0, p2

    .line 1934
    goto :goto_0

    .line 1936
    :cond_1
    sub-int v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 12
    .parameter "child"
    .parameter "t"

    .prologue
    const v11, 0x3ecccccd

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1835
    iget-boolean v4, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    if-eqz v4, :cond_0

    .line 1922
    :goto_0
    return v10

    .line 1840
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1841
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    .line 1842
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mLoc:[I

    aget v4, v4, v8

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/htc/widget/DecorFlow;->mLocRight:F

    .line 1844
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 1845
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1848
    .local v2, mtx:Landroid/graphics/Matrix;
    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1849
    iput v9, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 1850
    const/high16 v4, 0x40a0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateY:F

    .line 1851
    iput v9, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1853
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v4, v4

    div-int/lit8 v0, v4, 0x2

    .line 1855
    .local v0, center:I
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

    .line 1856
    :cond_2
    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v5, v5, v8

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 1857
    iput v7, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1858
    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1859
    iput v7, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 1916
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1917
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/htc/widget/DecorFlow;->scale:F

    iget v6, p0, Lcom/htc/widget/DecorFlow;->scale:F

    iget v7, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth_H:F

    iget v8, p0, Lcom/htc/widget/DecorFlow;->mPlaceY:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1919
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateMtx:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleMtx:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto/16 :goto_0

    .line 1860
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

    .line 1862
    const/high16 v3, 0x3f80

    .line 1864
    .local v3, num:F
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

    .line 1865
    move v1, v0

    .local v1, i:I
    :goto_2
    if-lt v1, v10, :cond_5

    .line 1866
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

    .line 1867
    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1868
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1871
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1874
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 1880
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

    .line 1865
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1884
    .end local v1           #i:I
    :cond_7
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    aget v4, v4, v0

    iget v5, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    .line 1885
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1886
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1887
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    aget v4, v4, v0

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    goto/16 :goto_1

    .line 1891
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

    .line 1892
    add-int/lit8 v1, v0, 0x1

    .restart local v1       #i:I
    :goto_3
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    array-length v4, v4

    if-ge v1, v4, :cond_9

    .line 1893
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

    .line 1894
    iget v4, p0, Lcom/htc/widget/DecorFlow;->centerX:F

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mCenterX:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1895
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mAlphaConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1898
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mTranslateConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1901
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mScaleConstList3:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/DecorFlow;->scale:F

    .line 1907
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

    .line 1892
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1910
    .end local v1           #i:I
    .end local v3           #num:F
    :cond_b
    iput v7, p0, Lcom/htc/widget/DecorFlow;->alpha:F

    .line 1911
    iput v7, p0, Lcom/htc/widget/DecorFlow;->translateX:F

    .line 1912
    iput v7, p0, Lcom/htc/widget/DecorFlow;->scale:F

    goto/16 :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getFlingRatio()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    return v0
.end method

.method public getGalleryMode()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 9
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 515
    if-eqz p1, :cond_0

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 516
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 518
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_1

    move v5, p2

    .line 558
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_0
    move v3, v5

    .line 515
    goto :goto_0

    .line 522
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_1
    invoke-static {v1}, Lcom/htc/widget/DecorFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 523
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getCenterOfGallery()I

    move-result v4

    .line 525
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 526
    if-gt v2, v4, :cond_7

    .line 527
    iget v6, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    if-ne v6, v8, :cond_3

    .line 528
    sub-int v5, v4, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    sub-int v0, v5, v6

    .line 530
    .local v0, centerDifference:I
    if-eqz p1, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 535
    .end local v0           #centerDifference:I
    :cond_3
    iput v8, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    goto :goto_1

    .line 540
    :cond_4
    if-lt v2, v4, :cond_7

    .line 541
    iget v6, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    if-ne v6, v7, :cond_6

    .line 542
    sub-int v5, v4, v2

    iget v6, p0, Lcom/htc/widget/DecorFlow;->mAlbumWidth:I

    add-int v0, v5, v6

    .line 544
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 549
    .end local v0           #centerDifference:I
    :cond_6
    iput v7, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    goto :goto_1

    .line 555
    :cond_7
    sub-int v0, v4, v2

    .line 557
    .restart local v0       #centerDifference:I
    iput v5, p0, Lcom/htc/widget/DecorFlow;->mBouncingMode:I

    .line 558
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

    .prologue
    .line 294
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    return v0
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 767
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 768
    .local v0, childrenLeft:I
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mRight:I

    iget v5, p0, Lcom/htc/widget/DecorFlow;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/DecorFlow;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 770
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Lcom/htc/widget/DecorFlow;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->handleDataChanged()V

    .line 775
    :cond_0
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    if-nez v4, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->resetList()V

    .line 826
    :goto_0
    return-void

    .line 781
    :cond_1
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 782
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setSelectedPositionInt(I)V

    .line 786
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->recycleAllViews()V

    .line 790
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->detachAllViewsFromParent()V

    .line 796
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mRightMost:I

    .line 797
    iput v6, p0, Lcom/htc/widget/DecorFlow;->mLeftMost:I

    .line 805
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iput v4, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    .line 806
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/htc/widget/DecorFlow;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 809
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 810
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 812
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryRight()V

    .line 813
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryLeft()V

    .line 816
    iget-object v4, p0, Lcom/htc/widget/DecorFlow;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 818
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    .line 819
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->checkSelectionChanged()V

    .line 821
    iput-boolean v6, p0, Lcom/htc/widget/DecorFlow;->mDataChanged:Z

    .line 822
    iput-boolean v6, p0, Lcom/htc/widget/DecorFlow;->mNeedSync:Z

    .line 823
    iget v4, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlow;->setNextSelectedPositionInt(I)V

    .line 825
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1375
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1376
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    .line 1377
    const/4 v0, 0x1

    .line 1379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1366
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1367
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    .line 1368
    const/4 v0, 0x1

    .line 1370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onUp()V

    .line 1183
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1138
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->stop(Z)V

    .line 1141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/DecorFlow;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    .line 1143
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1144
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    .line 1145
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1149
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    .line 1152
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 1063
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1070
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    neg-float v1, p3

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startUsingVelocity(I)V

    .line 1076
    return v3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1468
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1475
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1479
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1310
    sparse-switch p1, :sswitch_data_0

    .line 1330
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1313
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->playSoundEffect(I)V

    goto :goto_1

    .line 1319
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->playSoundEffect(I)V

    goto :goto_1

    .line 1326
    :sswitch_2
    iput-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1310
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
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1335
    sparse-switch p1, :sswitch_data_0

    .line 1362
    invoke-super {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1339
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1340
    iget v1, p0, Lcom/htc/widget/DecorFlow;->mItemCount:I

    if-lez v1, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlow;->dispatchPress(Landroid/view/View;)V

    .line 1343
    new-instance v1, Lcom/htc/widget/DecorFlow$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/DecorFlow$2;-><init>(Lcom/htc/widget/DecorFlow;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1349
    iget v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1350
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/widget/DecorFlow;->performItemClick(Landroid/view/View;IJ)Z

    .line 1356
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mReceivedInvokeKeyDown:Z

    .line 1358
    const/4 v1, 0x1

    goto :goto_0

    .line 1335
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mInLayout:Z

    .line 465
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/DecorFlow;->layout(IZ)V

    .line 466
    iput-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mInLayout:Z

    .line 467
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1190
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-gez v2, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    if-ne v2, v3, :cond_0

    .line 1196
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->performHapticFeedback(I)Z

    .line 1197
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/DecorFlow;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1199
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1095
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1099
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    if-nez v1, :cond_3

    .line 1100
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    if-eqz v1, :cond_1

    .line 1106
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DecorFlow;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    :cond_1
    :goto_0
    const/high16 v0, 0x3f80

    .line 1116
    .local v0, times:F
    iget v1, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-ne v1, v6, :cond_4

    .line 1117
    :cond_2
    const/high16 v0, 0x4020

    .line 1123
    :goto_1
    invoke-direct {p0, v6}, Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V

    .line 1125
    neg-float v1, p3

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/DecorFlow;->trackMotionScroll(I)V

    .line 1128
    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mIsFirstScroll:Z

    .line 1129
    return v4

    .line 1110
    .end local v0           #times:F
    :cond_3
    iget-boolean v1, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1119
    .restart local v0       #times:F
    :cond_4
    const/high16 v0, 0x4020

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1209
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1041
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1044
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->scrollToChild(I)Z

    .line 1047
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/DecorFlow;->performItemClick(Landroid/view/View;IJ)Z

    .line 1052
    :cond_1
    const/4 v0, 0x1

    .line 1055
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1812
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/AbsSpinner;->onSizeChanged(IIII)V

    .line 1813
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1814
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1815
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    .line 1816
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/DecorFlow;->mScreenWidth:I

    .line 1817
    const/16 v2, 0x4b0

    iput v2, p0, Lcom/htc/widget/DecorFlow;->EXPAND_UNIT:I

    .line 1818
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/DecorFlow;->mIsInit:Z

    .line 1819
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1023
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1025
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1026
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1028
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onUp()V

    .line 1033
    :cond_0
    :goto_0
    return v1

    .line 1029
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    #getter for: Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->access$200(Lcom/htc/widget/DecorFlow$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->scrollIntoSlots()V

    .line 1172
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->dispatchUnpress()V

    .line 1173
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 704
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 706
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 380
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mAnimationDuration:I

    .line 381
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackDuringFling:Z

    .line 342
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemClick:Z

    .line 355
    return-void
.end method

.method public setCallbackOnUnselectedItemLongClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mShouldCallbackOnUnselectedItemLongClick:Z

    .line 368
    return-void
.end method

.method public setFlingRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 274
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mVelocityRatio:F

    .line 275
    return-void
.end method

.method public setGalleryMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlow;->mGalleryMode:Z

    .line 270
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1441
    iget v0, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1442
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mGravity:I

    .line 1443
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->requestLayout()V

    .line 1445
    :cond_0
    return-void
.end method

.method public setOnFinishedMovementListener(Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/htc/widget/DecorFlow;->mOnFinishedMovementListener:Lcom/htc/widget/DecorFlow$OnFinishedMovementListener;

    .line 1492
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/DecorFlow$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 312
    iput-object p1, p0, Lcom/htc/widget/DecorFlow;->mScrollListener:Lcom/htc/widget/DecorFlow$OnScrollListener;

    .line 314
    :cond_0
    return-void
.end method

.method public setScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 279
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mDistanceRatio:F

    .line 280
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1397
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1400
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->updateSelectedItemMetadata()V

    .line 1401
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 391
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mSpacing:I

    .line 392
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 402
    iput p1, p0, Lcom/htc/widget/DecorFlow;->mUnselectedAlpha:F

    .line 403
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1270
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/DecorFlow;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1271
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1272
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/DecorFlow;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/DecorFlow;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1275
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1257
    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1258
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1259
    const/4 v3, 0x0

    .line 1263
    :goto_0
    return v3

    .line 1262
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1263
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/widget/DecorFlow;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 512
    :goto_0
    return-void

    .line 486
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 487
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/DecorFlow;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 488
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 490
    iget-object v3, p0, Lcom/htc/widget/DecorFlow;->mFlingRunnable:Lcom/htc/widget/DecorFlow$FlingRunnable;

    #calls: Lcom/htc/widget/DecorFlow$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/DecorFlow$FlingRunnable;->access$100(Lcom/htc/widget/DecorFlow$FlingRunnable;Z)V

    .line 491
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->onFinishedMovement()V

    .line 494
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/widget/DecorFlow;->offsetChildrenLeftAndRight(I)V

    .line 496
    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlow;->detachOffScreenChildren(Z)V

    .line 498
    if-eqz v1, :cond_3

    .line 500
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryRight()V

    .line 507
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/DecorFlow;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 509
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->setSelectionToCenterChild()V

    .line 511
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlow;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 486
    goto :goto_1

    .line 503
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow;->fillToGalleryLeft()V

    goto :goto_2
.end method
