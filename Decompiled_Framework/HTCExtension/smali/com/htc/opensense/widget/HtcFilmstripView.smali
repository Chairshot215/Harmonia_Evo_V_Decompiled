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

    const/16 v0, 0x7d0

    sput v0, Lcom/htc/opensense/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    const-class v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    const/16 v5, 0x3e8

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I

    new-instance v5, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    new-instance v5, Lcom/htc/opensense/widget/HtcFilmstripView$1;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/HtcFilmstripView$1;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    iput-boolean v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    iput-boolean v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

    sget v5, Lcom/htc/opensense/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxVelocity:I

    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetX:I

    iput v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetY:I

    new-instance v5, Lcom/htc/opensense/album/util/RecycleBin;

    invoke-direct {v5}, Lcom/htc/opensense/album/util/RecycleBin;-><init>()V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    const/16 v5, 0x50

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    iput v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    iput-boolean v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setGravity(I)V

    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->setAnimationDuration(I)V

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSpacing(I)V

    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setUnselectedAlpha(F)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGroupFlags:I

    return-void
.end method

.method private ForceSelectedChildBeFocused()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/opensense/widget/HtcFilmstripView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/HtcFilmstripView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/HtcFilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/HtcFilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/opensense/widget/HtcFilmstripView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense/widget/HtcFilmstripView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/HtcFilmstripView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;Z)I
    .locals 6

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getMeasuredHeight()I

    move-result v3

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetX:I

    add-int/2addr v4, v2

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :sswitch_0
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    goto :goto_2

    :sswitch_2
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v6

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->detachViewsFromParent(II)V

    if-eqz p1, :cond_1

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int v4, v8, v9

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    move v7, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    new-instance v0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContextMenuInfo:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    invoke-super {p0, p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 8

    const/4 v7, 0x0

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    :goto_0
    if-le v1, v2, :cond_0

    if-ltz v0, :cond_0

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/opensense/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 10

    const/4 v9, 0x1

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mRight:I

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int v2, v7, v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    :goto_0
    if-ge v0, v2, :cond_0

    if-ge v1, v5, :cond_0

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    return-void

    :cond_1
    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    iput-boolean v9, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
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

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/opensense/widget/HtcFilmstripView;->setUpChild(Landroid/view/View;IIZ)V

    :cond_0
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->selectionChanged()V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;->onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAdapterView;Z)V

    :cond_1
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v2

    sub-int v0, v2, v1

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(IZZ)Z
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v4

    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v6

    sub-int v3, v4, v6

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v4, v3}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    move v4, v5

    :goto_0
    return v4

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;

    const-string v6, "window"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    :cond_1
    :goto_1
    move v4, v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v3

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    :cond_2
    const v2, 0x7fffffff

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    move v6, v4

    :cond_3
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->checkSelectionChanged()V

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

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    :cond_1
    if-eqz p4, :cond_2

    const/4 v8, -0x1

    :goto_1
    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    if-nez p2, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    const/4 v8, 0x1

    invoke-direct {p0, p1, v6, v8}, Lcom/htc/opensense/widget/HtcFilmstripView;->calculateTop(Landroid/view/View;Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;Z)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-eqz p4, :cond_4

    move v2, p3

    add-int v3, v2, v7

    :goto_3
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    sub-int v2, p3, v7

    move v3, p3

    goto :goto_3
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    return v0
.end method

.method public checkViewInHirerarchy(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

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

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearViewCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/RecycleBin;->clear()V

    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
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

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method public getChildView(I)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/RecycleBin;->getMaxCache()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/opensense/album/util/RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v2, p1, v0}, Lcom/htc/opensense/album/util/RecycleBin;->put(ILandroid/view/View;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mContextMenuInfo:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    if-nez v6, :cond_6

    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    :goto_0
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    move v5, p2

    :cond_0
    :goto_1
    return v5

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v2

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

    if-eqz p1, :cond_4

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    if-gt v2, v4, :cond_3

    div-int/lit8 p2, p2, 0x2

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    iget v6, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    if-lt v2, v4, :cond_5

    div-int/lit8 p2, p2, 0x2

    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    :goto_2
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    move v5, p2

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCenterOfGallery()I

    move-result v4

    if-eqz p1, :cond_a

    if-le v2, v4, :cond_0

    :cond_9
    sub-int v0, v4, v2

    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_a
    if-lt v2, v4, :cond_9

    goto :goto_1

    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getMaxVelocity()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxVelocity:I

    return v0
.end method

.method public getSelectedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    return-object v0
.end method

.method public isFlinging()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->handleDataChanged()V

    :cond_0
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->resetList()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelectedPositionInt(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->recycleAllViews()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->detachAllViewsFromParent()V

    iput v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRightMost:I

    iput v7, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mLeftMost:I

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    const/4 v6, 0x1

    invoke-direct {p0, v5, v7, v7, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/HtcFilmstripView$LayoutParams;

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryRight()V

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryLeft()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->checkSelectionChanged()V

    iput-boolean v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    iput-boolean v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/HtcFilmstripView;->setNextSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    move v1, v2

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v2, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    move v1, v2

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onUp()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mIsFirstScroll:Z

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    :cond_0
    sget v1, Lcom/htc/opensense/widget/HtcFilmstripView;->MAX_VELOCITY_GALLERY:I

    int-to-float v0, v1

    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    move p3, v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    neg-float v2, p3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startUsingVelocity(I)V

    return v3

    :cond_2
    neg-float v1, v0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    neg-float p3, v0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->playSoundEffect(I)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->playSoundEffect(I)V

    goto :goto_1

    :sswitch_2
    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

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

    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    iget-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchPress(Landroid/view/View;)V

    new-instance v2, Lcom/htc/opensense/widget/HtcFilmstripView$2;

    invoke-direct {v2, p0}, Lcom/htc/opensense/widget/HtcFilmstripView$2;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v1, v2, v3

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mReceivedInvokeKeyDown:Z

    const/4 v2, 0x1

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

    invoke-super/range {p0 .. p5}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    invoke-virtual {p0, v1, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->layout(IZ)V

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-gez v3, :cond_1

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->performHapticFeedback(I)Z

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v4, "set touch mode to TOUCH_MODE_SINGLE_TAP"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    :cond_1
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mIsFirstScroll:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->trackMotionScroll(I)V

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mIsFirstScroll:Z

    return v3

    :cond_5
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->closeOverbound:Z

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->isFinish()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "fling not finish when received SingleTapConfirmed."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/opensense/widget/HtcFilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "Adapter is null when received SingleTapConfirmed."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollToChild(IZZ)Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->ForceSelectedChildBeFocused()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onUp()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->onScrollStartPos:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->scrollIntoSlots()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchUnpress()V

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView;->performItemClick(Landroid/view/View;IJ)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mTouchMode:I

    :cond_1
    return-void
.end method

.method public peekChildView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->peek(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public removeCachedView(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->remove(I)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mInterceptTouchEvt:Z

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method selectionChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I

    return-void
.end method

.method public setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->setCacheChangeListener(Lcom/htc/opensense/album/util/RecycleBin$CacheChangeListener;)V

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setChildViewOffset(II)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetX:I

    iput p2, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mChildOffsetY:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mGravity:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxCache(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->clearViewCache()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mRecycler:Lcom/htc/opensense/album/util/RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/util/RecycleBin;->setMaxCache(I)V

    return-void
.end method

.method public setMaxVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mMaxVelocity:I

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method public stopScroll()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->stop(Z)V

    :cond_0
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView;->mFlingRunnable:Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;

    #calls: Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->access$100(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;Z)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->onFinishedMovement()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->offsetChildrenLeftAndRight(I)V

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryRight()V

    :goto_2
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->setSelectionToCenterChild()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->invalidate()V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->fillToGalleryLeft()V

    goto :goto_2
.end method
