.class public Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
.super Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;
.source "TwoWayGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;,
        Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "TwoWayGallery"

.field private static final localLOGV:Z


# instance fields
.field private DEBUG:Z

.field private bounceable:Z

.field private closeOverbound:Z

.field private horizontal:Z

.field private mAnimationDuration:I

.field private mBottomMost:I

.field private mContextMenuInfo:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsTouchDown:Z

.field private mLeftMost:I

.field private mMaxScrollOverhead:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTopMost:I

.field private mUnselectedAlpha:F

.field private onScrollStartPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 209
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
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

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    .line 78
    const/16 v5, 0x190

    iput v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mAnimationDuration:I

    .line 97
    iput-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    .line 102
    iput-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsTouchDown:Z

    .line 104
    iput-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    .line 114
    iput-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->closeOverbound:Z

    .line 115
    iput-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->bounceable:Z

    .line 147
    new-instance v5, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;-><init>(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V

    iput-object v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    .line 153
    new-instance v5, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$1;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$1;-><init>(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V

    iput-object v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 177
    iput-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldCallbackDuringFling:Z

    .line 182
    iput-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 471
    const/16 v5, 0x50

    iput v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mMaxScrollOverhead:I

    .line 1585
    iput v8, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->onScrollStartPos:I

    .line 215
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 216
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 218
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 222
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 223
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setGravity(I)V

    .line 226
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 228
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 229
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAnimationDuration(I)V

    .line 232
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 234
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setSpacing(I)V

    .line 236
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 238
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setUnselectedAlpha(F)V

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGroupFlags:I

    .line 247
    return-void
.end method

.method static synthetic access$002(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$802(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method private calculateLeft(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1472
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getMeasuredWidth()I

    move-result v3

    .line 1473
    .local v3, myWidth:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1475
    .local v2, childWidth:I
    :goto_1
    const/4 v1, 0x0

    .line 1477
    .local v1, childLeft:I
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGravity:I

    packed-switch v4, :pswitch_data_0

    .line 1486
    :pswitch_0
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    .line 1487
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v0, 0x2

    add-int v1, v4, v5

    .line 1490
    .end local v0           #availableSpace:I
    :goto_2
    return v1

    .line 1472
    .end local v1           #childLeft:I
    .end local v2           #childWidth:I
    .end local v3           #myWidth:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getWidth()I

    move-result v3

    goto :goto_0

    .line 1473
    .restart local v3       #myWidth:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    .line 1479
    .restart local v1       #childLeft:I
    .restart local v2       #childWidth:I
    :pswitch_1
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 1480
    goto :goto_2

    .line 1482
    :pswitch_2
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v4

    sub-int v1, v4, v2

    .line 1483
    goto :goto_2

    .line 1477
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1450
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getMeasuredHeight()I

    move-result v3

    .line 1451
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1453
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 1455
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1467
    :goto_2
    return v2

    .line 1450
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1451
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1457
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1458
    goto :goto_2

    .line 1460
    :sswitch_1
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1461
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1462
    goto :goto_2

    .line 1464
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1455
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 12
    .parameter "toLeftTop"

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v8

    .line 645
    .local v8, numChildren:I
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 646
    .local v2, firstPosition:I
    const/4 v9, 0x0

    .line 647
    .local v9, start:I
    const/4 v1, 0x0

    .line 650
    .local v1, count:I
    iget-boolean v10, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v10, :cond_4

    .line 651
    if-eqz p1, :cond_3

    .line 652
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    .line 653
    .local v4, galleryLeft:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 654
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_2

    .line 703
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v9, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->detachViewsFromParent(II)V

    .line 705
    if-eqz p1, :cond_1

    .line 706
    iget v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 708
    :cond_1
    return-void

    .line 658
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 659
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 653
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 663
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    .end local v7           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    sub-int v5, v10, v11

    .line 664
    .local v5, galleryRight:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_1
    if-ltz v7, :cond_0

    .line 665
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 666
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    if-le v10, v5, :cond_0

    .line 669
    move v9, v7

    .line 670
    add-int/lit8 v1, v1, 0x1

    .line 671
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 664
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 677
    .end local v0           #child:Landroid/view/View;
    .end local v5           #galleryRight:I
    .end local v7           #i:I
    :cond_4
    if-eqz p1, :cond_5

    .line 678
    iget v6, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    .line 679
    .local v6, galleryTop:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v8, :cond_0

    .line 680
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 681
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    if-ge v10, v6, :cond_0

    .line 684
    add-int/lit8 v1, v1, 0x1

    .line 685
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 679
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 689
    .end local v0           #child:Landroid/view/View;
    .end local v6           #galleryTop:I
    .end local v7           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 690
    .local v3, galleryBottom:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_0

    .line 691
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    if-le v10, v3, :cond_0

    .line 695
    move v9, v7

    .line 696
    add-int/lit8 v1, v1, 0x1

    .line 697
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 690
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1787
    const/4 v6, 0x0

    .line 1789
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemLongClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemLongClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1794
    :cond_0
    if-nez v6, :cond_1

    .line 1795
    new-instance v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mContextMenuInfo:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterContextMenuInfo;

    .line 1796
    invoke-super {p0, p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1799
    :cond_1
    if-eqz v6, :cond_2

    .line 1800
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->performHapticFeedback(I)Z

    .line 1803
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1717
    if-eqz p1, :cond_0

    .line 1718
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1721
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setPressed(Z)V

    .line 1725
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1729
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1730
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1729
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1733
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setPressed(Z)V

    .line 1737
    return-void
.end method

.method private fillToGalleryBottom()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1224
    iget v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    .line 1225
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    sub-int v2, v7, v8

    .line 1226
    .local v2, galleryBottom:I
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v4

    .line 1227
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    .line 1230
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1234
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1235
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int v0, v7, v4

    .line 1236
    .local v0, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v1, v7, v3

    .line 1243
    .local v1, curTopEdge:I
    :goto_0
    if-ge v1, v2, :cond_1

    if-ge v0, v5, :cond_1

    .line 1244
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    sub-int v7, v0, v7

    invoke-direct {p0, v0, v7, v1, v9}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 1247
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v1, v7, v3

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    .end local v0           #curPosition:I
    .end local v1           #curTopEdge:I
    :cond_0
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0       #curPosition:I
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 1239
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    .line 1240
    .restart local v1       #curTopEdge:I
    iput-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1250
    :cond_1
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1254
    iget v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    .line 1255
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    .line 1258
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1262
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1263
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 1264
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1272
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 1273
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1276
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 1279
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1280
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1267
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 1268
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 1269
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1282
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1285
    iget v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    .line 1286
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 1287
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v4

    .line 1288
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    .line 1291
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1295
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1296
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 1297
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1304
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 1305
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 1308
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1299
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 1300
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    .line 1301
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1311
    :cond_1
    return-void
.end method

.method private fillToGalleryTop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1192
    iget v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    .line 1193
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    .line 1196
    .local v2, galleryTop:I
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1200
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1201
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 1202
    .local v1, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    .line 1210
    .local v0, curBottomEdge:I
    :goto_0
    if-le v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 1211
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1214
    iput v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 1217
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    .line 1218
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1205
    .end local v0           #curBottomEdge:I
    .end local v1           #curPosition:I
    :cond_0
    const/4 v1, 0x0

    .line 1206
    .restart local v1       #curPosition:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    iget v6, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1207
    .restart local v0       #curBottomEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1221
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    .line 621
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static getCenterOfView(Landroid/view/View;Z)I
    .locals 2
    .parameter "view"
    .parameter "horizontal"

    .prologue
    .line 630
    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 633
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeftTop"

    .prologue
    .line 1332
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    if-nez v4, :cond_1

    .line 1333
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    invoke-virtual {v4, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 1334
    .local v0, child:Landroid/view/View;
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v4, :cond_0

    .line 1335
    if-eqz v0, :cond_1

    .line 1337
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1340
    .local v2, childLeft:I
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mRightMost:I

    .line 1341
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mLeftMost:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mLeftMost:I

    .line 1344
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1371
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 1349
    .end local v1           #child:Landroid/view/View;
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1351
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1354
    .local v3, childTop:I
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mBottomMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mBottomMost:I

    .line 1355
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mTopMost:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mTopMost:I

    .line 1358
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1360
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0

    .line 1366
    .end local v1           #child:Landroid/view/View;
    .end local v3           #childTop:I
    :cond_1
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1369
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1371
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 602
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 601
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 604
    :cond_0
    return-void
.end method

.method private offsetChildrenTopAndBottom2(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 609
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 608
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 611
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    .line 738
    invoke-super {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->selectionChanged()V

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->invalidate()V

    .line 741
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 731
    :cond_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 2
    .parameter "childPosition"

    .prologue
    .line 1922
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1923
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1926
    const/4 v1, 0x1

    .line 1929
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild(Z)V
    .locals 10
    .parameter "motionToLeftTop"

    .prologue
    const/4 v6, 0x0

    .line 865
    if-eqz p1, :cond_1

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    add-int/lit8 v4, v7, -0x1

    .line 866
    .local v4, extremeItemPosition:I
    :goto_0
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 868
    .local v2, extremeChild:Landroid/view/View;
    if-nez v2, :cond_2

    .line 918
    :cond_0
    :goto_1
    return-void

    .end local v2           #extremeChild:Landroid/view/View;
    .end local v4           #extremeItemPosition:I
    :cond_1
    move v4, v6

    .line 865
    goto :goto_0

    .line 872
    .restart local v2       #extremeChild:Landroid/view/View;
    .restart local v4       #extremeItemPosition:I
    :cond_2
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->bounceable:Z

    if-eqz v7, :cond_0

    .line 875
    const/4 v0, 0x0

    .line 877
    .local v0, distance:I
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v7, :cond_7

    .line 878
    if-eqz p1, :cond_6

    .line 879
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v3, v7, v8

    .line 880
    .local v3, extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    .line 895
    .local v5, viewEdge:I
    :goto_2
    if-eqz p1, :cond_9

    .line 896
    sub-int v1, v5, v3

    .line 897
    .local v1, edgeDifference:I
    if-gt v3, v5, :cond_3

    .line 899
    move v0, v1

    .line 908
    :cond_3
    :goto_3
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 909
    const-string v7, "TwoWayGallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSelectionToCenterChild: distance="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_4
    if-nez v0, :cond_5

    .line 913
    iput-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->closeOverbound:Z

    .line 916
    :cond_5
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    invoke-virtual {v6, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .line 882
    .end local v1           #edgeDifference:I
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    sub-int v3, v7, v8

    .line 883
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    .restart local v5       #viewEdge:I
    goto :goto_2

    .line 886
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_7
    if-eqz p1, :cond_8

    .line 887
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v3, v7, v8

    .line 888
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    .restart local v5       #viewEdge:I
    goto :goto_2

    .line 890
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int v3, v7, v8

    .line 891
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    .restart local v5       #viewEdge:I
    goto :goto_2

    .line 902
    :cond_9
    sub-int v1, v5, v3

    .line 903
    .restart local v1       #edgeDifference:I
    if-lt v3, v5, :cond_3

    .line 905
    move v0, v1

    goto :goto_3
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 12
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeftTop"

    .prologue
    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;

    .line 1391
    .local v7, lp:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;
    if-nez v7, :cond_0

    .line 1392
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .end local v7           #lp:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;
    check-cast v7, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;

    .line 1395
    .restart local v7       #lp:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v9, -0x1

    :goto_0
    invoke-virtual {p0, p1, v9, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1397
    if-nez p2, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 1400
    iget v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mHeightMeasureSpec:I

    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1402
    .local v1, childHeightSpec:I
    iget v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mWidthMeasureSpec:I

    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v9, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1406
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1411
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1412
    .local v8, width:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1419
    .local v6, height:I
    iget-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v9, :cond_4

    .line 1420
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1421
    .local v4, childTop:I
    add-int v0, v4, v6

    .line 1422
    .local v0, childBottom:I
    if-eqz p4, :cond_3

    .line 1423
    move v2, p3

    .line 1424
    .local v2, childLeft:I
    add-int v3, v2, v8

    .line 1440
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1441
    return-void

    .line 1395
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v6           #height:I
    .end local v8           #width:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1397
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1426
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v6       #height:I
    .restart local v8       #width:I
    :cond_3
    sub-int v2, p3, v8

    .line 1427
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2

    .line 1430
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_4
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1431
    .restart local v2       #childLeft:I
    add-int v3, v2, v8

    .line 1432
    .restart local v3       #childRight:I
    if-eqz p4, :cond_5

    .line 1433
    move v4, p3

    .line 1434
    .restart local v4       #childTop:I
    add-int v0, v4, v6

    .restart local v0       #childBottom:I
    goto :goto_2

    .line 1436
    .end local v0           #childBottom:I
    .end local v4           #childTop:I
    :cond_5
    sub-int v4, p3, v6

    .line 1437
    .restart local v4       #childTop:I
    move v0, p3

    .restart local v0       #childBottom:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1942
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    .line 1944
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    .line 1945
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1950
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1952
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1953
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1958
    :cond_2
    if-eqz v1, :cond_0

    .line 1961
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1965
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 339
    instance-of v0, p1, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1809
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1755
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1746
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 357
    new-instance v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 349
    new-instance v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 344
    new-instance v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mContextMenuInfo:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 9
    .parameter "motionToLeftTop"
    .parameter "deltaX"

    .prologue
    const/4 v6, 0x0

    .line 476
    iput-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->bounceable:Z

    .line 477
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->bounceable:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->closeOverbound:Z

    if-nez v7, :cond_7

    .line 478
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->closeOverbound:Z

    .line 479
    if-eqz p1, :cond_1

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    add-int/lit8 v4, v7, -0x1

    .line 480
    .local v4, extremeItemPosition:I
    :goto_0
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 482
    .local v2, extremeChild:Landroid/view/View;
    if-nez v2, :cond_2

    move v6, p2

    .line 588
    :cond_0
    :goto_1
    return v6

    .end local v2           #extremeChild:Landroid/view/View;
    .end local v4           #extremeItemPosition:I
    :cond_1
    move v4, v6

    .line 479
    goto :goto_0

    .line 492
    .restart local v2       #extremeChild:Landroid/view/View;
    .restart local v4       #extremeItemPosition:I
    :cond_2
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v7, :cond_4

    .line 493
    if-eqz p1, :cond_3

    .line 494
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v3, v7, v8

    .line 495
    .local v3, extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    .line 510
    .local v5, viewEdge:I
    :goto_2
    if-eqz p1, :cond_6

    .line 511
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mMaxScrollOverhead:I

    sub-int v7, v5, v7

    sub-int v1, v7, v3

    .line 512
    .local v1, edgeDifference:I
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mMaxScrollOverhead:I

    sub-int v7, v5, v7

    if-le v3, v7, :cond_0

    .line 522
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 497
    .end local v1           #edgeDifference:I
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    sub-int v3, v7, v8

    .line 498
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    .restart local v5       #viewEdge:I
    goto :goto_2

    .line 501
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_4
    if-eqz p1, :cond_5

    .line 502
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v3, v7, v8

    .line 503
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    .restart local v5       #viewEdge:I
    goto :goto_2

    .line 505
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int v3, v7, v8

    .line 506
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    .restart local v5       #viewEdge:I
    goto :goto_2

    .line 524
    :cond_6
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mMaxScrollOverhead:I

    add-int/2addr v7, v5

    sub-int v1, v7, v3

    .line 525
    .restart local v1       #edgeDifference:I
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mMaxScrollOverhead:I

    add-int/2addr v7, v5

    if-ge v3, v7, :cond_0

    .line 535
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    .line 538
    .end local v1           #edgeDifference:I
    .end local v2           #extremeChild:Landroid/view/View;
    .end local v3           #extremeChildEdge:I
    .end local v4           #extremeItemPosition:I
    .end local v5           #viewEdge:I
    :cond_7
    if-eqz p1, :cond_9

    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    add-int/lit8 v4, v7, -0x1

    .line 539
    .restart local v4       #extremeItemPosition:I
    :goto_3
    iget v7, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {p0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 541
    .restart local v2       #extremeChild:Landroid/view/View;
    if-nez v2, :cond_a

    .line 542
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 543
    const-string v6, "TwoWayGallery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLimitedMotionScrollAmount: No_bounce- No extremeChild limited deltaX= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v6, p2

    .line 545
    goto/16 :goto_1

    .end local v2           #extremeChild:Landroid/view/View;
    .end local v4           #extremeItemPosition:I
    :cond_9
    move v4, v6

    .line 538
    goto :goto_3

    .line 554
    .restart local v2       #extremeChild:Landroid/view/View;
    .restart local v4       #extremeItemPosition:I
    :cond_a
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v7, :cond_d

    .line 555
    if-eqz p1, :cond_c

    .line 556
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v3, v7, v8

    .line 557
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    .line 572
    .restart local v5       #viewEdge:I
    :goto_4
    if-eqz p1, :cond_f

    .line 573
    if-le v3, v5, :cond_0

    .line 586
    :cond_b
    sub-int v0, v5, v3

    .line 588
    .local v0, centerDifference:I
    if-eqz p1, :cond_10

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_1

    .line 559
    .end local v0           #centerDifference:I
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    sub-int v3, v7, v8

    .line 560
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    .restart local v5       #viewEdge:I
    goto :goto_4

    .line 563
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_d
    if-eqz p1, :cond_e

    .line 564
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v3, v7, v8

    .line 565
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    .restart local v5       #viewEdge:I
    goto :goto_4

    .line 567
    .end local v3           #extremeChildEdge:I
    .end local v5           #viewEdge:I
    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    sub-int v3, v7, v8

    .line 568
    .restart local v3       #extremeChildEdge:I
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    .restart local v5       #viewEdge:I
    goto :goto_4

    .line 579
    :cond_f
    if-lt v3, v5, :cond_b

    goto/16 :goto_1

    .line 588
    .restart local v0       #centerDifference:I
    :cond_10
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_1
.end method

.method public isBounceable()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->bounceable:Z

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    return v0
.end method

.method layout(IZ)V
    .locals 27
    .parameter "delta"
    .parameter "animate"

    .prologue
    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 934
    .local v8, childrenLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    .line 936
    .local v10, childrenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 937
    .local v9, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v7, v24, v25

    .line 939
    .local v7, childrenHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->handleDataChanged()V

    .line 944
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->resetList()V

    .line 1188
    :goto_0
    return-void

    .line 950
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    move/from16 v24, v0

    if-ltz v24, :cond_2

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setSelectedPositionInt(I)V

    .line 955
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->recycleAllViews()V

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->detachAllViewsFromParent()V

    .line 962
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 967
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mRightMost:I

    .line 968
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mLeftMost:I

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 989
    const/16 v22, 0x0

    .line 990
    .local v22, selectedOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 991
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 992
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: selected t="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", l="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLeft()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    .line 995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    sub-int v22, v24, v25

    .line 996
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 997
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: offset in mRight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v21

    .line 1015
    .local v21, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 1016
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 1017
    .local v12, itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    move/from16 v24, v0

    mul-int v24, v24, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    mul-int v25, v25, v26

    add-int v14, v24, v25

    .line 1018
    .local v14, itemsWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1019
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: itemsWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", childrenWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_5
    if-le v14, v10, :cond_e

    .line 1023
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    mul-int v24, v24, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    add-int v15, v24, v25

    .line 1024
    .local v15, leftViewItemsWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 1025
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: leftViewItemsWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", childrenWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_6
    if-ge v15, v10, :cond_8

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    add-int v25, v25, v12

    mul-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    add-int v18, v24, v25

    .line 1030
    .local v18, offset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 1031
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: left offset="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_7
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1036
    .end local v18           #offset:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    sub-int v19, v24, v25

    .line 1037
    .local v19, rightItemCount:I
    add-int/lit8 v24, v19, 0x1

    mul-int v24, v24, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    mul-int v25, v25, v19

    add-int v20, v24, v25

    .line 1038
    .local v20, rightViewItemsWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 1039
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: rightViewItemsWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", childrenWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_9
    move/from16 v0, v20

    if-ge v0, v10, :cond_b

    .line 1042
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    move/from16 v24, v0

    sub-int v24, v24, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v18, v24, v25

    .line 1043
    .restart local v18       #offset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 1044
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: right offset="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_a
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1066
    .end local v12           #itemWidth:I
    .end local v14           #itemsWidth:I
    .end local v15           #leftViewItemsWidth:I
    .end local v18           #offset:I
    .end local v19           #rightItemCount:I
    .end local v20           #rightViewItemsWidth:I
    :cond_b
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryRight()V

    .line 1067
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryLeft()V

    .line 1177
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->clear()V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->invalidate()V

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->checkSelectionChanged()V

    .line 1182
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    .line 1183
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 1184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setNextSelectedPositionInt(I)V

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->updateSelectedItemMetadata()V

    goto/16 :goto_0

    .line 1000
    .end local v21           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 1001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v22, v24, v25

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1003
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: offset in mLeft="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1006
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 1007
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1008
    const-string v24, "TwoWayGallery"

    const-string v25, "layout: offset by left"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1050
    .restart local v12       #itemWidth:I
    .restart local v14       #itemsWidth:I
    .restart local v21       #sel:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v25, v10, v14

    div-int/lit8 v25, v25, 0x2

    add-int v16, v24, v25

    .line 1051
    .local v16, newItemsLeftEdge:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 1052
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: smaller newItemsLeftEdge="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    add-int v25, v25, v12

    mul-int v24, v24, v25

    add-int v18, v24, v16

    .line 1055
    .restart local v18       #offset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 1056
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: smaller offset="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_10
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto/16 :goto_2

    .line 1073
    .end local v12           #itemWidth:I
    .end local v14           #itemsWidth:I
    .end local v16           #newItemsLeftEdge:I
    .end local v18           #offset:I
    .end local v21           #sel:Landroid/view/View;
    .end local v22           #selectedOffset:I
    :cond_11
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mTopMost:I

    .line 1074
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mBottomMost:I

    .line 1091
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 1094
    const/16 v22, 0x0

    .line 1095
    .restart local v22       #selectedOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1a

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    sub-int v22, v24, v25

    .line 1099
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1100
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: offset in mBottom="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v21

    .line 1119
    .restart local v21       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 1120
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1121
    .local v11, itemHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    move/from16 v24, v0

    mul-int v24, v24, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    mul-int v25, v25, v26

    add-int v13, v24, v25

    .line 1122
    .local v13, itemsHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 1123
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: itemsHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", childrenHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_13
    if-le v13, v7, :cond_1c

    .line 1127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    mul-int v24, v24, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    add-int v23, v24, v25

    .line 1128
    .local v23, topViewItemsHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 1129
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: topViewItemsHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", childrenHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_14
    move/from16 v0, v23

    if-ge v0, v7, :cond_16

    .line 1133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    add-int v25, v25, v11

    mul-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v18, v24, v25

    .line 1134
    .restart local v18       #offset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 1135
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: left offset="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_15
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1140
    .end local v18           #offset:I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    sub-int v5, v24, v25

    .line 1141
    .local v5, bottomItemCount:I
    add-int/lit8 v24, v5, 0x1

    mul-int v24, v24, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    mul-int v25, v25, v5

    add-int v6, v24, v25

    .line 1142
    .local v6, bottomViewItemsHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 1143
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: bottomViewItemsWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", childrenHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_17
    if-ge v6, v7, :cond_19

    .line 1146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    move/from16 v24, v0

    sub-int v24, v24, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v18, v24, v25

    .line 1147
    .restart local v18       #offset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_18

    .line 1148
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: right offset="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_18
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1171
    .end local v5           #bottomItemCount:I
    .end local v6           #bottomViewItemsHeight:I
    .end local v11           #itemHeight:I
    .end local v13           #itemsHeight:I
    .end local v18           #offset:I
    .end local v23           #topViewItemsHeight:I
    :cond_19
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryTop()V

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryBottom()V

    goto/16 :goto_3

    .line 1103
    .end local v21           #sel:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1b

    .line 1104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    move/from16 v22, v0

    .line 1105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1106
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: offset in mTop="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1109
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v22

    .line 1110
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1111
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: offset in top="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1154
    .restart local v11       #itemHeight:I
    .restart local v13       #itemsHeight:I
    .restart local v21       #sel:Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v25, v7, v13

    div-int/lit8 v25, v25, 0x2

    add-int v17, v24, v25

    .line 1155
    .local v17, newItemsTopEdge:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1d

    .line 1156
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: smaller newItemsTopEdge="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    move/from16 v25, v0

    add-int v25, v25, v11

    mul-int v24, v24, v25

    add-int v18, v24, v17

    .line 1159
    .restart local v18       #offset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1e

    .line 1160
    const-string v24, "TwoWayGallery"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "layout: smaller offset="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_1e
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_5
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1907
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1908
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->scrollToChild(I)Z

    .line 1910
    const/4 v0, 0x1

    .line 1912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1894
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1895
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->scrollToChild(I)Z

    .line 1897
    const/4 v0, 0x1

    .line 1899
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->onUp()V

    .line 1689
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1654
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->stop(Z)V

    .line 1657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    .line 1659
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1660
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchView:Landroid/view/View;

    .line 1661
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1665
    :cond_0
    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsFirstScroll:Z

    .line 1668
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1563
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1570
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    .line 1575
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1581
    :goto_0
    return v2

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->startUsingVelocity(I)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2008
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2015
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 2019
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1818
    sparse-switch p1, :sswitch_data_0

    .line 1858
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    .line 1854
    :sswitch_1
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1818
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1863
    sparse-switch p1, :sswitch_data_0

    .line 1889
    invoke-super {p0, p1, p2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1867
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1868
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1870
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->dispatchPress(Landroid/view/View;)V

    .line 1871
    new-instance v1, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$2;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$2;-><init>(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1877
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1878
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1883
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mReceivedInvokeKeyDown:Z

    .line 1885
    const/4 v1, 0x1

    goto :goto_0

    .line 1863
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 363
    const-string v1, "TwoWayGallery"

    const-string v2, "onLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-super/range {p0 .. p5}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->onLayout(ZIIII)V

    .line 367
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    invoke-virtual {v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->isOnFling()Z

    move-result v0

    .line 368
    .local v0, isOnFling:Z
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsTouchDown:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    const-string v1, "TwoWayGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject layout()  touch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsTouchDown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fling:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mInLayout:Z

    .line 381
    invoke-virtual {p0, v3, v3}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->layout(IZ)V

    .line 382
    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mInLayout:Z

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1696
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1703
    :goto_0
    return-void

    .line 1700
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->performHapticFeedback(I)Z

    .line 1701
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1702
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

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

    .line 1618
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1622
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1623
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1629
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1638
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v0, :cond_3

    .line 1639
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->trackMotionScroll(I)V

    .line 1644
    :goto_1
    iput-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsFirstScroll:Z

    .line 1645
    return v3

    .line 1633
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1641
    :cond_3
    float-to-int v0, p4

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->trackMotionScroll(I)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1711
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 1524
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    if-ltz v1, :cond_3

    .line 1533
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    if-ne v1, v2, :cond_1

    .line 1552
    :cond_0
    :goto_0
    return v0

    .line 1536
    :cond_1
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSelectedChild:Landroid/view/View;

    .line 1537
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    .line 1540
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    if-ne v1, v2, :cond_0

    .line 1541
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1543
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setSelectedPositionInt(I)V

    .line 1544
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setNextSelectedPositionInt(I)V

    .line 1545
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->checkSelectionChanged()V

    .line 1546
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->invalidate()V

    goto :goto_0

    .line 1552
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 1497
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1499
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1501
    .local v0, action:I
    if-nez v0, :cond_2

    .line 1502
    const-string v2, "TwoWayGallery"

    const-string v3, "Touch Down"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iput-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsTouchDown:Z

    .line 1509
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_3

    .line 1511
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->onUp()V

    .line 1516
    :cond_1
    :goto_1
    return v1

    .line 1504
    :cond_2
    if-ne v0, v4, :cond_0

    .line 1505
    const-string v2, "TwoWayGallery"

    const-string v3, "Touch Up"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mIsTouchDown:Z

    goto :goto_0

    .line 1512
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1513
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->onCancel()V

    goto :goto_1
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1676
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->onScrollStartPos:I

    .line 1677
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->access$100(Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->scrollIntoSlots()V

    .line 1681
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->dispatchUnpress()V

    .line 1682
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 746
    invoke-super {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->selectionChanged()V

    .line 748
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 285
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mAnimationDuration:I

    .line 286
    return-void
.end method

.method public setBounceable(Z)V
    .locals 0
    .parameter "bounceable"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->bounceable:Z

    .line 119
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldCallbackDuringFling:Z

    .line 260
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 273
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1978
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1979
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mGravity:I

    .line 1980
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->requestLayout()V

    .line 1982
    :cond_0
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 0
    .parameter "horizontal"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    .line 108
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1934
    invoke-super {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setSelectedPositionInt(I)V

    .line 1937
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->updateSelectedItemMetadata()V

    .line 1938
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 296
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mSpacing:I

    .line 297
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 307
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mUnselectedAlpha:F

    .line 308
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1778
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1779
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1780
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1783
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
    .line 1765
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1766
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1767
    const/4 v3, 0x0

    .line 1771
    :goto_0
    return v3

    .line 1770
    :cond_0
    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1771
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 468
    :goto_0
    return-void

    .line 424
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 426
    .local v1, toLeftTop:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 428
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 430
    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mFlingRunnable:Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;

    invoke-virtual {v3, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->stop(Z)V

    .line 431
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->onFinishedMovement()V

    .line 435
    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z

    if-eqz v2, :cond_4

    .line 436
    invoke-direct {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->offsetChildrenLeftAndRight(I)V

    .line 438
    invoke-direct {p0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->detachOffScreenChildren(Z)V

    .line 440
    if-eqz v1, :cond_3

    .line 442
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryRight()V

    .line 463
    :goto_2
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->clear()V

    .line 467
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeftTop:Z
    :cond_2
    move v1, v2

    .line 424
    goto :goto_1

    .line 445
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeftTop:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryLeft()V

    goto :goto_2

    .line 449
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->offsetChildrenTopAndBottom2(I)V

    .line 451
    invoke-direct {p0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->detachOffScreenChildren(Z)V

    .line 453
    if-eqz v1, :cond_5

    .line 455
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryBottom()V

    goto :goto_2

    .line 458
    :cond_5
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->fillToGalleryTop()V

    goto :goto_2
.end method
