.class public Lcom/htc/opensense/widget/HtcFilmstripView;
.super Lcom/htc/opensense/widget/AlbumAbsSpinner;
.source "HtcFilmstripView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;,
        Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;,
        Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;
    }
.end annotation


# static fields
.field public static final FLAG_GALLERY_BOUNCE:Z = true

.field public static final FLAG_SCROLL_STATE_EIRLIER:Z = false

.field protected static MAX_VELOCITY_GALLERY:I = 0x0

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = null

.field private static final TOUCH_MODE_NORMAL:I = 0x0

.field private static final TOUCH_MODE_SINGLE_TAP:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private closeOverbound:Z

.field private mAnimationDuration:I

.field private mChildOffsetX:I

.field private mChildOffsetY:I

.field private mContext:Landroid/app/Activity;

.field private mContextMenuInfo:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mInterceptTouchEvt:Z

.field private mIsFirstScroll:Z

.field private mLeftMost:I

.field private mMaxScrollOverhead:I

.field private mMaxVelocity:I

.field private mReceivedInvokeKeyDown:Z

.field private mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchMode:I

.field private mUnselectedAlpha:F

.field private onScrollStartPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x7d0

    sput v0, Lcom/htc/opensense/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    .line 57
    const-class v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 201
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    .line 203
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

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    .line 72
    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    .line 78
    const/16 v5, 0x3e8

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I

    .line 115
    new-instance v5, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    .line 121
    new-instance v5, Lcom/htc/opensense/widget/HtcFilmstripView$1;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/HtcFilmstripView$1;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 145
    iput-boolean v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    .line 150
    iput-boolean v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    .line 183
    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

    .line 188
    sget v5, Lcom/htc/opensense/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxVelocity:I

    .line 190
    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetX:I

    .line 191
    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetY:I

    .line 193
    new-instance v5, Lcom/htc/opensense/album/util/RecycleBin;

    invoke-direct {v5}, Lcom/htc/opensense/album/util/RecycleBin;-><init>()V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    .line 489
    const/16 v5, 0x50

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    .line 1173
    iput v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    .line 1891
    iput-boolean v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    move-object v5, p1

    .line 208
    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    .line 210
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 212
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 214
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 218
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 219
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setGravity(I)V

    .line 222
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 224
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setAnimationDuration(I)V

    .line 228
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 230
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSpacing(I)V

    .line 232
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 234
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setUnselectedAlpha(F)V

    .line 236
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    .line 242
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    .line 243
    return-void
.end method

.method private ForceSelectedChildBeFocused()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1067
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1068
    const/4 v0, 0x0

    .line 1075
    :goto_0
    return v0

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1075
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/opensense/widget/HtcFilmstripView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/HtcFilmstripView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/HtcFilmstripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/HtcFilmstripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/opensense/widget/HtcFilmstripView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense/widget/HtcFilmstripView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;Z)I
    .locals 6
    .parameter "child"
    .parameter "lp"
    .parameter "duringLayout"

    .prologue
    .line 1016
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getMeasuredHeight()I

    move-result v3

    .line 1017
    .local v3, myHeight:I
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1019
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 1021
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1034
    :goto_2
    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetX:I

    add-int/2addr v4, v2

    return v4

    .line 1016
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1017
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1023
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1024
    goto :goto_2

    .line 1026
    :sswitch_1
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1028
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1029
    goto :goto_2

    .line 1031
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1021
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
    .line 591
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v6

    .line 592
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    .line 593
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 594
    .local v7, start:I
    const/4 v1, 0x0

    .line 596
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 597
    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I

    .line 598
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 599
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 621
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->detachViewsFromParent(II)V

    .line 623
    if-eqz p1, :cond_1

    .line 624
    iget v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    .line 626
    :cond_1
    return-void

    .line 603
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 598
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 608
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 609
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 610
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 611
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 614
    move v7, v5

    .line 615
    add-int/lit8 v1, v1, 0x1

    .line 609
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1389
    const/4 v6, 0x0

    .line 1391
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1396
    :cond_0
    if-nez v6, :cond_1

    .line 1398
    new-instance v0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContextMenuInfo:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    .line 1399
    invoke-super {p0, p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1402
    :cond_1
    if-eqz v6, :cond_2

    .line 1404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->performHapticFeedback(I)Z

    .line 1407
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1309
    if-eqz p1, :cond_0

    .line 1310
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1313
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->setPressed(Z)V

    .line 1314
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1318
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1319
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1318
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1322
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setPressed(Z)V

    .line 1323
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 794
    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    .line 795
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I

    .line 798
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 802
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 803
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 804
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 815
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_0

    if-ltz v0, :cond_0

    .line 816
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/opensense/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 818
    if-nez v4, :cond_2

    .line 826
    :cond_0
    return-void

    .line 810
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_1
    const/4 v0, 0x0

    .line 811
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRight:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 812
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    goto :goto_0

    .line 820
    :cond_2
    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    .line 823
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 824
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 829
    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    .line 830
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRight:I

    iget v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 831
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v4

    .line 832
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    .line 835
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 839
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 840
    iget v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 841
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 851
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_0

    if-ge v1, v5, :cond_0

    .line 852
    iget v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 854
    if-nez v6, :cond_2

    .line 859
    :cond_0
    return-void

    .line 846
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_1
    iget v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    .line 847
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I

    .line 848
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    goto :goto_0

    .line 856
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildView(I)Landroid/view/View;

    move-result-object v0

    .line 914
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 916
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setUpChild(Landroid/view/View;IIZ)V

    .line 922
    :cond_0
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 565
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 568
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    .line 652
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->selectionChanged()V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;->onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAdapterView;Z)V

    .line 656
    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 637
    .local v1, selectedCenter:I
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v2

    .line 639
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 640
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 641
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 643
    :cond_2
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(IZZ)Z
    .locals 7
    .parameter "childPosition"
    .parameter "haveDirection"
    .parameter "next"

    .prologue
    const/4 v5, 0x1

    .line 1513
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1515
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1516
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v4

    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v6

    sub-int v3, v4, v6

    .line 1517
    .local v3, distance:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v4, v3}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    move v4, v5

    .line 1529
    .end local v3           #distance:I
    :goto_0
    return v4

    .line 1520
    :cond_0
    if-eqz p2, :cond_3

    .line 1521
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v1

    .line 1522
    .local v1, current:I
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    const-string v6, "window"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1523
    .local v2, display:Landroid/view/Display;
    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1524
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    :cond_1
    :goto_1
    move v4, v5

    .line 1527
    goto :goto_0

    .line 1525
    :cond_2
    if-eqz v1, :cond_1

    .line 1526
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .line 1529
    .end local v1           #current:I
    .end local v2           #display:Landroid/view/Display;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 671
    iget-object v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    .line 672
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v3

    .line 676
    .local v3, galleryCenter:I
    if-eqz v7, :cond_2

    .line 679
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 685
    :cond_2
    const v2, 0x7fffffff

    .line 686
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 687
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 689
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 691
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 693
    move v6, v4

    .line 705
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 707
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 708
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelectedPositionInt(I)V

    .line 709
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setNextSelectedPositionInt(I)V

    .line 710
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->checkSelectionChanged()V

    goto :goto_0

    .line 697
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

    .line 699
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 700
    move v2, v1

    .line 701
    move v6, v4

    .line 687
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
    .line 967
    if-nez p1, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    .line 972
    .local v6, lp:Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;
    if-nez v6, :cond_1

    .line 973
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;
    check-cast v6, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    .line 975
    .restart local v6       #lp:Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;
    :cond_1
    if-eqz p4, :cond_2

    const/4 v8, -0x1

    :goto_1
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 977
    if-nez p2, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 980
    iget v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 982
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 986
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 992
    const/4 v8, 0x1

    invoke-direct {p0, p1, v6, v8}, Lcom/htc/opensense/widget/HtcFilmstripView;->calculateTop(Landroid/view/View;Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;Z)I

    move-result v4

    .line 993
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 995
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 996
    .local v7, width:I
    if-eqz p4, :cond_4

    .line 997
    move v2, p3

    .line 998
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 1004
    .local v3, childRight:I
    :goto_3
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 975
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 977
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 1000
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_4
    sub-int v2, p3, v7

    .line 1001
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_3
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1542
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    .line 1544
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    .line 1545
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1551
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1552
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1556
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1557
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1562
    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eq v1, v2, :cond_0

    .line 1570
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1574
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 1554
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 397
    instance-of v0, p1, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    return v0
.end method

.method public checkViewInHirerarchy(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 1910
    if-nez p1, :cond_0

    .line 1916
    :goto_0
    return v0

    .line 1912
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 1913
    sget-object v1, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not the same as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1916
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearViewCache()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    .line 289
    .local v0, bin:Lcom/htc/opensense/album/util/RecycleBin;
    invoke-virtual {v0}, Lcom/htc/opensense/album/util/RecycleBin;->clear()V

    .line 290
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1416
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1347
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1335
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 424
    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 413
    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 405
    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1595
    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1598
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1608
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1600
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1602
    goto :goto_0

    .line 1603
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1605
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 360
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 362
    const/4 v0, 0x1

    return v0

    .line 360
    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method public getChildView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, child:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/RecycleBin;->getMaxCache()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 934
    .local v1, useCache:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 935
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/util/RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 938
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_1

    .line 940
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 941
    if-eqz v1, :cond_1

    .line 942
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2, p1, v0}, Lcom/htc/opensense/album/util/RecycleBin;->put(ILandroid/view/View;)V

    .line 945
    :cond_1
    return-object v0

    .line 933
    .end local v1           #useCache:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContextMenuInfo:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 492
    iget-boolean v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    if-nez v6, :cond_6

    .line 493
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 494
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 496
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 551
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 493
    goto :goto_0

    .line 500
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 501
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getPaddingLeft()I

    move-result v7

    add-int v4, v6, v7

    .line 502
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 503
    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 504
    .local v0, centerDifference:I
    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 508
    if-gt v2, v4, :cond_3

    .line 509
    div-int/lit8 p2, p2, 0x2

    .line 511
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 513
    .end local v0           #centerDifference:I
    :cond_4
    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 514
    .restart local v0       #centerDifference:I
    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 518
    if-lt v2, v4, :cond_5

    .line 519
    div-int/lit8 p2, p2, 0x2

    .line 521
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 525
    .end local v0           #centerDifference:I
    .end local v1           #extremeChild:Landroid/view/View;
    .end local v2           #extremeChildCenter:I
    .end local v3           #extremeItemPosition:I
    .end local v4           #galleryCenter:I
    :cond_6
    if-eqz p1, :cond_7

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 526
    .restart local v3       #extremeItemPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 528
    .restart local v1       #extremeChild:Landroid/view/View;
    if-nez v1, :cond_8

    move v5, p2

    .line 529
    goto :goto_1

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_7
    move v3, v5

    .line 525
    goto :goto_2

    .line 532
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_8
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 533
    .restart local v2       #extremeChildCenter:I
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v4

    .line 535
    .restart local v4       #galleryCenter:I
    if-eqz p1, :cond_a

    .line 536
    if-le v2, v4, :cond_0

    .line 549
    :cond_9
    sub-int v0, v4, v2

    .line 551
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 542
    .end local v0           #centerDifference:I
    :cond_a
    if-lt v2, v4, :cond_9

    goto :goto_1

    .line 551
    .restart local v0       #centerDifference:I
    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getMaxVelocity()I
    .locals 1

    .prologue
    .line 1956
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxVelocity:I

    return v0
.end method

.method public getSelectedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    return-object v0
.end method

.method public isFlinging()Z
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    const/4 v0, 0x1

    .line 1929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 8
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 727
    iget-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 728
    .local v0, childrenLeft:I
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRight:I

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 730
    .local v1, childrenWidth:I
    iget-boolean v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->handleDataChanged()V

    .line 735
    :cond_0
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    if-nez v5, :cond_2

    .line 736
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->resetList()V

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 741
    :cond_2
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mNextSelectedPosition:I

    if-ltz v5, :cond_3

    .line 742
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelectedPositionInt(I)V

    .line 746
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->recycleAllViews()V

    .line 751
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->detachAllViewsFromParent()V

    .line 757
    iput v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRightMost:I

    .line 758
    iput v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mLeftMost:I

    .line 766
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    .line 767
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    const/4 v6, 0x1

    invoke-direct {p0, v5, v7, v7, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 769
    .local v3, sel:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 773
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    .line 774
    .local v2, lp:Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 775
    .local v4, selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 777
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryRight()V

    .line 778
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryLeft()V

    .line 783
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->invalidate()V

    .line 784
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->checkSelectionChanged()V

    .line 786
    iput-boolean v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDataChanged:Z

    .line 787
    iput-boolean v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mNeedSync:Z

    .line 788
    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setNextSelectedPositionInt(I)V

    .line 790
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1499
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return v1

    .line 1502
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1504
    .local v0, count:I
    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_0

    .line 1505
    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    move v1, v2

    .line 1506
    goto :goto_0
.end method

.method movePrevious()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1485
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return v1

    .line 1488
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1490
    .local v0, count:I
    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    if-lez v3, :cond_0

    .line 1491
    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v2, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    move v1, v2

    .line 1492
    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1270
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onUp()V

    .line 1271
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1110
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1226
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->stop(Z)V

    .line 1229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    .line 1231
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1232
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    .line 1233
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1239
    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mIsFirstScroll:Z

    .line 1242
    return v2

    .line 1236
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 1147
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    .line 1148
    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    if-nez v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1155
    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    .line 1158
    :cond_0
    sget v1, Lcom/htc/opensense/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    int-to-float v0, v1

    .line 1159
    .local v0, maxVelocity:F
    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    .line 1160
    move p3, v0

    .line 1165
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    neg-float v2, p3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingVelocity(I)V

    .line 1167
    return v3

    .line 1161
    :cond_2
    neg-float v1, v0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 1162
    neg-float p3, v0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    .line 1614
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1621
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1628
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1630
    :cond_0
    return-void

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1895
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1425
    sparse-switch p1, :sswitch_data_0

    .line 1445
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1428
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->playSoundEffect(I)V

    goto :goto_1

    .line 1434
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->playSoundEffect(I)V

    goto :goto_1

    .line 1441
    :sswitch_2
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1425
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
    .line 1453
    sparse-switch p1, :sswitch_data_0

    .line 1481
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1457
    :sswitch_0
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    if-eqz v2, :cond_0

    .line 1458
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    if-lez v2, :cond_0

    .line 1460
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchPress(Landroid/view/View;)V

    .line 1461
    new-instance v2, Lcom/htc/opensense/widget/HtcFilmstripView$2;

    invoke-direct {v2, p0}, Lcom/htc/opensense/widget/HtcFilmstripView$2;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1467
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int v1, v2, v3

    .line 1468
    .local v1, selectedIndex:I
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1469
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    .line 1470
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1475
    .end local v0           #child:Landroid/view/View;
    .end local v1           #selectedIndex:I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    .line 1477
    const/4 v2, 0x1

    goto :goto_0

    .line 1453
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

    .line 433
    invoke-super/range {p0 .. p5}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onLayout(ZIIII)V

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInLayout:Z

    .line 440
    invoke-virtual {p0, v1, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->layout(IZ)V

    .line 441
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInLayout:Z

    .line 442
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 1278
    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-gez v3, :cond_1

    .line 1279
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->performHapticFeedback(I)Z

    .line 1284
    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1285
    .local v1, id:J
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 1289
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 1290
    sget-object v3, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v4, "set touch mode to TOUCH_MODE_SINGLE_TAP"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

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

    .line 1175
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    .line 1177
    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1178
    :cond_1
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    .line 1194
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1199
    :cond_2
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_6

    .line 1200
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mIsFirstScroll:Z

    if-eqz v0, :cond_4

    .line 1206
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    .line 1207
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1214
    :cond_4
    :goto_1
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->trackMotionScroll(I)V

    .line 1216
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mIsFirstScroll:Z

    .line 1217
    return v3

    .line 1180
    :cond_5
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    goto :goto_0

    .line 1210
    :cond_6
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1303
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1140
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 1082
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->isFinish()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1083
    sget-object v1, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "fling not finish when received SingleTapConfirmed."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :goto_0
    return v0

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_1

    .line 1087
    sget-object v1, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "Adapter is null when received SingleTapConfirmed."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-ltz v1, :cond_4

    .line 1093
    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    .line 1096
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    if-ne v0, v1, :cond_3

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1099
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1103
    :cond_4
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1054
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1055
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1057
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onUp()V

    .line 1062
    :cond_0
    :goto_0
    return v1

    .line 1058
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 4

    .prologue
    .line 1249
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    .line 1250
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollIntoSlots()V

    .line 1254
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchUnpress()V

    .line 1259
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1261
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

    .line 1264
    :cond_1
    return-void
.end method

.method public peekChildView(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->peek(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public removeCachedView(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->remove(I)V

    .line 281
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 1900
    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    .line 1901
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 1902
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 661
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->selectionChanged()V

    .line 663
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 328
    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I

    .line 329
    return-void
.end method

.method public setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V
    .locals 1
    .parameter "cacheListener"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V

    .line 262
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    .line 303
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    .line 316
    return-void
.end method

.method public setChildViewOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 1044
    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetX:I

    .line 1045
    iput p2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetY:I

    .line 1046
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1587
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1588
    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGravity:I

    .line 1589
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->requestLayout()V

    .line 1591
    :cond_0
    return-void
.end method

.method public setMaxCache(I)V
    .locals 1
    .parameter "nMax"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->clearViewCache()V

    .line 252
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->setMaxCache(I)V

    .line 253
    return-void
.end method

.method public setMaxVelocity(I)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 1948
    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxVelocity:I

    .line 1949
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1534
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setSelectedPositionInt(I)V

    .line 1537
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->updateSelectedItemMetadata()V

    .line 1538
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 339
    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    .line 340
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 350
    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mUnselectedAlpha:F

    .line 351
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1379
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1380
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1381
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1384
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
    .line 1363
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1364
    .local v2, longPressPosition:I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    .line 1365
    :cond_0
    const/4 v3, 0x0

    .line 1369
    :goto_0
    return v3

    .line 1368
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1369
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    .line 1877
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->stop(Z)V

    .line 1879
    :cond_0
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 487
    :goto_0
    return-void

    .line 460
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 462
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 463
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 465
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #calls: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$100(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;Z)V

    .line 466
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onFinishedMovement()V

    .line 469
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->offsetChildrenLeftAndRight(I)V

    .line 471
    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->detachOffScreenChildren(Z)V

    .line 473
    if-eqz v1, :cond_3

    .line 475
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryRight()V

    .line 484
    :goto_2
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelectionToCenterChild()V

    .line 486
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 460
    goto :goto_1

    .line 478
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryLeft()V

    goto :goto_2
.end method
