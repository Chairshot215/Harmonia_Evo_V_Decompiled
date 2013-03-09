.class public Lcom/htc/home/personalize/widgetpicker/Gallery;
.super Lcom/htc/home/personalize/widgetpicker/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;,
        Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 177
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSpacing:I

    .line 78
    const/16 v5, 0x190

    iput v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mAnimationDuration:I

    .line 115
    new-instance v5, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;-><init>(Lcom/htc/home/personalize/widgetpicker/Gallery;)V

    iput-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mFlingRunnable:Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

    .line 121
    new-instance v5, Lcom/htc/home/personalize/widgetpicker/Gallery$1;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery$1;-><init>(Lcom/htc/home/personalize/widgetpicker/Gallery;)V

    iput-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 145
    iput-boolean v7, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldCallbackDuringFling:Z

    .line 150
    iput-boolean v7, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 183
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 184
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 186
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 191
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 192
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setGravity(I)V

    .line 195
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 197
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 198
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setAnimationDuration(I)V

    .line 201
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 203
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setSpacing(I)V

    .line 205
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 207
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setUnselectedAlpha(F)V

    .line 209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGroupFlags:I

    .line 215
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGroupFlags:I

    .line 216
    return-void
.end method

.method static synthetic access$002(Lcom/htc/home/personalize/widgetpicker/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/widgetpicker/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/widgetpicker/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/widgetpicker/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/widgetpicker/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/widgetpicker/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/widgetpicker/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/home/personalize/widgetpicker/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Lcom/htc/home/personalize/widgetpicker/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/widgetpicker/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/widgetpicker/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 850
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getMeasuredHeight()I

    move-result v3

    .line 851
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 854
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 856
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 869
    :goto_2
    return v2

    .line 850
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 851
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 858
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 859
    goto :goto_2

    .line 861
    :sswitch_1
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 863
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 864
    goto :goto_2

    .line 866
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 856
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
    .line 463
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v6

    .line 464
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 465
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 466
    .local v7, start:I
    const/4 v1, 0x0

    .line 468
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 469
    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I

    .line 470
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 471
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 493
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->detachViewsFromParent(II)V

    .line 495
    if-eqz p1, :cond_1

    .line 496
    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 498
    :cond_1
    return-void

    .line 475
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 476
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mRecycler:Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 470
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 480
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 481
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 482
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 483
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 486
    move v7, v5

    .line 487
    add-int/lit8 v1, v1, 0x1

    .line 488
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mRecycler:Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 481
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1118
    const/4 v6, 0x0

    .line 1120
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemLongClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemLongClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/home/personalize/widgetpicker/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1125
    :cond_0
    if-nez v6, :cond_1

    .line 1126
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mContextMenuInfo:Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterContextMenuInfo;

    .line 1127
    invoke-super {p0, p0}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1130
    :cond_1
    if-eqz v6, :cond_2

    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->performHapticFeedback(I)Z

    .line 1134
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1054
    if-eqz p1, :cond_0

    .line 1055
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1058
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setPressed(Z)V

    .line 1059
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1064
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1063
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setPressed(Z)V

    .line 1068
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 668
    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSpacing:I

    .line 669
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I

    .line 672
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 676
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 677
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 678
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 686
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 687
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/home/personalize/widgetpicker/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 691
    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 694
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 695
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 681
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 682
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mRight:I

    iget v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 683
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 697
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 700
    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSpacing:I

    .line 701
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mRight:I

    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 702
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v4

    .line 703
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    .line 706
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 710
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 711
    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 712
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 719
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 720
    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/home/personalize/widgetpicker/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 724
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 715
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I

    .line 716
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 727
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 753
    iget-boolean v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 754
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mRecycler:Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 760
    .local v2, childLeft:I
    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mRightMost:I

    .line 762
    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mLeftMost:I

    .line 765
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 777
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 772
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 775
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 777
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 436
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    .line 528
    invoke-super {p0}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->selectionChanged()V

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->invalidate()V

    .line 531
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 510
    .local v1, selectedCenter:I
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 512
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 513
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_3

    .line 516
    :cond_2
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->onFinishedMovement()V

    goto :goto_0

    .line 519
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mFlingRunnable:Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 9
    .parameter "childPosition"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1227
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1228
    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    .line 1229
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1230
    .local v2, left:I
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/2addr v5, p1

    iget v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/2addr v6, p1

    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSpacing:I

    sub-int v7, v2, v7

    invoke-direct {p0, v5, v6, v7, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    .line 1233
    const/4 p1, 0x0

    .line 1238
    .end local v2           #left:I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1241
    :cond_1
    if-eqz v0, :cond_3

    .line 1242
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getCenterOfGallery()I

    move-result v4

    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v5

    sub-int v1, v4, v5

    .line 1243
    .local v1, distance:I
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mFlingRunnable:Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

    invoke-virtual {v4, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1247
    .end local v1           #distance:I
    :goto_1
    return v3

    .line 1234
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 1235
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/2addr v5, p1

    iget v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/2addr v6, p1

    iget v7, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSpacing:I

    add-int/2addr v7, v8

    invoke-direct {p0, v5, v6, v7, v3}, Lcom/htc/home/personalize/widgetpicker/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    goto :goto_0

    :cond_3
    move v3, v4

    .line 1247
    goto :goto_1
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 546
    iget-object v7, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    .line 547
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 553
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 559
    :cond_2
    const v2, 0x7fffffff

    .line 560
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 561
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 563
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 568
    move v6, v4

    .line 581
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 583
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 584
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setSelectedPositionInt(I)V

    .line 585
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setNextSelectedPositionInt(I)V

    .line 586
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->checkSelectionChanged()V

    goto :goto_0

    .line 572
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

    .line 575
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 576
    move v2, v1

    .line 577
    move v6, v4

    .line 561
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
    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;

    .line 802
    .local v6, lp:Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;

    .line 806
    .restart local v6       #lp:Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_2

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 807
    if-nez p4, :cond_1

    .line 808
    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 811
    :cond_1
    if-nez p2, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 814
    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 816
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 820
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 827
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/htc/home/personalize/widgetpicker/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 828
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 830
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 831
    .local v7, width:I
    if-eqz p4, :cond_4

    .line 832
    move v2, p3

    .line 833
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 839
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 840
    return-void

    .line 806
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 811
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 835
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_4
    sub-int v2, p3, v7

    .line 836
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

    .line 1260
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1262
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1264
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1269
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1271
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1272
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1277
    :cond_2
    if-eqz v1, :cond_0

    .line 1280
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1284
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 312
    instance-of v0, p1, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1140
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1086
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1077
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 331
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 323
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 318
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1305
    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1308
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1319
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1311
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1313
    goto :goto_0

    .line 1314
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1316
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 286
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 287
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 289
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mContextMenuInfo:Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 398
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 399
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 401
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 424
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 398
    goto :goto_0

    .line 405
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 406
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 408
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 409
    if-le v2, v4, :cond_0

    .line 422
    :cond_3
    sub-int v0, v4, v2

    .line 424
    .local v0, centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 415
    .end local v0           #centerDifference:I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 424
    .restart local v0       #centerDifference:I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 604
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 605
    .local v0, childrenLeft:I
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mRight:I

    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 608
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->handleDataChanged()V

    .line 613
    :cond_0
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->resetList()V

    .line 665
    :goto_0
    return-void

    .line 619
    :cond_1
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 620
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setSelectedPositionInt(I)V

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->recycleAllViews()V

    .line 628
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->detachAllViewsFromParent()V

    .line 634
    iput v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mRightMost:I

    .line 635
    iput v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mLeftMost:I

    .line 643
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iput v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 644
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 647
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 649
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 651
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->fillToGalleryRight()V

    .line 652
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->fillToGalleryLeft()V

    .line 655
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mRecycler:Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;->clear()V

    .line 657
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->invalidate()V

    .line 658
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->checkSelectionChanged()V

    .line 660
    iput-boolean v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDataChanged:Z

    .line 661
    iput-boolean v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 662
    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setNextSelectedPositionInt(I)V

    .line 664
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1216
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1217
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->scrollToChild(I)Z

    .line 1218
    const/4 v0, 0x1

    .line 1220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1207
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1208
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->scrollToChild(I)Z

    .line 1209
    const/4 v0, 0x1

    .line 1211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->onUp()V

    .line 1026
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 992
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mFlingRunnable:Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->stop(Z)V

    .line 995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    .line 997
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 998
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchView:Landroid/view/View;

    .line 999
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1003
    :cond_0
    iput-boolean v2, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mIsFirstScroll:Z

    .line 1006
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 921
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 924
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 925
    iput-boolean v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    .line 930
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->moveNext()Z

    .line 936
    :goto_0
    return v1

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->movePrevious()Z

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1326
    invoke-super {p0, p1, p2, p3}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1333
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1337
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1150
    sparse-switch p1, :sswitch_data_0

    .line 1170
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1153
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1159
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1166
    :sswitch_2
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1150
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
    .line 1175
    sparse-switch p1, :sswitch_data_0

    .line 1203
    invoke-super {p0, p1, p2}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1179
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1180
    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1183
    new-instance v1, Lcom/htc/home/personalize/widgetpicker/Gallery$2;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery$2;-><init>(Lcom/htc/home/personalize/widgetpicker/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/home/personalize/widgetpicker/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1189
    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1190
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1197
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1199
    const/4 v1, 0x1

    goto :goto_0

    .line 1175
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

    .line 337
    invoke-super/range {p0 .. p5}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->onLayout(ZIIII)V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mInLayout:Z

    .line 344
    invoke-virtual {p0, v1, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->layout(IZ)V

    .line 345
    iput-boolean v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mInLayout:Z

    .line 346
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1033
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1037
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/Gallery;->performHapticFeedback(I)Z

    .line 1038
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1039
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 957
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 962
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 963
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 969
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 970
    iput-boolean v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/home/personalize/widgetpicker/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->trackMotionScroll(I)V

    .line 982
    iput-boolean v4, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mIsFirstScroll:Z

    .line 983
    return v3

    .line 975
    :cond_2
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    .line 976
    iput-boolean v4, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1048
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 894
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 897
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->scrollToChild(I)Z

    .line 900
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/home/personalize/widgetpicker/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 906
    :cond_1
    const/4 v0, 0x1

    .line 909
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 876
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 878
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 879
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 881
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->onUp()V

    .line 886
    :cond_0
    :goto_0
    return v1

    .line 882
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mFlingRunnable:Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

    #getter for: Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->access$200(Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->scrollIntoSlots()V

    .line 1018
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->dispatchUnpress()V

    .line 1019
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 536
    invoke-super {p0}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->selectionChanged()V

    .line 538
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 256
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mAnimationDuration:I

    .line 257
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldCallbackDuringFling:Z

    .line 230
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 244
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1297
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1298
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mGravity:I

    .line 1299
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->requestLayout()V

    .line 1301
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1252
    invoke-super {p0, p1}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1255
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->updateSelectedItemMetadata()V

    .line 1256
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 268
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mSpacing:I

    .line 269
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 280
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mUnselectedAlpha:F

    .line 281
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1109
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1110
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1111
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/home/personalize/widgetpicker/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1114
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
    .line 1096
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1097
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1098
    const/4 v3, 0x0

    .line 1102
    :goto_0
    return v3

    .line 1101
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1102
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 395
    :goto_0
    return-void

    .line 367
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 369
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 370
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 373
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery;->mFlingRunnable:Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;

    #calls: Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->access$100(Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;Z)V

    .line 374
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->onFinishedMovement()V

    .line 377
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 379
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->detachOffScreenChildren(Z)V

    .line 381
    if-eqz v1, :cond_3

    .line 383
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->fillToGalleryRight()V

    .line 390
    :goto_2
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mRecycler:Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/home/personalize/widgetpicker/AbsSpinner$RecycleBin;->clear()V

    .line 392
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->setSelectionToCenterChild()V

    .line 394
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 367
    goto :goto_1

    .line 386
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
