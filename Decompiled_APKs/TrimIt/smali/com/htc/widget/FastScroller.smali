.class Lcom/htc/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/FastScroller$1;,
        Lcom/htc/widget/FastScroller$RecycleBin;,
        Lcom/htc/widget/FastScroller$FlingRunnable;,
        Lcom/htc/widget/FastScroller$CheckForTap;,
        Lcom/htc/widget/FastScroller$CheckForLongPress;,
        Lcom/htc/widget/FastScroller$ScrollFade;,
        Lcom/htc/widget/FastScroller$CountObserver;
    }
.end annotation


# static fields
.field private static MIN_PAGES:I = 0x0

.field private static final STATE_ANIMATION:I = 0x5

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FastScroller"

.field private static final THUMB_INVALID_POSITION:I = -0x2

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mChangedBounds:Z

.field mContext:Landroid/content/Context;

.field mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mCurrentTab:I

.field private mEditorMode:Z

.field private mEnableEditorMode:Z

.field private mFirstAdd:Z

.field private mFirstVisibleOffset:I

.field private mFirstVisiblePosition:I

.field private mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

.field private mGallery:Lcom/htc/widget/AbsSpinner;

.field private mGalleryHeight:I

.field private mGalleryWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mIsWindowClose:Z

.field private mItemCount:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListAdapter:Lcom/htc/widget/BinAdapter;

.field private mOffset:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

.field private mPreviousPos:I

.field final mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

.field private mShouldStopFling:Z

.field private mState:I

.field private mThumbBottom:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbLeft:I

.field private mThumbPadding:Landroid/graphics/Rect;

.field private mThumbTop:I

.field private mThumbW:I

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mTouchX:I

.field private mView:Landroid/view/View;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/FastScroller;->MIN_PAGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/AbsSpinner;)V
    .locals 4
    .parameter "context"
    .parameter "gallery"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    .line 102
    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    .line 121
    iput v1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 122
    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 123
    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 134
    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    .line 137
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 140
    new-instance v0, Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$RecycleBin;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    .line 260
    new-instance v0, Lcom/htc/widget/FastScroller$CountObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/FastScroller$CountObserver;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    .line 149
    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    .line 150
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 151
    invoke-direct {p0, p1}, Lcom/htc/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 152
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    .line 153
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 154
    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 155
    new-instance v0, Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$FlingRunnable;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    .line 157
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/FastScroller;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->endAnimation(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/FastScroller;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/widget/FastScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/widget/FastScroller;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return p1
.end method

.method static synthetic access$512(Lcom/htc/widget/FastScroller;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/FastScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    return-object v0
.end method

.method private cancel()V
    .locals 21

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    .line 607
    .local v16, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    .line 608
    .local v3, aX:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 610
    .local v15, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v10

    .line 611
    .local v10, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    .line 614
    .local v4, adapter:Landroid/widget/SpinnerAdapter;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 615
    .local v9, itemWidth:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 616
    .local v8, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

    .line 617
    .local v13, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v6, v17, v18

    .line 618
    .local v6, dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v14

    .line 619
    .local v14, totalItemCount:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_0

    .line 620
    add-int/lit8 v10, v14, -0x1

    .line 623
    :cond_0
    int-to-float v0, v10

    move/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v5, v17, v18

    .line 624
    .local v5, alignment:F
    int-to-float v0, v3

    move/from16 v17, v0

    sub-float v12, v5, v17

    .line 627
    .local v12, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    if-gez v17, :cond_1

    .line 628
    const/4 v5, 0x0

    .line 629
    const/4 v12, 0x0

    .line 630
    const/4 v10, -0x1

    .line 634
    :cond_1
    mul-int v17, v14, v9

    sub-int v17, v17, v6

    if-lez v17, :cond_2

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    float-to-int v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v10}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 645
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 647
    return-void

    .line 639
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 640
    .local v11, previous:I
    mul-int v17, v10, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v7, v17, v18

    .line 641
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    sub-int v18, v7, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7, v10}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_0
.end method

.method private endAnimation(IZ)V
    .locals 6
    .parameter "pos"
    .parameter "closeWindow"

    .prologue
    .line 942
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 943
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 944
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 945
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, p1, v3

    .line 946
    .local v1, selectedIndex:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3, v1}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 947
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 948
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, p1, v4, v5}, Lcom/htc/widget/AbsSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 956
    .end local v0           #adapter:Landroid/widget/SpinnerAdapter;
    .end local v1           #selectedIndex:I
    .end local v2           #v:Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 957
    invoke-virtual {p0, p1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 960
    :cond_1
    return-void

    .line 951
    .restart local v0       #adapter:Landroid/widget/SpinnerAdapter;
    .restart local v1       #selectedIndex:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    const-string v3, "FastScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endAnimation:: Bad gallery view is null at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " firstVisiblePos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ensureAdapter()V
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    .line 1052
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 221
    const v3, 0x2010028

    const v4, 0x2080083

    const-string v5, "common_subnav_selector_tab"

    invoke-static {p1, v3, v4, v5}, Lcom/htc/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 226
    iput-boolean v6, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    .line 228
    new-instance v3, Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-direct {v3, p0}, Lcom/htc/widget/FastScroller$ScrollFade;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v3, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v6, [I

    const/4 v5, 0x0

    const v6, 0x1010036

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 231
    .local v1, ta:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 233
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 234
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 235
    .local v2, touchSlop:I
    mul-int v3, v2, v2

    iput v3, p0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    .line 236
    iput v2, p0, Lcom/htc/widget/FastScroller;->mTouchSlop:I

    .line 240
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 893
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 902
    :cond_0
    return-void
.end method

.method private resetThumbPos()V
    .locals 6

    .prologue
    .line 196
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 199
    .local v0, viewHeight:I
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 201
    return-void
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 204
    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    .line 206
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 208
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setDragBinGridView(Z)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    .line 216
    return-void
.end method


# virtual methods
.method addSelectedView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 786
    return-void
.end method

.method adjustGallery(I)V
    .locals 8
    .parameter "x"

    .prologue
    .line 655
    iget v2, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 656
    .local v2, itemWidth:I
    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 657
    .local v1, galleryWidth:I
    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 658
    .local v0, dataArea:I
    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v4, v6, v7

    .line 659
    .local v4, thumbArea:I
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    .line 661
    .local v5, totalItemCount:I
    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v7, v4, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-int v7, v5, v2

    sub-int/2addr v7, v0

    int-to-float v7, v7

    mul-float v3, v6, v7

    .line 664
    .local v3, scrollX:F
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v6, v4, v6

    if-gez v6, :cond_0

    .line 666
    const/4 v3, 0x0

    .line 671
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v6, Lcom/htc/widget/Gallery;

    float-to-int v7, v3

    invoke-virtual {v6, v7}, Lcom/htc/widget/Gallery;->scrollTo(I)V

    .line 672
    return-void
.end method

.method calibrateThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1063
    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1065
    return-void
.end method

.method cancelAnimation()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 1340
    :cond_0
    return-void
.end method

.method clearCache()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$RecycleBin;->clear()V

    .line 1069
    return-void
.end method

.method closeScreen(I)V
    .locals 6
    .parameter "pos"

    .prologue
    .line 763
    const-string v4, "FastScroller"

    const-string v5, "closeScreen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-boolean v4, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    if-eqz v4, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 768
    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 769
    .local v1, c:Landroid/content/Context;
    instance-of v4, v1, Lcom/htc/widget/CarouselActivity;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 770
    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 771
    .local v0, a:Lcom/htc/widget/CarouselActivity;
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 772
    .local v2, content:Landroid/widget/FrameLayout;
    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 773
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 774
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 775
    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, taskName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/htc/widget/CarouselActivity;->onTabEndSliding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method closeThumb()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 928
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 929
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 930
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 931
    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 932
    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    .line 933
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 934
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 284
    iget v10, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-nez v10, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 290
    .local v9, x:I
    iget v8, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 291
    .local v8, viewHeight:I
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    .line 293
    .local v5, scrollFade:Lcom/htc/widget/FastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 294
    .local v0, alpha:I
    iget v10, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 295
    invoke-virtual {v5}, Lcom/htc/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 296
    const/16 v10, 0x7f

    if-ge v0, v10, :cond_2

    .line 297
    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 299
    :cond_2
    int-to-float v10, v8

    iget v11, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 300
    .local v4, centerTop:I
    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int v3, v4, v10

    .line 301
    .local v3, centerBottom:I
    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xff

    sub-int v6, v3, v10

    .line 302
    .local v6, top:I
    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    invoke-virtual {v10, v11, v6, v12, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    .line 308
    .end local v3           #centerBottom:I
    .end local v4           #centerTop:I
    .end local v6           #top:I
    :cond_3
    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    if-nez v10, :cond_4

    .line 309
    int-to-float v10, v9

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    neg-int v10, v9

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    .line 314
    .local v7, v:Landroid/view/View;
    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    add-int v1, v9, v10

    .line 315
    .local v1, cX:I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    .line 316
    .local v2, cY:I
    int-to-float v10, v1

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 318
    neg-int v10, v1

    int-to-float v10, v10

    neg-int v11, v2

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    .end local v1           #cX:I
    .end local v2           #cY:I
    .end local v7           #v:Landroid/view/View;
    :cond_4
    iget v10, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 322
    if-nez v0, :cond_5

    .line 323
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 325
    :cond_5
    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v11, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int v11, v8, v11

    iget v12, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v12, v9

    invoke-virtual {v10, v9, v11, v12, v8}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method getFirstVisibleOffset()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    return v0
.end method

.method getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    return v0
.end method

.method getOffset()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEditorMode()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 650
    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeThumbView(Z)Landroid/view/View;
    .locals 8
    .parameter "reset"

    .prologue
    const/4 v4, 0x0

    .line 963
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 964
    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 965
    .local v3, x:I
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 966
    .local v2, viewHeight:I
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    div-int/lit8 v7, v2, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 967
    .local v0, pos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 968
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v5, v0}, Lcom/htc/widget/FastScroller$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    .line 969
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 970
    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v5, v0, v4, v4}, Lcom/htc/widget/BinAdapter;->getSeletedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 971
    if-eqz v1, :cond_0

    .line 973
    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/FastScroller$RecycleBin;->put(ILandroid/view/View;)V

    .line 976
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    .line 980
    .end local v1           #view:Landroid/view/View;
    :goto_0
    return-object v1

    .line 979
    :cond_1
    if-eqz p1, :cond_2

    iput-object v4, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    :cond_2
    move-object v1, v4

    .line 980
    goto :goto_0
.end method

.method final measureTmumbView(Lcom/htc/widget/AbsSpinner;Landroid/view/View;II)V
    .locals 13
    .parameter "parent"
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 987
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 988
    .local v4, itemWidth:I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

    .line 989
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    double-to-int v9, v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    .line 990
    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 991
    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-static {v9, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 992
    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    .line 993
    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    .line 994
    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    .line 995
    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    .line 996
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    .line 997
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    .line 999
    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1000
    .local v2, galleryWidth:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v1, v9, v10

    .line 1001
    .local v1, dataArea:I
    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v6, v9, v10

    .line 1002
    .local v6, thumbArea:I
    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    .line 1005
    .local v8, totalItemCount:I
    if-ltz v1, :cond_0

    if-gez v6, :cond_1

    .line 1006
    :cond_0
    const/4 v1, 0x0

    .line 1007
    const/4 v6, 0x0

    .line 1010
    :cond_1
    mul-int v9, v8, v4

    sub-int/2addr v9, v1

    if-lez v9, :cond_3

    .line 1011
    iget v3, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1012
    .local v3, index:I
    int-to-float v9, v3

    add-int/lit8 v10, v8, -0x1

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v10, v6, v10

    int-to-float v10, v10

    mul-float v7, v9, v10

    .line 1013
    .local v7, thumbX:F
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float v9, v7, v9

    mul-int v10, v8, v4

    sub-int/2addr v10, v1

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 1016
    .local v5, scrollX:F
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v6, v9

    if-gez v9, :cond_2

    .line 1017
    const/4 v7, 0x0

    .line 1018
    const/4 v5, 0x0

    .line 1021
    :cond_2
    int-to-float v9, v4

    div-float v9, v5, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1022
    neg-int v9, v4

    iget v10, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v10, v4

    int-to-float v10, v10

    sub-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1023
    float-to-int v9, v7

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 1032
    .end local v5           #scrollX:F
    .end local v7           #thumbX:F
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 1034
    return-void

    .line 1026
    .end local v3           #index:I
    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    .line 1027
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    .line 1028
    iget v3, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1029
    .restart local v3       #index:I
    mul-int v9, v3, v4

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0
.end method

.method moveNext()Z
    .locals 21

    .prologue
    .line 1072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    .line 1073
    .local v16, x:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1075
    .local v15, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v9

    .line 1076
    .local v9, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v14

    .line 1078
    .local v14, totalItemCount:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_2

    add-int/lit8 v10, v9, 0x1

    .end local v9           #pos:I
    .local v10, pos:I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 1079
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1081
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 1082
    .local v8, itemWidth:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1083
    .local v7, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

    .line 1084
    .local v13, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v5, v17, v18

    .line 1086
    .local v5, dataArea:I
    int-to-float v0, v10

    move/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v4, v17, v18

    .line 1087
    .local v4, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    .line 1088
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v17, v0

    sub-float v12, v4, v17

    .line 1091
    .local v12, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    if-gez v17, :cond_3

    .line 1092
    const/4 v4, 0x0

    .line 1093
    const/4 v12, 0x0

    .line 1094
    const/4 v9, -0x1

    .line 1099
    .end local v10           #pos:I
    .restart local v9       #pos:I
    :goto_0
    mul-int v17, v14, v8

    sub-int v17, v17, v5

    if-lez v17, :cond_0

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    float-to-int v0, v4

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1108
    :goto_1
    const/16 v17, 0x1

    .line 1110
    .end local v3           #aX:I
    .end local v4           #alignment:F
    .end local v5           #dataArea:I
    .end local v7           #galleryWidth:I
    .end local v8           #itemWidth:I
    .end local v12           #scrollX:F
    .end local v13           #thumbArea:I
    :goto_2
    return v17

    .line 1103
    .restart local v3       #aX:I
    .restart local v4       #alignment:F
    .restart local v5       #dataArea:I
    .restart local v7       #galleryWidth:I
    .restart local v8       #itemWidth:I
    .restart local v12       #scrollX:F
    .restart local v13       #thumbArea:I
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 1104
    .local v11, previous:I
    mul-int v17, v9, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 1105
    .local v6, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    sub-int v18, v6, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6, v9}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v4           #alignment:F
    .end local v5           #dataArea:I
    .end local v6           #end:I
    .end local v7           #galleryWidth:I
    .end local v8           #itemWidth:I
    .end local v9           #pos:I
    .end local v11           #previous:I
    .end local v12           #scrollX:F
    .end local v13           #thumbArea:I
    .restart local v10       #pos:I
    :cond_1
    move v9, v10

    .line 1110
    .end local v10           #pos:I
    .restart local v9       #pos:I
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .end local v9           #pos:I
    .restart local v3       #aX:I
    .restart local v4       #alignment:F
    .restart local v5       #dataArea:I
    .restart local v7       #galleryWidth:I
    .restart local v8       #itemWidth:I
    .restart local v10       #pos:I
    .restart local v12       #scrollX:F
    .restart local v13       #thumbArea:I
    :cond_3
    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_0
.end method

.method movePrevious()Z
    .locals 21

    .prologue
    .line 1117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    .line 1118
    .local v16, x:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 1120
    .local v15, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v9

    .line 1121
    .local v9, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v14

    .line 1123
    .local v14, totalItemCount:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_2

    add-int/lit8 v10, v9, -0x1

    .end local v9           #pos:I
    .local v10, pos:I
    if-lez v9, :cond_1

    .line 1124
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 1126
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 1127
    .local v8, itemWidth:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 1128
    .local v7, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

    .line 1129
    .local v13, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v5, v17, v18

    .line 1131
    .local v5, dataArea:I
    int-to-float v0, v10

    move/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v4, v17, v18

    .line 1132
    .local v4, alignment:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    .line 1133
    .local v3, aX:I
    int-to-float v0, v3

    move/from16 v17, v0

    sub-float v12, v4, v17

    .line 1135
    .local v12, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    if-gez v17, :cond_3

    .line 1136
    const/4 v4, 0x0

    .line 1137
    const/4 v12, 0x0

    .line 1138
    const/4 v9, -0x1

    .line 1143
    .end local v10           #pos:I
    .restart local v9       #pos:I
    :goto_0
    mul-int v17, v14, v8

    sub-int v17, v17, v5

    if-lez v17, :cond_0

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    float-to-int v0, v4

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v9}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1152
    :goto_1
    const/16 v17, 0x1

    .line 1154
    .end local v3           #aX:I
    .end local v4           #alignment:F
    .end local v5           #dataArea:I
    .end local v7           #galleryWidth:I
    .end local v8           #itemWidth:I
    .end local v12           #scrollX:F
    .end local v13           #thumbArea:I
    :goto_2
    return v17

    .line 1147
    .restart local v3       #aX:I
    .restart local v4       #alignment:F
    .restart local v5       #dataArea:I
    .restart local v7       #galleryWidth:I
    .restart local v8       #itemWidth:I
    .restart local v12       #scrollX:F
    .restart local v13       #thumbArea:I
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 1148
    .local v11, previous:I
    mul-int v17, v9, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 1149
    .local v6, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    sub-int v18, v6, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6, v9}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    .end local v3           #aX:I
    .end local v4           #alignment:F
    .end local v5           #dataArea:I
    .end local v6           #end:I
    .end local v7           #galleryWidth:I
    .end local v8           #itemWidth:I
    .end local v9           #pos:I
    .end local v11           #previous:I
    .end local v12           #scrollX:F
    .end local v13           #thumbArea:I
    .restart local v10       #pos:I
    :cond_1
    move v9, v10

    .line 1154
    .end local v10           #pos:I
    .restart local v9       #pos:I
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .end local v9           #pos:I
    .restart local v3       #aX:I
    .restart local v4       #alignment:F
    .restart local v5       #dataArea:I
    .restart local v7       #galleryWidth:I
    .restart local v8       #itemWidth:I
    .restart local v10       #pos:I
    .restart local v12       #scrollX:F
    .restart local v13       #thumbArea:I
    :cond_3
    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 807
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 808
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 809
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090031

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 812
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 815
    :cond_1
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 795
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 796
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    if-nez v0, :cond_0

    .line 797
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 802
    return-void
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 373
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 376
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/AbsSpinner;III)V
    .locals 10
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v9, 0x0

    .line 343
    sub-int v6, p4, p3

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    .line 344
    invoke-virtual {p1, v9}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    .local v1, firstItem:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 346
    .local v2, firstVisibleItemRight:I
    iget v4, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    .line 347
    .local v4, itemWidth:I
    iget v3, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    .line 348
    .local v3, galleryWidth:I
    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v5, v6, v7

    .line 349
    .local v5, thumbArea:I
    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 350
    .local v0, dataArea:I
    mul-int v6, p4, v4

    sub-int/2addr v6, v0

    if-lez v6, :cond_0

    .line 351
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v6, v5, v6

    add-int/lit8 v7, p2, 0x1

    mul-int/2addr v7, v4

    sub-int/2addr v7, v2

    iget v8, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    mul-int v7, p4, v4

    sub-int/2addr v7, v0

    div-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 354
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 355
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    if-ge v6, v7, :cond_2

    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    :goto_0
    iput v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 356
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_3

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v6, v7

    :goto_1
    iput v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 359
    :cond_0
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    if-eqz v6, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 361
    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    .line 364
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v2           #firstVisibleItemRight:I
    .end local v3           #galleryWidth:I
    .end local v4           #itemWidth:I
    .end local v5           #thumbArea:I
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    .line 365
    iget v6, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    if-ne p2, v6, :cond_4

    .line 369
    :goto_2
    return-void

    .line 355
    .restart local v0       #dataArea:I
    .restart local v1       #firstItem:Landroid/view/View;
    .restart local v2       #firstVisibleItemRight:I
    .restart local v3       #galleryWidth:I
    .restart local v4       #itemWidth:I
    .restart local v5       #thumbArea:I
    :cond_2
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0

    .line 356
    :cond_3
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_1

    .line 368
    .end local v0           #dataArea:I
    .end local v1           #firstItem:Landroid/view/View;
    .end local v2           #firstVisibleItemRight:I
    .end local v3           #galleryWidth:I
    .end local v4           #itemWidth:I
    .end local v5           #thumbArea:I
    :cond_4
    iput p2, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    goto :goto_2
.end method

.method onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35
    .parameter "me"

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 384
    :cond_0
    const/16 v30, 0x0

    .line 601
    :goto_0
    return v30

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/BinAdapter;->isDataValid()Z

    move-result v30

    if-nez v30, :cond_3

    .line 387
    :cond_2
    const/16 v30, 0x0

    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 390
    .local v6, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 391
    .local v9, currentX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 393
    .local v10, currentY:F
    and-int/lit16 v0, v6, 0xff

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 601
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v30, 0x1

    goto :goto_0

    .line 395
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_1

    .line 404
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->recycle()V

    .line 407
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 409
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    .line 410
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    .line 416
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/FastScroller;->isPointInside(FF)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 418
    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 424
    :cond_7
    const-string v30, "FastScroller"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "call showScreen currentX: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " currentY: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->showScreen()V

    .line 427
    float-to-int v0, v9

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mTouchX:I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    .line 432
    new-instance v30, Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/FastScroller$CheckForLongPress;-><init>(Lcom/htc/widget/FastScroller;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    .line 434
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/FastScroller$CheckForLongPress;->rememberSelectedTab()V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v31, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v32

    shl-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-virtual/range {v30 .. v33}, Lcom/htc/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 443
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v30, v0

    if-nez v30, :cond_a

    .line 444
    new-instance v30, Lcom/htc/widget/FastScroller$CheckForTap;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    .line 446
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v31, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-virtual/range {v30 .. v33}, Lcom/htc/widget/AbsSpinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 450
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-nez v30, :cond_b

    .line 453
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 456
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    .line 464
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v29, v30, v31

    .line 465
    .local v29, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v5, v30, v31

    .line 466
    .local v5, aX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v28, v0

    .line 468
    .local v28, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    div-int/lit8 v31, v28, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v20

    .line 469
    .local v20, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    .line 472
    .local v7, adapter:Landroid/widget/SpinnerAdapter;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v18, v0

    .line 473
    .local v18, itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v17, v0

    .line 474
    .local v17, galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v25, v30, v31

    .line 475
    .local v25, thumbArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    sub-int v11, v30, v31

    .line 476
    .local v11, dataArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v26

    .line 477
    .local v26, totalItemCount:I
    const/16 v30, -0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 478
    add-int/lit8 v20, v26, -0x1

    .line 481
    :cond_d
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v30, v0

    add-int/lit8 v31, v26, -0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    sub-int v31, v25, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v8, v30, v31

    .line 482
    .local v8, alignment:F
    int-to-float v0, v5

    move/from16 v30, v0

    sub-float v23, v8, v30

    .line 484
    .local v23, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v30, v0

    sub-int v30, v25, v30

    if-gez v30, :cond_e

    .line 485
    const/4 v8, 0x0

    .line 486
    const/16 v23, 0x0

    .line 487
    const/16 v20, -0x1

    .line 492
    :cond_e
    mul-int v30, v26, v18

    sub-int v30, v30, v11

    if-lez v30, :cond_f

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v31, v0

    float-to-int v0, v8

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v33, v0

    add-int v32, v32, v33

    const/16 v33, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v20

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    .line 503
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 505
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 496
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    .line 497
    .local v22, previous:I
    mul-int v30, v20, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v31, v0

    add-int v16, v30, v31

    .line 498
    .local v16, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    sub-int v31, v16, v22

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    goto :goto_2

    .line 510
    .end local v5           #aX:I
    .end local v7           #adapter:Landroid/widget/SpinnerAdapter;
    .end local v8           #alignment:F
    .end local v11           #dataArea:I
    .end local v16           #end:I
    .end local v17           #galleryWidth:I
    .end local v18           #itemWidth:I
    .end local v20           #pos:I
    .end local v22           #previous:I
    .end local v23           #scrollX:F
    .end local v25           #thumbArea:I
    .end local v26           #totalItemCount:I
    .end local v28           #viewHeight:I
    .end local v29           #x:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_4

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-nez v30, :cond_10

    .line 516
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 519
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    sub-float v30, v9, v30

    move/from16 v0, v30

    float-to-int v13, v0

    .line 520
    .local v13, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    sub-float v30, v10, v30

    move/from16 v0, v30

    float-to-int v14, v0

    .line 521
    .local v14, deltaY:I
    mul-int v30, v13, v13

    mul-int v31, v14, v14

    add-int v15, v30, v31

    .line 523
    .local v15, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    move/from16 v30, v0

    sub-float v23, v30, v9

    .line 525
    .restart local v23       #scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    move/from16 v30, v0

    sub-float v24, v30, v10

    .line 527
    .local v24, scrollY:F
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const/high16 v31, 0x3f80

    cmpl-float v30, v30, v31

    if-gez v30, :cond_11

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const/high16 v31, 0x3f80

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_16

    .line 529
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v15, v0, :cond_12

    .line 531
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    .line 532
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    .line 534
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 537
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v18, v0

    .line 538
    .restart local v18       #itemWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v17, v0

    .line 539
    .restart local v17       #galleryWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mOffset:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    sub-int v11, v30, v31

    .line 540
    .restart local v11       #dataArea:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v25, v30, v31

    .line 541
    .restart local v25       #thumbArea:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v26

    .line 543
    .restart local v26       #totalItemCount:I
    mul-int v30, v26, v18

    sub-int v30, v30, v11

    if-lez v30, :cond_18

    .line 546
    float-to-int v0, v9

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v19, v30, v31

    .line 547
    .local v19, newThumbX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v19, v0

    .line 553
    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    sub-int v30, v30, v19

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_15

    .line 554
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 549
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    move/from16 v1, v17

    if-le v0, v1, :cond_13

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    sub-int v19, v30, v31

    goto :goto_3

    .line 557
    :cond_15
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 558
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    .line 580
    .end local v11           #dataArea:I
    .end local v17           #galleryWidth:I
    .end local v18           #itemWidth:I
    .end local v19           #newThumbX:I
    .end local v25           #thumbArea:I
    .end local v26           #totalItemCount:I
    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v30, v0

    if-eqz v30, :cond_17

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v15, v0, :cond_17

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    .line 586
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->updateScreen()V

    .line 587
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 560
    .restart local v11       #dataArea:I
    .restart local v17       #galleryWidth:I
    .restart local v18       #itemWidth:I
    .restart local v25       #thumbArea:I
    .restart local v26       #totalItemCount:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v21, v0

    .line 561
    .local v21, preThumbLeft:I
    float-to-int v0, v9

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 563
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    sub-int v31, v17, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1a

    .line 564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    .line 565
    :cond_1a
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v27

    .line 566
    .local v27, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    check-cast v30, Lcom/htc/widget/Gallery;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    sub-int v12, v30, v21

    .line 568
    .local v12, delta:I
    if-lez v12, :cond_1b

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v31, v0

    sub-int v31, v31, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    move/from16 v34, v0

    invoke-virtual/range {v30 .. v34}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 571
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v34, v0

    add-int v33, v33, v34

    sub-int v33, v33, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    move/from16 v34, v0

    invoke-virtual/range {v30 .. v34}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_4

    .line 589
    .end local v11           #dataArea:I
    .end local v12           #delta:I
    .end local v17           #galleryWidth:I
    .end local v18           #itemWidth:I
    .end local v21           #preThumbLeft:I
    .end local v23           #scrollX:F
    .end local v24           #scrollY:F
    .end local v25           #thumbArea:I
    .end local v26           #totalItemCount:I
    .end local v27           #v:Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v15, v0, :cond_4

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    goto/16 :goto_1

    .line 598
    .end local v13           #deltaX:I
    .end local v14           #deltaY:I
    .end local v15           #distance:I
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    goto/16 :goto_1

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method performLongClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 908
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Lcom/htc/widget/CarouselUtil;->isDataStorageFull(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/widget/CarouselSkinUtil;->isDefaultNoEditorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    :cond_0
    const/4 v0, 0x0

    .line 919
    :goto_0
    return v0

    .line 912
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 913
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1, v1}, Lcom/htc/widget/AbsSpinner;->performHapticFeedback(II)Z

    .line 915
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->onStartTemporaryDetach()V

    .line 916
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    .line 917
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 918
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    move v0, v1

    .line 919
    goto :goto_0
.end method

.method setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v3, 0x0

    .line 243
    instance-of v0, p1, Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 248
    :cond_0
    check-cast p1, Lcom/htc/widget/BinAdapter;

    .end local p1
    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    .line 249
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090031

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 257
    :goto_0
    return-void

    .line 254
    .restart local p1
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "borranx somethins wrong"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    iput-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    goto :goto_0
.end method

.method setCurrentThumb(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1055
    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    .line 1056
    return-void
.end method

.method setEditorMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1059
    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    .line 1060
    return-void
.end method

.method public setState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/FastScroller;->mState:I

    .line 185
    :cond_0
    return-void

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    goto :goto_0

    .line 168
    :pswitch_2
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    .line 173
    :cond_1
    :pswitch_3
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 177
    :pswitch_4
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method showScreen()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 719
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    .line 720
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 721
    .local v1, c:Landroid/content/Context;
    instance-of v7, v1, Lcom/htc/widget/CarouselActivity;

    if-eqz v7, :cond_2

    move-object v0, v1

    .line 722
    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 723
    .local v0, a:Lcom/htc/widget/CarouselActivity;
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 724
    .local v2, content:Landroid/widget/FrameLayout;
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 725
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 727
    :cond_0
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 728
    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 729
    .local v6, x:I
    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 731
    .local v5, viewHeight:I
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v8, v5, 0x2

    invoke-virtual {v7, v6, v8}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    .line 732
    .local v3, pos:I
    if-eq v3, v9, :cond_1

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    if-eq v3, v7, :cond_1

    .line 735
    :cond_1
    if-eq v3, v9, :cond_2

    .line 736
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v7, v3}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, taskName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 738
    iput v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 739
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v7, v3, v8}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    .line 740
    invoke-virtual {v0, v4}, Lcom/htc/widget/CarouselActivity;->onTabStartSliding(Ljava/lang/String;)V

    .line 745
    .end local v0           #a:Lcom/htc/widget/CarouselActivity;
    .end local v2           #content:Landroid/widget/FrameLayout;
    .end local v3           #pos:I
    .end local v4           #taskName:Ljava/lang/String;
    .end local v5           #viewHeight:I
    .end local v6           #x:I
    :cond_2
    return-void
.end method

.method showThumb()V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    .line 924
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 925
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    .line 277
    return-void
.end method

.method updateScreen()V
    .locals 5

    .prologue
    .line 749
    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 750
    .local v2, x:I
    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    .line 752
    .local v1, viewHeight:I
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 753
    .local v0, pos:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    if-eq v0, v3, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    .line 755
    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    .line 756
    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v3, v0, v4}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    .line 760
    :cond_0
    return-void
.end method
