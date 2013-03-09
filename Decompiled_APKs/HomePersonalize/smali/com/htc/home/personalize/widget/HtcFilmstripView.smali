.class public Lcom/htc/home/personalize/widget/HtcFilmstripView;
.super Lcom/htc/home/personalize/widget/AlbumAbsSpinner;
.source "HtcFilmstripView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;,
        Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;,
        Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;
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

.field private mContextMenuInfo:Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

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
    .line 56
    const v0, 0x7fffffff

    sput v0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    .line 58
    const-class v0, Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 202
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    .line 204
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

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-boolean v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->closeOverbound:Z

    .line 73
    iput v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSpacing:I

    .line 79
    const/16 v5, 0x3e8

    iput v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mAnimationDuration:I

    .line 116
    new-instance v5, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;-><init>(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V

    iput-object v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    .line 122
    new-instance v5, Lcom/htc/home/personalize/widget/HtcFilmstripView$1;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$1;-><init>(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V

    iput-object v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 146
    iput-boolean v7, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    .line 151
    iput-boolean v7, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    .line 184
    iput v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mTouchMode:I

    .line 189
    sget v5, Lcom/htc/home/personalize/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    iput v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxVelocity:I

    .line 191
    iput v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mChildOffsetX:I

    .line 192
    iput v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mChildOffsetY:I

    .line 194
    new-instance v5, Lcom/htc/opensense/album/util/RecycleBin;

    invoke-direct {v5}, Lcom/htc/opensense/album/util/RecycleBin;-><init>()V

    iput-object v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    .line 490
    const/16 v5, 0x50

    iput v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    .line 1209
    iput v8, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onScrollStartPos:I

    .line 1990
    iput-boolean v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    move-object v5, p1

    .line 209
    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    .line 211
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 213
    iget-object v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 215
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 219
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 220
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setGravity(I)V

    .line 223
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 225
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 226
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setAnimationDuration(I)V

    .line 229
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 231
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSpacing(I)V

    .line 233
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 235
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setUnselectedAlpha(F)V

    .line 237
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    iget v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGroupFlags:I

    .line 243
    iget v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGroupFlags:I

    .line 244
    return-void
.end method

.method private ForceSelectedChildBeFocused()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1090
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1098
    :goto_0
    return v0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1098
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/home/personalize/widget/HtcFilmstripView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollIntoSlotsAmounts()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/home/personalize/widget/HtcFilmstripView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldStopFling:Z

    return p1
.end method

.method private calculateTop(Landroid/view/View;Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;Z)I
    .locals 6
    .parameter "child"
    .parameter "lp"
    .parameter "duringLayout"

    .prologue
    .line 1039
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getMeasuredHeight()I

    move-result v3

    .line 1040
    .local v3, myHeight:I
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1042
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 1044
    .local v2, childTop:I
    iget v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1057
    :goto_2
    iget v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mChildOffsetX:I

    add-int/2addr v4, v2

    return v4

    .line 1039
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1040
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1046
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1047
    goto :goto_2

    .line 1049
    :sswitch_1
    iget-object v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1051
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1052
    goto :goto_2

    .line 1054
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1044
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
    .line 592
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v6

    .line 593
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    .line 594
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 595
    .local v7, start:I
    const/4 v1, 0x0

    .line 597
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 598
    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    .line 599
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 600
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 601
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 622
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->detachViewsFromParent(II)V

    .line 624
    if-eqz p1, :cond_1

    .line 625
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    .line 627
    :cond_1
    return-void

    .line 604
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 599
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 609
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 610
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 611
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 612
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 615
    move v7, v5

    .line 616
    add-int/lit8 v1, v1, 0x1

    .line 610
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1426
    const/4 v6, 0x0

    .line 1428
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/home/personalize/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1433
    :cond_0
    if-nez v6, :cond_1

    .line 1435
    new-instance v0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContextMenuInfo:Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterContextMenuInfo;

    .line 1436
    invoke-super {p0, p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1439
    :cond_1
    if-eqz v6, :cond_2

    .line 1441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->performHapticFeedback(I)Z

    .line 1444
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1346
    if-eqz p1, :cond_0

    .line 1347
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1350
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setPressed(Z)V

    .line 1351
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1355
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1356
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1355
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1359
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setPressed(Z)V

    .line 1360
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 817
    iget v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSpacing:I

    .line 818
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    .line 821
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 825
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 826
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 827
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 838
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_0

    if-ltz v0, :cond_0

    .line 839
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 841
    if-nez v4, :cond_2

    .line 849
    :cond_0
    return-void

    .line 833
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_1
    const/4 v0, 0x0

    .line 834
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 835
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldStopFling:Z

    goto :goto_0

    .line 843
    :cond_2
    iput v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    .line 846
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 847
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 852
    iget v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSpacing:I

    .line 853
    .local v3, itemSpacing:I
    iget v7, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mRight:I

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 854
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v4

    .line 855
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    .line 858
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 862
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 863
    iget v7, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 864
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 874
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_0

    if-ge v1, v5, :cond_0

    .line 875
    iget v7, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 877
    if-nez v6, :cond_2

    .line 882
    :cond_0
    return-void

    .line 869
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_1
    iget v7, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    .line 870
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    .line 871
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldStopFling:Z

    goto :goto_0

    .line 879
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 582
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
    .line 902
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildView(I)Landroid/view/View;

    move-result-object v0

    .line 937
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 939
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setUpChild(Landroid/view/View;IIZ)V

    .line 945
    :cond_0
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 567
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 566
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    .line 675
    invoke-super {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->selectionChanged()V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;->onScrollStateChanged(Lcom/htc/home/personalize/widget/AlbumAdapterView;Z)V

    .line 679
    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 638
    .local v1, selectedCenter:I
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v2

    .line 640
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 641
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 642
    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 644
    :cond_2
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollIntoSlotsAmounts()I
    .locals 4

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 667
    :cond_1
    :goto_0
    return v0

    .line 656
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 657
    .local v1, selectedCenter:I
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v2

    .line 659
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 661
    .local v0, scrollAmount:I
    if-nez v0, :cond_1

    .line 664
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(IZZ)Z
    .locals 7
    .parameter "childPosition"
    .parameter "haveDirection"
    .parameter "next"

    .prologue
    const/4 v5, 0x1

    .line 1550
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1552
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1553
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v4

    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v6

    sub-int v3, v4, v6

    .line 1554
    .local v3, distance:I
    iget-object v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v4, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    move v4, v5

    .line 1566
    .end local v3           #distance:I
    :goto_0
    return v4

    .line 1557
    :cond_0
    if-eqz p2, :cond_3

    .line 1558
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v1

    .line 1559
    .local v1, current:I
    iget-object v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    const-string v6, "window"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1560
    .local v2, display:Landroid/view/Display;
    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    .line 1561
    iget-object v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v4, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    :cond_1
    :goto_1
    move v4, v5

    .line 1564
    goto :goto_0

    .line 1562
    :cond_2
    if-eqz v1, :cond_1

    .line 1563
    iget-object v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .line 1566
    .end local v1           #current:I
    .end local v2           #display:Landroid/view/Display;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 694
    iget-object v7, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    .line 695
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v3

    .line 699
    .local v3, galleryCenter:I
    if-eqz v7, :cond_2

    .line 702
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 708
    :cond_2
    const v2, 0x7fffffff

    .line 709
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 710
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 712
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 714
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 716
    move v6, v4

    .line 728
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 730
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 731
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSelectedPositionInt(I)V

    .line 732
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setNextSelectedPositionInt(I)V

    .line 733
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->checkSelectionChanged()V

    goto :goto_0

    .line 720
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

    .line 722
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 723
    move v2, v1

    .line 724
    move v6, v4

    .line 710
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
    .line 990
    if-nez p1, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    .line 995
    .local v6, lp:Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;
    if-nez v6, :cond_1

    .line 996
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;
    check-cast v6, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    .line 998
    .restart local v6       #lp:Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;
    :cond_1
    if-eqz p4, :cond_2

    const/4 v8, -0x1

    :goto_1
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1000
    if-nez p2, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1003
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1005
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1009
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1015
    const/4 v8, 0x1

    invoke-direct {p0, p1, v6, v8}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->calculateTop(Landroid/view/View;Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;Z)I

    move-result v4

    .line 1016
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 1018
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1019
    .local v7, width:I
    if-eqz p4, :cond_4

    .line 1020
    move v2, p3

    .line 1021
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 1027
    .local v3, childRight:I
    :goto_3
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 998
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

    .line 1000
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 1023
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_4
    sub-int v2, p3, v7

    .line 1024
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

    .line 1579
    iget-object v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    .line 1581
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    .line 1582
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1586
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1588
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1589
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1593
    :goto_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1594
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1599
    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eq v1, v2, :cond_0

    .line 1607
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1611
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 1591
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 398
    instance-of v0, p1, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    return v0
.end method

.method public checkViewInHirerarchy(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 2009
    if-nez p1, :cond_0

    .line 2015
    :goto_0
    return v0

    .line 2011
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 2012
    sget-object v1, Lcom/htc/home/personalize/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2015
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearViewCache()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    .line 290
    .local v0, bin:Lcom/htc/opensense/album/util/RecycleBin;
    invoke-virtual {v0}, Lcom/htc/opensense/album/util/RecycleBin;->clear()V

    .line 291
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1453
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1384
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1372
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 425
    new-instance v0, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 414
    new-instance v0, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 406
    new-instance v0, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1632
    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1635
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1645
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1637
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1639
    goto :goto_0

    .line 1640
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1642
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 360
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 361
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 363
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method public getChildView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 955
    const/4 v0, 0x0

    .line 956
    .local v0, child:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/RecycleBin;->getMaxCache()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 957
    .local v1, useCache:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 958
    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/util/RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 961
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_1

    .line 963
    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 964
    if-eqz v1, :cond_1

    .line 965
    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2, p1, v0}, Lcom/htc/opensense/album/util/RecycleBin;->put(ILandroid/view/View;)V

    .line 968
    :cond_1
    return-object v0

    .line 956
    .end local v1           #useCache:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContextMenuInfo:Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 493
    iget-boolean v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->closeOverbound:Z

    if-nez v6, :cond_6

    .line 494
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 495
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 497
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 552
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 494
    goto :goto_0

    .line 501
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 502
    .local v2, extremeChildCenter:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getPaddingLeft()I

    move-result v7

    add-int v4, v6, v7

    .line 503
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 504
    iget v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 505
    .local v0, centerDifference:I
    iget v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 509
    if-gt v2, v4, :cond_3

    .line 510
    div-int/lit8 p2, p2, 0x2

    .line 512
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 514
    .end local v0           #centerDifference:I
    :cond_4
    iget v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 515
    .restart local v0       #centerDifference:I
    iget v6, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 519
    if-lt v2, v4, :cond_5

    .line 520
    div-int/lit8 p2, p2, 0x2

    .line 522
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 526
    .end local v0           #centerDifference:I
    .end local v1           #extremeChild:Landroid/view/View;
    .end local v2           #extremeChildCenter:I
    .end local v3           #extremeItemPosition:I
    .end local v4           #galleryCenter:I
    :cond_6
    if-eqz p1, :cond_7

    iget v6, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 527
    .restart local v3       #extremeItemPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 529
    .restart local v1       #extremeChild:Landroid/view/View;
    if-nez v1, :cond_8

    move v5, p2

    .line 530
    goto :goto_1

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_7
    move v3, v5

    .line 526
    goto :goto_2

    .line 533
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_8
    invoke-static {v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 534
    .restart local v2       #extremeChildCenter:I
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v4

    .line 536
    .restart local v4       #galleryCenter:I
    if-eqz p1, :cond_a

    .line 537
    if-le v2, v4, :cond_0

    .line 550
    :cond_9
    sub-int v0, v4, v2

    .line 552
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 543
    .end local v0           #centerDifference:I
    :cond_a
    if-lt v2, v4, :cond_9

    goto :goto_1

    .line 552
    .restart local v0       #centerDifference:I
    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getMaxVelocity()I
    .locals 1

    .prologue
    .line 2055
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxVelocity:I

    return v0
.end method

.method public getSelectedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    return-object v0
.end method

.method public isFlinging()Z
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2026
    const/4 v0, 0x1

    .line 2028
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

    .line 750
    iget-object v5, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 751
    .local v0, childrenLeft:I
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 753
    .local v1, childrenWidth:I
    iget-boolean v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->handleDataChanged()V

    .line 758
    :cond_0
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    if-nez v5, :cond_2

    .line 759
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->resetList()V

    .line 814
    :cond_1
    :goto_0
    return-void

    .line 764
    :cond_2
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNextSelectedPosition:I

    if-ltz v5, :cond_3

    .line 765
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSelectedPositionInt(I)V

    .line 769
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->recycleAllViews()V

    .line 774
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->detachAllViewsFromParent()V

    .line 780
    iput v7, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRightMost:I

    .line 781
    iput v7, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mLeftMost:I

    .line 789
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iput v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    .line 790
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    const/4 v6, 0x1

    invoke-direct {p0, v5, v7, v7, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 792
    .local v3, sel:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 796
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;

    .line 797
    .local v2, lp:Lcom/htc/home/personalize/widget/HtcFilmstripView$LayoutParams;
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 798
    .local v4, selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 800
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->fillToGalleryRight()V

    .line 801
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->fillToGalleryLeft()V

    .line 806
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->invalidate()V

    .line 807
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->checkSelectionChanged()V

    .line 809
    iput-boolean v7, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    .line 810
    iput-boolean v7, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNeedSync:Z

    .line 811
    iget v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setNextSelectedPositionInt(I)V

    .line 813
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1536
    iget-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return v1

    .line 1539
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1541
    .local v0, count:I
    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_0

    .line 1542
    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    move v1, v2

    .line 1543
    goto :goto_0
.end method

.method movePrevious()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1522
    iget-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return v1

    .line 1525
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1527
    .local v0, count:I
    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    if-lez v3, :cond_0

    .line 1528
    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v2, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    move v1, v2

    .line 1529
    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onUp()V

    .line 1308
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1133
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 1137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1138
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1140
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

    .line 1263
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->stop(Z)V

    .line 1266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    .line 1268
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1269
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    .line 1270
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1276
    :goto_0
    iput-boolean v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mIsFirstScroll:Z

    .line 1279
    return v2

    .line 1273
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v7, 0x1

    .line 1170
    iput-boolean v7, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->closeOverbound:Z

    .line 1171
    iget-boolean v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    if-nez v3, :cond_0

    .line 1175
    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1178
    iget-boolean v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v3, :cond_0

    iput-boolean v7, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    .line 1181
    :cond_0
    sget v3, Lcom/htc/home/personalize/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    int-to-float v2, v3

    .line 1182
    .local v2, maxVelocity:F
    cmpl-float v3, p3, v2

    if-lez v3, :cond_2

    .line 1183
    move p3, v2

    .line 1187
    :cond_1
    :goto_0
    const-string v3, "HtcFilmstripView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFling: dX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/16 v1, 0x11da

    .line 1191
    .local v1, THRESHOLD:I
    const/16 v0, 0x1770

    .line 1192
    .local v0, MAX_VELOCITY:I
    const v3, 0x458ed000

    mul-float/2addr v3, p3

    const v4, 0x45bb8000

    div-float p3, v3, v4

    .line 1201
    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    neg-float v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->startUsingVelocity(I)V

    .line 1203
    return v7

    .line 1184
    .end local v0           #MAX_VELOCITY:I
    .end local v1           #THRESHOLD:I
    :cond_2
    neg-float v3, v2

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    .line 1185
    neg-float p3, v2

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    .line 1651
    invoke-super {p0, p1, p2, p3}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1658
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1665
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1667
    :cond_0
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1994
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1462
    sparse-switch p1, :sswitch_data_0

    .line 1482
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1465
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1466
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->playSoundEffect(I)V

    goto :goto_1

    .line 1471
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1472
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->playSoundEffect(I)V

    goto :goto_1

    .line 1478
    :sswitch_2
    iput-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1462
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
    .line 1490
    sparse-switch p1, :sswitch_data_0

    .line 1518
    invoke-super {p0, p1, p2}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1494
    :sswitch_0
    iget-boolean v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    if-eqz v2, :cond_0

    .line 1495
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    if-lez v2, :cond_0

    .line 1497
    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->dispatchPress(Landroid/view/View;)V

    .line 1498
    new-instance v2, Lcom/htc/home/personalize/widget/HtcFilmstripView$2;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$2;-><init>(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1504
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v1, v2, v3

    .line 1505
    .local v1, selectedIndex:I
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1506
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    .line 1507
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1512
    .end local v0           #child:Landroid/view/View;
    .end local v1           #selectedIndex:I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    .line 1514
    const/4 v2, 0x1

    goto :goto_0

    .line 1490
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

    .line 434
    invoke-super/range {p0 .. p5}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->onLayout(ZIIII)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mInLayout:Z

    .line 441
    invoke-virtual {p0, v1, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->layout(IZ)V

    .line 442
    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mInLayout:Z

    .line 443
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 1315
    iget v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-gez v3, :cond_1

    .line 1316
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->performHapticFeedback(I)Z

    .line 1321
    iget v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1322
    .local v1, id:J
    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 1326
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 1327
    sget-object v3, Lcom/htc/home/personalize/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v4, "set touch mode to TOUCH_MODE_SINGLE_TAP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mTouchMode:I

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

    .line 1211
    const-string v0, "HtcFilmstripView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll: dX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onScrollStartPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onScrollStartPos:I

    .line 1214
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onScrollStartPos:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onScrollStartPos:I

    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1215
    :cond_1
    iput-boolean v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->closeOverbound:Z

    .line 1231
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1236
    :cond_2
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_6

    .line 1237
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mIsFirstScroll:Z

    if-eqz v0, :cond_4

    .line 1243
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1251
    :cond_4
    :goto_1
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->trackMotionScroll(I)V

    .line 1253
    iput-boolean v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mIsFirstScroll:Z

    .line 1254
    return v3

    .line 1217
    :cond_5
    iput-boolean v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->closeOverbound:Z

    goto :goto_0

    .line 1247
    :cond_6
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1340
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1163
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 1105
    iget-object v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->isFinish()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    sget-object v1, Lcom/htc/home/personalize/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "fling not finish when received SingleTapConfirmed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :goto_0
    return v0

    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_1

    .line 1110
    sget-object v1, Lcom/htc/home/personalize/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "Adapter is null when received SingleTapConfirmed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    :cond_1
    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-ltz v1, :cond_4

    .line 1116
    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    .line 1119
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_3

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1122
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1126
    :cond_4
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1075
    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1077
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1078
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1080
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onUp()V

    .line 1085
    :cond_0
    :goto_0
    return v1

    .line 1081
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 4

    .prologue
    .line 1286
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onScrollStartPos:I

    .line 1287
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollIntoSlots()V

    .line 1291
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->dispatchUnpress()V

    .line 1296
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1298
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mTouchMode:I

    .line 1301
    :cond_1
    return-void
.end method

.method public peekChildView(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->peek(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public removeCachedView(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->remove(I)V

    .line 282
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 1999
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    .line 2000
    invoke-super {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 2001
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 684
    invoke-super {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->selectionChanged()V

    .line 686
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 329
    iput p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mAnimationDuration:I

    .line 330
    return-void
.end method

.method public setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V
    .locals 1
    .parameter "cacheListener"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V

    .line 263
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    .line 304
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    .line 317
    return-void
.end method

.method public setChildViewOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 1067
    iput p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mChildOffsetX:I

    .line 1068
    iput p2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mChildOffsetY:I

    .line 1069
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1624
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1625
    iput p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mGravity:I

    .line 1626
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->requestLayout()V

    .line 1628
    :cond_0
    return-void
.end method

.method public setMaxCache(I)V
    .locals 1
    .parameter "nMax"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->clearViewCache()V

    .line 253
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->setMaxCache(I)V

    .line 254
    return-void
.end method

.method public setMaxVelocity(I)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 2047
    iput p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mMaxVelocity:I

    .line 2048
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1571
    invoke-super {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setSelectedPositionInt(I)V

    .line 1574
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->updateSelectedItemMetadata()V

    .line 1575
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 340
    iput p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mSpacing:I

    .line 341
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 351
    iput p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mUnselectedAlpha:F

    .line 352
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1416
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1417
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1418
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1421
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
    .line 1400
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1401
    .local v2, longPressPosition:I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    .line 1402
    :cond_0
    const/4 v3, 0x0

    .line 1406
    :goto_0
    return v3

    .line 1405
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1406
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    .line 1976
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->stop(Z)V

    .line 1978
    :cond_0
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 488
    :goto_0
    return-void

    .line 461
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 463
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 464
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 466
    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;

    #calls: Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->access$100(Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;Z)V

    .line 467
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->onFinishedMovement()V

    .line 470
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->offsetChildrenLeftAndRight(I)V

    .line 472
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->detachOffScreenChildren(Z)V

    .line 474
    if-eqz v1, :cond_3

    .line 476
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->fillToGalleryRight()V

    .line 485
    :goto_2
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->setSelectionToCenterChild()V

    .line 487
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 461
    goto :goto_1

    .line 479
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->fillToGalleryLeft()V

    goto :goto_2
.end method
