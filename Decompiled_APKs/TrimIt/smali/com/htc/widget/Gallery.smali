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
    .parameter "context"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 174
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
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

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v6, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 67
    const/16 v5, 0x190

    iput v5, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    .line 104
    new-instance v5, Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/widget/Gallery$FlingRunnable;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v5, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    .line 110
    new-instance v5, Lcom/htc/widget/Gallery$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/Gallery$1;-><init>(Lcom/htc/widget/Gallery;)V

    iput-object v5, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 134
    iput-boolean v7, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 139
    iput-boolean v7, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 167
    const/16 v5, 0x3e9

    iput v5, p0, Lcom/htc/widget/Gallery;->mState:I

    .line 630
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 1613
    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    .line 180
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 181
    iget-object v5, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 183
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 186
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 187
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 188
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setGravity(I)V

    .line 191
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 193
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->setAnimationDuration(I)V

    .line 197
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 199
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->setSpacing(I)V

    .line 201
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 203
    .local v4, unselectedAlpha:F
    const/high16 v5, 0x3f80

    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->setUnselectedAlpha(F)V

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    iget v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    .line 211
    iget v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/widget/Gallery;->mGroupFlags:I

    .line 213
    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->setFastScrollEnabled(Z)V

    .line 215
    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 991
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getMeasuredHeight()I

    move-result v3

    .line 992
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 994
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 996
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1009
    :goto_2
    return v2

    .line 991
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 992
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 998
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 999
    goto :goto_2

    .line 1001
    :sswitch_1
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1003
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1004
    goto :goto_2

    .line 1006
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 996
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
    .line 575
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v6

    .line 576
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    .line 577
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 578
    .local v7, start:I
    const/4 v1, 0x0

    .line 580
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 581
    iget v3, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    .line 582
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 583
    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-le v8, v3, :cond_2

    .line 606
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/widget/Gallery;->detachViewsFromParent(II)V

    .line 608
    if-eqz p1, :cond_1

    .line 609
    iget v8, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    .line 610
    iget v8, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    .line 612
    :cond_1
    return-void

    .line 588
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 589
    iget-object v8, p0, Lcom/htc/widget/Gallery;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 582
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 593
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/Gallery;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 594
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 595
    invoke-virtual {p0, v5}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v8, v4, :cond_0

    .line 599
    move v7, v5

    .line 600
    add-int/lit8 v1, v1, 0x1

    .line 601
    iget-object v8, p0, Lcom/htc/widget/Gallery;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 594
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1257
    const/4 v6, 0x0

    .line 1259
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mOnItemLongClickListener:Lcom/htc/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1264
    :cond_0
    if-nez v6, :cond_1

    .line 1265
    new-instance v0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    .line 1266
    invoke-super {p0, p0}, Lcom/htc/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1269
    :cond_1
    if-eqz v6, :cond_2

    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    .line 1273
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1193
    if-eqz p1, :cond_0

    .line 1194
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1197
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->setPressed(Z)V

    .line 1198
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1202
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1203
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1202
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1206
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->setPressed(Z)V

    .line 1207
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 769
    invoke-virtual {p0, v8}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 770
    .local v2, firstChild:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 771
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/TaskInfo;

    .line 775
    :cond_0
    iget v4, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 776
    .local v4, itemSpacing:I
    iget v3, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    .line 779
    .local v3, galleryLeft:I
    invoke-virtual {p0, v8}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 783
    .local v5, prevIterationView:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 784
    iget v6, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v0, v6, -0x1

    .line 785
    .local v0, curPosition:I
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v4

    .line 793
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v3, :cond_2

    if-ltz v0, :cond_2

    .line 794
    iget v6, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    sub-int v6, v0, v6

    invoke-direct {p0, v0, v6, v1, v8}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    .line 798
    iput v0, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    .line 801
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v4

    .line 802
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 788
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_1
    const/4 v0, 0x0

    .line 789
    .restart local v0       #curPosition:I
    iget v6, p0, Lcom/htc/widget/Gallery;->mRight:I

    iget v7, p0, Lcom/htc/widget/Gallery;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/widget/Gallery;->mPaddingRight:I

    sub-int v1, v6, v7

    .line 790
    .restart local v1       #curRightEdge:I
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 804
    :cond_2
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 807
    iget v3, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 808
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/widget/Gallery;->mRight:I

    iget v8, p0, Lcom/htc/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/Gallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 809
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v4

    .line 810
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/widget/Gallery;->mItemCount:I

    .line 813
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 817
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 818
    iget v7, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 819
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 826
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 827
    iget v7, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 831
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Lcom/htc/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    .line 822
    iget v0, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    .line 823
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 834
    :cond_1
    return-void
.end method

.method private getLeftOfGallery()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method private static getLeftOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method private getRightOfGallery()I
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getRightOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 897
    iget-boolean v3, p0, Lcom/htc/widget/Gallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 898
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 899
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 901
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 904
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 907
    .local v2, childLeft:I
    iget v3, p0, Lcom/htc/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/Gallery;->mRightMost:I

    .line 909
    iget v3, p0, Lcom/htc/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/Gallery;->mLeftMost:I

    .line 912
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 927
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 919
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 921
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 925
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 927
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 521
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 520
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 523
    :cond_0
    return-void
.end method

.method private offsetChildrenLeftAndRight(III)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "offset"

    .prologue
    .line 527
    iget v2, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, v2

    .line 528
    iget v2, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p2, v2

    .line 529
    add-int/lit8 v1, p2, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 530
    invoke-virtual {p0, v1}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 529
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 535
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 642
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 645
    return-void
.end method

.method private putGalleryThumb()V
    .locals 3

    .prologue
    .line 837
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v0

    .line 839
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 842
    .end local v0           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1
    .parameter "childPosition"

    .prologue
    .line 1277
    const/4 v0, 0x0

    return v0
.end method

.method private setChildLayoutParams(ILandroid/view/View;)V
    .locals 9
    .parameter "position"
    .parameter "child"

    .prologue
    const/4 v8, 0x0

    .line 1576
    if-nez p2, :cond_0

    .line 1607
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedPosition()I

    move-result v5

    .line 1580
    .local v5, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedPosition()I

    move-result v6

    .line 1581
    .local v6, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedPosition()I

    move-result v0

    .line 1582
    .local v0, expandedPos:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1583
    .local v2, paddingLeft:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 1584
    .local v4, paddingTop:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 1585
    .local v3, paddingRight:I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 1587
    .local v1, paddingBottom:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 1588
    if-ne p1, v5, :cond_1

    .line 1589
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1590
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    .line 1591
    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1592
    :cond_1
    if-ne p1, v6, :cond_2

    .line 1593
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1594
    invoke-virtual {p2, v8, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1595
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1596
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1597
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v8

    sub-int v2, v7, v8

    .line 1598
    invoke-virtual {p2, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1600
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    invoke-virtual {p2, v8, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1604
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1605
    invoke-virtual {p2, v8, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 946
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 948
    .local v6, lp:Lcom/htc/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/htc/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/widget/Gallery$LayoutParams;

    .line 952
    .restart local v6       #lp:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 954
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 957
    iget v8, p0, Lcom/htc/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 959
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 963
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 969
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 970
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 972
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 973
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 974
    move v2, p3

    .line 975
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 981
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 982
    return-void

    .line 952
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

    .line 954
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 977
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 978
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1290
    iget-object v1, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1292
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1293
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1298
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1300
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1301
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1306
    :cond_2
    if-eqz v1, :cond_0

    .line 1309
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1313
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method calibrateThumb(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->calibrateThumb(I)V

    .line 875
    :cond_0
    return-void
.end method

.method cancelAnimation()V
    .locals 0

    .prologue
    .line 1610
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->cancelAnimation()V

    .line 1611
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 307
    instance-of v0, p1, Lcom/htc/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/htc/widget/Gallery;->mItemCount:I

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1225
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1216
    return-void
.end method

.method public forceStopPartialFling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 633
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 634
    iput-boolean v1, p0, Lcom/htc/widget/Gallery;->mIsForceStop:Z

    .line 635
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getExpandedWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 317
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 312
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getReducedWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 333
    new-instance v0, Lcom/htc/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getShrinkedWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1334
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 281
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 282
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 284
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mContextMenuInfo:Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 465
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v6}, Lcom/htc/widget/Gallery$FlingRunnable;->isPartialFling()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v5, p2

    .line 508
    :cond_0
    :goto_0
    return v5

    .line 469
    :cond_1
    if-eqz p1, :cond_2

    iget v6, p0, Lcom/htc/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 470
    .local v3, extremeItemPosition:I
    :goto_1
    iget v6, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 472
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_3

    move v5, p2

    .line 473
    goto :goto_0

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_2
    move v3, v5

    .line 469
    goto :goto_1

    .line 476
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_3
    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/htc/widget/Gallery;->getRightOfView(Landroid/view/View;)I

    move-result v2

    .line 482
    .local v2, extremeChildBound:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getDragBinGridView()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 483
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getRightOfGallery()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getLayoutParamsWidth()I

    move-result v7

    sub-int v4, v6, v7

    .line 492
    .local v4, galleryBound:I
    :goto_3
    if-eqz p1, :cond_9

    .line 493
    if-le v2, v4, :cond_0

    .line 506
    :cond_4
    sub-int v0, v4, v2

    .line 508
    .local v0, boundDifference:I
    if-eqz p1, :cond_a

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 476
    .end local v0           #boundDifference:I
    .end local v2           #extremeChildBound:I
    .end local v4           #galleryBound:I
    :cond_5
    invoke-static {v1}, Lcom/htc/widget/Gallery;->getLeftOfView(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 483
    .restart local v2       #extremeChildBound:I
    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLeftOfGallery()I

    move-result v4

    goto :goto_3

    .line 486
    :cond_7
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getRightOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/Gallery;->mHighBorder:I

    sub-int v4, v6, v7

    .restart local v4       #galleryBound:I
    :goto_4
    goto :goto_3

    .end local v4           #galleryBound:I
    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->getLeftOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/Gallery;->mLowBorder:I

    add-int v4, v6, v7

    goto :goto_4

    .line 499
    .restart local v4       #galleryBound:I
    :cond_9
    if-lt v2, v4, :cond_4

    goto :goto_0

    .line 508
    .restart local v0       #boundDifference:I
    :cond_a
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 10
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v9, 0x0

    .line 666
    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_1

    .line 668
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/Gallery;->mLowBorder:I

    add-int v0, v6, v7

    .line 671
    .local v0, childrenLeft:I
    invoke-virtual {p0, v9}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 672
    .local v1, firstChild:Landroid/view/View;
    const/4 v5, 0x0

    .line 673
    .local v5, width:I
    iput v0, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    .line 675
    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    if-nez v6, :cond_3

    .line 677
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/TaskInfo;

    .line 679
    .local v2, info:Lcom/htc/widget/TaskInfo;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    .line 680
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 684
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 685
    iget v6, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    .line 693
    .end local v2           #info:Lcom/htc/widget/TaskInfo;
    :cond_0
    :goto_0
    iget v6, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    if-le v6, v0, :cond_1

    .line 696
    iget v6, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    .line 700
    .end local v0           #childrenLeft:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v5           #width:I
    :cond_1
    iget-boolean v6, p0, Lcom/htc/widget/Gallery;->mDataChanged:Z

    if-eqz v6, :cond_2

    .line 701
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->handleDataChanged()V

    .line 705
    :cond_2
    iget v6, p0, Lcom/htc/widget/Gallery;->mItemCount:I

    if-nez v6, :cond_4

    .line 706
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->resetList()V

    .line 764
    :goto_1
    return-void

    .line 689
    .restart local v0       #childrenLeft:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v5       #width:I
    :cond_3
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    goto :goto_0

    .line 711
    .end local v0           #childrenLeft:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v5           #width:I
    :cond_4
    iget v6, p0, Lcom/htc/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v6, :cond_5

    .line 712
    iget v6, p0, Lcom/htc/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setSelectedPositionInt(I)V

    .line 716
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->recycleAllViews()V

    .line 719
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->detachAllViewsFromParent()V

    .line 725
    iput v9, p0, Lcom/htc/widget/Gallery;->mRightMost:I

    .line 726
    iput v9, p0, Lcom/htc/widget/Gallery;->mLeftMost:I

    .line 728
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/htc/widget/Gallery;->mState:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_6

    .line 729
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->getFirstVisiblePosition()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    .line 730
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/widget/Gallery;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    .line 738
    :cond_6
    iget v6, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    iget v7, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    iget v8, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/htc/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 741
    .local v3, sel:Landroid/view/View;
    iget v4, p0, Lcom/htc/widget/Gallery;->mFirstItemX:I

    .line 742
    .local v4, selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 744
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryRight()V

    .line 745
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLeft()V

    .line 746
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 749
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 750
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v6, :cond_7

    .line 751
    iget-object v6, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/widget/FastScroller;->clearCache()V

    .line 756
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 757
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->checkSelectionChanged()V

    .line 759
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mDataChanged:Z

    .line 760
    iput-boolean v9, p0, Lcom/htc/widget/Gallery;->mNeedSync:Z

    .line 761
    iget v6, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 763
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    goto :goto_1
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1164
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    .line 1165
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1124
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/htc/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    .line 1129
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1132
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1135
    :cond_0
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1136
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1137
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1141
    :cond_1
    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    .line 1144
    return v2
.end method

.method onDrawerClosed(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->setCurrentThumb(I)V

    .line 1562
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->showThumb()V

    .line 1566
    :cond_0
    return-void
.end method

.method onDrawerOpened()V
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->closeThumb()V

    .line 1572
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1061
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1068
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1074
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1339
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1346
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1350
    :cond_0
    return-void
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

    .line 350
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/Gallery;->mInLayout:Z

    .line 357
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/Gallery;->layout(IZ)V

    .line 358
    iput-boolean v1, p0, Lcom/htc/widget/Gallery;->mInLayout:Z

    .line 359
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1172
    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1176
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->performHapticFeedback(I)Z

    .line 1177
    iget v2, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1178
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

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

    .line 1093
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1097
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1098
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1104
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1112
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1114
    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mIsFirstScroll:Z

    .line 1115
    return v3

    .line 1108
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1187
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1039
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1042
    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->scrollToChild(I)Z

    .line 1045
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1050
    :cond_1
    const/4 v0, 0x1

    .line 1053
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1014
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v4, :cond_1

    .line 1015
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v4, p1}, Lcom/htc/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1016
    .local v1, intercepted:Z
    if-eqz v1, :cond_1

    move v2, v3

    .line 1031
    .end local v1           #intercepted:Z
    :cond_0
    :goto_0
    return v2

    .line 1021
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1023
    .local v2, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1024
    .local v0, action:I
    if-ne v0, v3, :cond_2

    .line 1026
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onUp()V

    goto :goto_0

    .line 1027
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1154
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1157
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->dispatchUnpress()V

    .line 1158
    return-void
.end method

.method public partialFling(III)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"

    .prologue
    .line 627
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/Gallery;->partialFling(IIIZ)V

    .line 628
    return-void
.end method

.method public partialFling(IIIZ)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"
    .parameter "isRequiredFill"

    .prologue
    .line 621
    if-eqz p3, :cond_0

    .line 622
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery$FlingRunnable;->startPartialUsingDistance(IIIZ)V

    .line 624
    :cond_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 1
    .parameter "scrollAmount"

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 618
    :cond_0
    return-void
.end method

.method scrollTo(I)V
    .locals 5
    .parameter "deltax"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 382
    .local v1, itemWidth:I
    iget v3, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    mul-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/Gallery;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v4}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v4

    add-int v2, v3, v4

    .line 383
    .local v2, previousDeltax:I
    sub-int v3, v2, p1

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 650
    invoke-super {p0}, Lcom/htc/widget/AbsSpinner;->selectionChanged()V

    .line 652
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 253
    iput p1, p0, Lcom/htc/widget/Gallery;->mAnimationDuration:I

    .line 254
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 228
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 241
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1326
    iget v0, p0, Lcom/htc/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1327
    iput p1, p0, Lcom/htc/widget/Gallery;->mGravity:I

    .line 1328
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->requestLayout()V

    .line 1330
    :cond_0
    return-void
.end method

.method setOrientationChangedFlag(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1616
    iput-boolean p1, p0, Lcom/htc/widget/Gallery;->mOrientationChangedFlag:Z

    .line 1617
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1282
    invoke-super {p0, p1}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1285
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1286
    return-void
.end method

.method setSelectionFromTop(II)V
    .locals 5
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1353
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 1356
    :cond_0
    iget v3, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int v1, v3, p1

    .line 1357
    .local v1, delta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1358
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1359
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .line 1360
    .local v2, distance:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1363
    .end local v2           #distance:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->setSelection(I)V

    goto :goto_0
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 264
    iput p1, p0, Lcom/htc/widget/Gallery;->mSpacing:I

    .line 265
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 275
    iput p1, p0, Lcom/htc/widget/Gallery;->mUnselectedAlpha:F

    .line 276
    return-void
.end method

.method setUpThumb(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 845
    if-eqz p1, :cond_1

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/Gallery$LayoutParams;

    .line 848
    .local v5, lp:Lcom/htc/widget/Gallery$LayoutParams;
    if-nez v5, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #lp:Lcom/htc/widget/Gallery$LayoutParams;
    check-cast v5, Lcom/htc/widget/Gallery$LayoutParams;

    .line 853
    .restart local v5       #lp:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_0
    iget v6, p0, Lcom/htc/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v7, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v5, Lcom/htc/widget/Gallery$LayoutParams;->height:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 855
    .local v1, childHeightSpec:I
    iget v6, p0, Lcom/htc/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v7, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/htc/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v5, Lcom/htc/widget/Gallery$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 859
    .local v4, childWidthSpec:I
    invoke-virtual {p1, v4, v1}, Landroid/view/View;->measure(II)V

    .line 860
    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/htc/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v3

    .line 861
    .local v3, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v0, v3, v6

    .line 863
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 864
    .local v2, childRight:I
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 869
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childRight:I
    .end local v3           #childTop:I
    .end local v4           #childWidthSpec:I
    .end local v5           #lp:Lcom/htc/widget/Gallery$LayoutParams;
    :cond_1
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1248
    iget v2, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/Gallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1249
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1250
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/widget/Gallery;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/Gallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1253
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
    .line 1235
    invoke-virtual {p0, p1}, Lcom/htc/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1236
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1237
    const/4 v3, 0x0

    .line 1241
    :goto_0
    return v3

    .line 1240
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1241
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method stopFlingRunnable()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 369
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 371
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 424
    :goto_0
    return-void

    .line 397
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 399
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 400
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 402
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 403
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 406
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 408
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 410
    if-eqz v1, :cond_3

    .line 412
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryRight()V

    .line 419
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/Gallery;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 421
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    .line 422
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invokeOnItemScrollListener()V

    .line 423
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 397
    goto :goto_1

    .line 415
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method

.method trackMotionScroll(IIIZ)V
    .locals 4
    .parameter "from"
    .parameter "to"
    .parameter "deltaX"
    .parameter "isRequiredFill"

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 462
    :goto_0
    return-void

    .line 433
    :cond_0
    if-gez p3, :cond_3

    const/4 v1, 0x1

    .line 435
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/htc/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 436
    .local v0, limitedDeltaX:I
    if-eq v0, p3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/htc/widget/Gallery;->mFlingRunnable:Lcom/htc/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V

    .line 439
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->onFinishedMovement()V

    .line 442
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/Gallery;->offsetChildrenLeftAndRight(III)V

    .line 445
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 447
    if-eqz p4, :cond_2

    .line 448
    if-eqz v1, :cond_4

    .line 450
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryRight()V

    .line 457
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->putGalleryThumb()V

    .line 459
    iget-object v2, p0, Lcom/htc/widget/Gallery;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/AbsSpinner$RecycleBin;->clear()V

    .line 461
    invoke-virtual {p0}, Lcom/htc/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_3
    move v1, v2

    .line 433
    goto :goto_1

    .line 453
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
